#!/bin/sh
#
#	/root/bin/manifest-mailman.sh
#
#	License: GPLv2+
#	Copyright (c) 2010 R P Herrold, Columbus OH
#	Reports to: info@owlriver.com
#
#	cd /etc/cron.monthly
#	ln -s /root/bin/manifest-mailman.sh
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
#
echo "program: ${MYNAME} " >> $TMPFILE
echo "" >> $TMPFILE
echo "on host: ${THISHOST} program: find-email.sh can track down stray bounces " >> $TMPFILE
echo "" >> $TMPFILE
#
cd /usr/lib/mailman/bin
#	all lists have a hyphen separating the listname and 
#	the list descriptive name
for i in `./list_lists | grep -v "[0-9]" | grep "[\-]" | awk {'print $1'}`; do
	echo "$i " >> $TMPFILE
	./list_members $i >> $TMPFILE
	echo " " >> $TMPFILE
done
#
[ -s $TMPFILE ] && \
	cat $TMPFILE | mail -s "${THISHOST} mailman lists and members" root
[ -d ${WRKDIR} ] && rm -rf ${WRKDIR}
#
