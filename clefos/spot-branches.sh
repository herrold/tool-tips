#!/bin/sh
#
#	spot-branches.sh
#		$Id: spot-branches.sh,v 1.3 2014/06/23 23:08:49 herrold Exp herrold $
#
#	
#	Copyright (c) R P Herrold info@owlriver.com
#	reports to: info@owlriver.com	
#	license: GPLv3+
#	master lives in: /home/herrold/clefos/git.centos.org/
#		as: /home/herrold/clefos/git.centos.org/spot-branches.sh
#
PATH='/bin:/usr/bin:/usr/sbin:/sbin'
MYNAME=`basename $0`
#
YMD=`date +%Y%m%d`
#
DIRECT="/home/herrold/clefos/git.centos.org"
URL="https://git.centos.org/"
#
cd
cd ${DIRECT}
#
lynx -dump ${URL} | grep "sig\-" | \
	awk -F";" {'print $1'} | awk {'print $2'} | \
	sed -e "s@\.git/@.git @g" | awk {'print $1'} | \
	grep "/tree/" | \
	sort | uniq
#	or: summary/sig vs tree ?
#
