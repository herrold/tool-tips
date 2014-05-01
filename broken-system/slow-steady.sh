#!/bin/sh 
# run thus: 
#	chmod 755 test.sh
#	sudo ./test.sh assuming it is named 'test.sh' 
# Copyright (c) 2006 Owl River Company 
# reports to: info@owlriver.com 
# License: GPL, v. 2+ 
#	relicensed as GPLv2+ 20140501 RPH
# web reference: http://www.owlriver.com/tips/broken-system/
#
YMD=`date +%Y%m%d` 
> /tmp/verification-${YMD}.txt 
echo -n "# starts " >> /tmp/verification-${YMD}.txt
date >> /tmp/verification-${YMD}.txt
uname -a >> /tmp/verification-${YMD}.txt
for i in `rpm -qa --qf '%{name}-%{version}-%{release}\n' | sort`; do 
	echo "$i" | tee -a /tmp/verification-${YMD}.txt 
	rpm -V $i | tee -a /tmp/verification-${YMD}.txt 
	echo " " | tee -a /tmp/verification-${YMD}.txt 
done
echo -n "#  ends " >> /tmp/verification-${YMD}.txt
date >> /tmp/verification-${YMD}.txt
#

