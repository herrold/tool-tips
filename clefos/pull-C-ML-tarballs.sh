#!/bin/sh
#
#	pull-C-ML-tarballs.sh
#		$Id: pull-C-ML-tarballs.sh,v 1.5 2014/06/25 13:46:00 herrold Exp herrold $	
#
#	There has been some suggestion that centos content is being
#	scrubbed, a la '1984' -- As this is the birthdate of 
#	Jun 25  Eric Arthur Blair (a.k.a. George Orwell) born, 1903
#	the author of Animal Farm, and 1984, , and in light of the 
#	fact that some 'animals are more equal than others', per the 
#	centos-devel ML comments yesterday on getting 'git' rights 
#	matching those of people paid by Red Hat, it seems appropriate 
#	to first publish it externally today
#
#	suitable for monthly cron addition
#
#	Copyright (c) R P Herrold info@owlriver.com
#	reports to: info@owlriver.com	
#	license: GPLv3+, formerly, internal only, re-licensed after 1.3
#	this file lives in: /home/herrold/centos/mailing
#	as: pull-C-ML-tarballs.sh
#
QUIET="-q "
URL=" 	http://lists.centos.org/pipermail/centos/ \
	http://lists.centos.org/pipermail/arm-dev/	\
	http://lists.centos.org/pipermail/centos-announce/	\
	http://lists.centos.org/pipermail/centos-build-reports/	\
	http://lists.centos.org/pipermail/centos-devel/		\
	#http://lists.centos.org/pipermail/centos-devteam/	\
	http://lists.centos.org/pipermail/centos-docs/		\
	http://lists.centos.org/pipermail/centos-gsoc/		\
	http://lists.centos.org/pipermail/centos-mirror/	\
	http://lists.centos.org/pipermail/centos-mirror-announce/	\
	http://lists.centos.org/pipermail/centos-newsletter/	\
	http://lists.centos.org/pipermail/centos-virt	\
	"
#
#	some non-public lists are commented out
PATH='/bin:/usr/bin:/usr/sbin:/sbin'
MYNAME=`basename $0`
#
cd
cd /home/herrold/centos/mailing
CURRYEAR=`date +%Y`
CURRMONTHWORD=`date +%B`
for j in ${URL} ; do
DIRNAME=`echo "$j" | rev | tr '/' ' ' | awk {'print $1'} | rev`
#	we are cron friendly and do NOT pull the present month
for i in ` lynx -dump ${j} | awk {'print $2'} | grep "^http" | \
	grep -v "${CURRYEAR}-${CURRMONTHWORD}" | grep "^#" | \
	grep "z$"` ; do 
#	form: 2004-February.txt.gz 
	BAS=`basename $i` 
	[ ! -e ${DIRNAME} ] && mkdir ${DIRNAME}
	[ ! -e ${DIRNAME}/${DIRNAME}-${BAS} ] && \
		wget ${QUIET} -O ${DIRNAME}/${DIRNAME}-${BAS} $i
# echo "DIRNAME : ${DIRNAME}"
done
done
#
