#!/bin/sh
#
#	stats-close.sh
#		$Id: stats-close.sh,v 1.14 2014/06/17 14:11:59 herrold Exp herrold $
#
#	generate closing rate stats
#
#	run thus:
#		while [ 1 ] ; do sleep 3600 ; ./stats-close.sh ; done
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
ECACHE="c7-SRPM-cache.txt"
#
#	no twitter 
#	this will not work unless you configure it properly
NOTWITTER="y"
#
PATH='/bin:/usr/bin:/usr/sbin:/sbin:~/bin/'
MYNAME=`basename $0`
#
STARTDIR="/home/herrold/vcs/git/centos-7-archive"
MAXAGE=8
#
##########################################################
#
cd 
cd $STARTDIR
STJOB=`date +%s`
#	option to force a freshening of stat backing close data 
#	and the cache
[ "x${1}" = "x-f" ] && {
#	this prevents phantom reports
	[ -e oldstats.txt ] && rm -f oldstats.txt
	> ${EROOT}/${ECACHE}
	}
#
#	that said, don't let a cache file longer longer than MAXAGE
#	hours; when it goes over, it gets removed, causing a freshen
MAXMIN=`echo "0${MAXAGE} * 60 " | bc`
find $STARTDIR -cmin +${MAXMIN} -name oldstats.txt -a \
	-exec rm {} \;
#
#	we can speed other operations w a cache periodically rebuilt
find $STARTDIR -name "*src.rpm" | sort  > ${EROOT}/${ECACHE}.WORK
#	atomic update of the cache
[ -s ${EROOT}/${ECACHE}.WORK ] && \
	mv ${EROOT}/${ECACHE}.WORK ${EROOT}/${ECACHE}
wc -l ${EROOT}/${ECACHE} | awk {'print $1'} > newstats.txt
#
GOAL=`wc -l ${EROOT}/${EFILE} | awk {'print $1'} `
[ -e oldstats.txt -a -e newstats.txt ] && {
	PRIOR=`head -n 1 oldstats.txt 2> /dev/null`
	THIS=`head -n 1 newstats.txt`
	DELTA=` echo "0${THIS} - 0${PRIOR}" | bc `
	REMAINING=`echo "0${GOAL} - 0${THIS} " | bc`
	}
#
#	we are done making stats, so we can prepare for the next round
mv newstats.txt oldstats.txt
#
#	only report when we have a change, and also data 
#	( after -f we will not report)
[ 0${DELTA} -gt 0 ] && {
YMD=`date +%Y-%m-%d" "%H:%M:%S" "%z"(US "%Z")"`
echo "${MYNAME}: stats: total: ${THIS} ; last report: ${DELTA} ; goal: ${GOAL} ; remaining: ${REMAINING} at: ${YMD} " 
echo "${MYNAME}: stats: total: ${THIS} ; last report: ${DELTA} ; goal: ${GOAL} ; remaining: ${REMAINING} at: ${YMD} " | \
	logger -p local1.info
#
#	most people will not be doing this
#	if non-null, we do not tweet
	[ "x${NOTWITTER}" = "x" ] && {
#	twitter support
# echo "pre"
echo "${MYNAME}: stats: total: ${THIS} ; last report: ${DELTA} ; goal: ${GOAL} ; remaining: ${REMAINING} at: ${YMD} " | \
	/home/herrold/build/6/ttytter/ttytter-2.1.00.pl \
		-rc=/home/herrold/.ttytter-buildmonbot-rc \
		-keyf=/home/herrold/.ttytter-buildmonbot-key \
		-silent \
		-status=- 
#
		sleep 180 
		# -silent
echo "Follow along at: https://github.com/herrold/tool-tips/tree/master/clefos " | \
	/home/herrold/build/6/ttytter/ttytter-2.1.00.pl \
		-rc=/home/herrold/.ttytter-buildmonbot-rc \
		-keyf=/home/herrold/.ttytter-buildmonbot-key \
		-silent \
		-status=- 
#
# echo "post"
	}
#
	}
#
ENDJOB=`date +%s`
DURATION=`echo "0${ENDJOB} - 0${STJOB}" | bc`
echo -n "Duration: " 1>&2
#	optionally shave off hours if zero, and leading 0s 
#	in all cases --- but always leave at least units on minutes
date -u -d "1970-01-01 ${DURATION} seconds" +%T  | \
	sed -e "s@^00:@@g" -e "s@^0@@g" 1>&2
#	EOJ
#
