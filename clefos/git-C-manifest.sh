#!/bin/sh
#
#	git-C-manifest.sh
#		$Id: git-C-manifest.sh,v 1.1 2014/06/12 17:55:33 herrold Exp herrold $
#
#	get the manifest of all package sources 
#	at the CentOS git server
#
#	Copyright (c) R P Herrold info@owlriver.com
#	reports to: info@owlriver.com	
#	license: GPLv3+
#	master lives in: /home/herrold/clefos
#
lynx -dump https://git.centos.org/sources/ | awk {'print $2'} | \
	grep ^http | grep "sources/" | grep "/$" \
		> c7-packages-per-gitURL.txt
rev c7-packages-per-gitURL.txt | cut -d"/" -f2 | rev | \
	sort > c7-packages.txt
#


