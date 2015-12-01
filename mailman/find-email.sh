#!/bin/sh
#
#	/root/bin/find-email.sh
#
#	License: GPLv2+
#	Copyright (c) 2010 R P Herrold, Columbus OH
#	Reports to: info@owlriver.com
#
export PATH='/usr/kerberos/bin:/usr/local/bin:/usr/bin:/bin:/usr/X11R6/bin'
#
MYNAME=` basename $0 `
#	RHEL 5 does not support --tmp option to mktemp
#		--tmp=/root/tmp
WRKDIR=` mktemp -d -t -p /root/tmp ${MYNAME}.XXXX `
THISHOST=` hostname `
#
export TMPFILE=` echo "${WRKDIR}/mailmanlist" `
#
> $TMPFILE
cd /usr/lib/mailman/bin
#	all lists have a hyphen separating the listname and 
#	the list descriptive name
for i in `./list_lists | grep -v "[0-9]" | grep "[\-]" | awk {'print $1'}`; do
	echo "$i " >> $TMPFILE
	for j in ` ./list_members $i `; do
		echo "$i  $j " >> $TMPFILE
	done
	echo " " >> $TMPFILE
done
#
grep -i "$1"  $TMPFILE 
[ -d ${WRKDIR} ] && rm -rf ${WRKDIR}
#
