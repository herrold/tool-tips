#!/bin/sh
#
#	audit-dist.sh 
#		orig at github
#		https://github.com/herrold/tool-tips/tree/master/convenience
#	License: GPLv3+
#	Reports to: info@owlriver.com
#	Copyright (c) R P Herrold 2014
#
#	analyze spec file in a directory for unusual '%{?dist} tag usages
#
#	run thus: ./audit-dist.sh  | grep -v "%{?dist}$" | \
#		grep -v ^R | grep -v "isa}$" | grep -v "{dist}$" | \
#		grep -v "[0-9]$"
#
cd
cd rpmbuild/SPECS/
for i in `ls *.spec` ; do
	HASDIST=` grep -i "^release:" $i | grep "dist}" | \grep -c "%{" `
	[ ${HASDIST} -gt 0 ] && {
	echo -n "$i: "
	grep -i "^release:" $i | awk -F":" {'print $2'} | head -n 1 
#	grep -i "^release:" $i | awk -F":" {'print $2'} | \
#		sed -e "s@dist}@:@" 
		}
done
#
