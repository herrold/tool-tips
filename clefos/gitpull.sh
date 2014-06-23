#!/bin/sh
#
#	gitpull.sh
#		$Id: gitpull.sh,v 1.8 2014/06/23 23:08:49 herrold Exp herrold $
#	
#	Copyright (c) R P Herrold info@owlriver.com
#	reports to: info@owlriver.com	
#	license: GPLv3+
#	master lives in: /home/herrold/clefos/git.centos.org/
#		as: /home/herrold/clefos/git.centos.org/gitpull.sh
#
PATH='/bin:/usr/bin:/usr/sbin:/sbin'
MYNAME=`basename $0`
#
YMD=`date +%Y%m%d`
#
DRIVER="DRIVER"
#	this file is hand generated using output from
#	spot-branches.sh as to viable branches
#
DIRECT="/home/herrold/clefos/git.centos.org"
#
cd
cd ${DIRECT}
[ ! -e ${DRIVER} ] && {
	echo "error: ${MYNAME} cannot see: ${DRIVER} in cwd: ${DIRECT} -- bailing " 1>&2
	exit 1
	}
for i in `grep -v ^# ${DRIVER}`; do
#
#	expected directory form ends .git$, and 
#	starts after the next prior '/'
#
#	we can safely freshen with a new pull with a simple:
#		rm -rf (whatever)
#
	DIRN=`basename $i .git`
#
#	emit some URLs for the follow along at home crowd
	echo "trying: ${DIRN} " 1>&2
	echo "URL: $i " 1>&2
# 	looks like: 
# https://git.centos.org/git/sig-cloud-instance/build-instance.git
#	summary URL looks like: 
# https://git.centos.org/summary/sig-cloud-instance!build-instance.git
	SUMMARY=`echo "$i" | sed -e "s@org/git/sig@org/summary/sig@g" \
		-e "s@nstance/@nstance!@g" -e "s@core/@core!@g"`
	echo "SUMMARY: ${SUMMARY} " 1>&2
#
	[ ! -d ${DIRN} ] && git clone $i
	[ -e ${DIRN} ] && {
		cd ${DIRN}
		git pull
		cd ..
		cd
		}
done
#
