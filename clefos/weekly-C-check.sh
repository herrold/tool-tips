#!/bin/sh
#
#	weekly-C-check.sh
#		$Id: weekly-C-check.sh,v 1.3 2014/06/18 19:46:17 herrold Exp herrold $
#
#	once a week, we examine our inventory of the C git server, 
#	and note any diffs to stdout ... cron will mail it
#
#	relies on: git-C-manifest.sh running daily
#	canonical form: c7-packages-20140618.txt
#
#	suitable for crontab addition weekly
#	
#	Copyright (c) R P Herrold info@owlriver.com
#	reports to: info@owlriver.com	
#	license: GPLv3+
#	master lives in: /home/herrold/clefos 
#		as: /home/herrold/clefos/git-C-manifest.sh
#
PATH='/bin:/usr/bin:/usr/sbin:/sbin'
MYNAME=`basename $0`
#
cd
cd /home/herrold/clefos
[ ! -d history ] && {
	pwd 1>&2
	echo "error: cannot see ./history/ bailing " pwd 1>&2
	exit 1
	}
LASTMONDAY=`date --date='last Mon' +%Y%m%d`
THISMONDAY=`date --date='this Mon' +%Y%m%d`
#
SPOKE=""
cd history
[ -e c7-packages-${LASTMONDAY}.txt -a \
  -e c7-packages-${THISMONDAY}.txt ] && {
	echo "${MYNAME}: diff report "
	diff -u c7-packages-${LASTMONDAY}.txt \
		c7-packages-${THISMONDAY}.txt
	pwd
	export SPOKE="y"
	}
cd ..
[ "x${SPOKE}" != "xy" ] && {
#	if we have not spoken yet, there is a problem 
#	-- note it for investigation with sufficient detail
	echo "${MYNAME} had a problem "
	date
	hostname
	pwd
	ls history/ 
	}
#
