#!/bin/sh 
#
#	slow-steady.sh
# web reference: http://www.owlriver.com/tips/broken-system/
#
# retrieve and run thus: 
#	wget -O slow-steady.sh \
#		https://raw.githubusercontent.com/herrold/tool-tips/master/broken-system/slow-steady.sh
#	chmod 755 slow-steady.sh
#	sudo ./slow-steady.sh assuming it is named 'slow-steady.sh' 
# 
# Copyright (c) 2006 Owl River Company 
# reports to: info@owlriver.com 
# License: GPL, v. 2+ 
#	relicensed as GPLv2+ 20140501 RPH
#
YMD=`    date +%Y%m%d `
MYNAME=` basename $0 `
WRKDIR=` mktemp -d --tmpdir=/tmp ${MYNAME}.XXXX `
[ ! -d ${WRKDIR} ] && {
	echo "error: something went wrong creating: ${WRKDIR} ... bailing " 1>&2
	exit 1
	}
> ${WRKDIR}/verification-${YMD}.txt 
echo -n "# starts " >> ${WRKDIR}/verification-${YMD}.txt
date     >> ${WRKDIR}/verification-${YMD}.txt
uname -a >> ${WRKDIR}/verification-${YMD}.txt
for i in ` rpm -qa --qf '%{name}-%{version}-%{release}\n' | sort `; do 
	echo "$i" | tee -a ${WRKDIR}/verification-${YMD}.txt 
	rpm -V $i | tee -a ${WRKDIR}/verification-${YMD}.txt 
	echo " "  | tee -a ${WRKDIR}/verification-${YMD}.txt 
done
echo -n "#  ends " >> ${WRKDIR}/verification-${YMD}.txt
date >> ${WRKDIR}/verification-${YMD}.txt
#
