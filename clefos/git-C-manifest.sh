#!/bin/sh
#
#	git-C-manifest.sh
#		$Id: git-C-manifest.sh,v 1.2 2014/06/18 19:19:41 herrold Exp herrold $
#
#	get the manifest of all package sources 
#	at the CentOS git server; maintain a history of changes over time
#
#	suitable for crontab addition
#	
#	Copyright (c) R P Herrold info@owlriver.com
#	reports to: info@owlriver.com	
#	license: GPLv3+
#	master lives in: /home/herrold/clefos 
#		as: /home/herrold/clefos/git-C-manifest.sh
#
PATH='/bin:/usr/bin:/usr/sbin:/sbin'
#
YMD=`date +%Y%m%d`
#
cd
cd /home/herrold/clefos
[ ! -d history ] && mkdir history
lynx -dump https://git.centos.org/sources/ | awk {'print $2'} | \
	grep ^http | grep "sources/" | grep "/$" \
		> c7-packages-per-gitURL.txt
rev c7-packages-per-gitURL.txt | cut -d"/" -f2 | rev | \
	sort > c7-packages.txt
#
cp c7-packages-per-gitURL.txt history/c7-packages-per-gitURL-${YMD}.txt
cp c7-packages.txt history/c7-packages-${YMD}.txt
#
