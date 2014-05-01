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

