#!/bin/sh
#
#	stats-close.sh
#		$Id: stats-close.sh,v 1.2 2014/06/13 13:44:57 herrold Exp herrold $
#
#	generate closing rate stats
#
#	Copyright (c) 2014 R P Herrold info@owlriver.com
#	lives on: centos-6 at: /home/herrold/vcs/git/centos-7-archive
#	outside will be in: https://github.com/herrold/tool-tips/tree/master/clefos
#	reports to: info@owlriver.com
#	discussion: http://lists.clefos.org/mailman/listinfo, on list:
#		e7-devel-list
#       license: GPLv3+
#
#	made by: git-C-manifest.sh
#	from: https://github.com/herrold/tool-tips/tree/master/clefos
EROOT="/home/herrold/clefos"
EFILE="c7-packages.txt"
#
#	no twitter 
#	this will not work unless you configure it properly
NOTWITTER="y"
#
PATH='/bin:/usr/bin:/usr/sbin:/sbin:~/bin/'
MYNAME=`basename $0`
#
STARTDIR="/home/herrold/vcs/git/centos-7-archive"
cd 
cd $STARTDIR
find $STARTDIR -name "*src.rpm" | wc -l | awk {'print $1'} > newstats.txt
[ -e oldstats.txt ] && {
	PRIOR=`head -n 1 oldstats.txt`
	THIS=`head -n 1 newstats.txt`
	DELTA=` echo "0${THIS} - 0${PRIOR}" | bc `
	}
cp newstats.txt oldstats.txt
GOAL=`wc -l ${EROOT}/${EFILE} | awk {'print $1'} `
#
#	only report when we have a change
[ 0${DELTA} -gt 0 ] && {
echo "${MYNAME}: stats: total: ${THIS} ; last hour: ${DELTA} ; goal: ${GOAL} " 
echo "${MYNAME}: stats: total: ${THIS} ; last hour: ${DELTA} ; goal: ${GOAL} " | \
	logger -p local1.info
#
#	most people will not be doing this
#	if non-null, we do not tweet
	[ "x${NOTWITTER}" = "x" ] && {
#	twitter support
# echo "pre"
echo "${MYNAME}: stats: total: ${THIS} ; last hour: ${DELTA} ; goal: ${GOAL} " | \
	/home/herrold/build/6/ttytter/ttytter-2.1.00.pl \
		-rc=/home/herrold/.ttytter-buildmonbot-rc \
		-keyf=/home/herrold/.ttytter-buildmonbot-key \
		-silent \
		-status=- 
		sleep 30 
		# -silent
# echo "post"
	}
#
	}
#
#	EOJ
#
