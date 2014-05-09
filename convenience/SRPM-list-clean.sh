#!/bin/sh
#
#	SRPM-list-clean.sh
#		$Id: SRPM-list-clean.sh,v 1.3 2014/05/09 21:09:05 root Exp root $
#	this copy on xps420
#
#	License: GPLv2+
#	Reports to: info@owlriver.com
#
#	This uitility can run daily, and cleans out selected summary reports 
#	at the root of an FTP mirror directory
#
#	for a RH derived environment, place it under cron thus:
#		ln -s /root/bin/SRPM-list-clean.sh /etc/cron.daily/
#
PATH=/usr/kerberos/sbin:/usr/kerberos/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/X11R6/bin:/root/bin
#
YMD=`date +%Y%m%d`
DOM=`date +%d`
#
#	threshold of days to keep
export THRESH="45"
#
FTPPATH="/var/ftp/pub/mirror"
#
###################################################################
#
#	age away working copies older than $THRESH days but not the
#	'first of the month' index
cd ${FTPPATH}
touch working.txt
for i in `ls -1 SRPM-list*.txt working*.txt | grep -v "01.txt"` ; do
# echo "cleanup i: $i" 1>&2
	find ${FTPPATH} -daystart -ctime +${THRESH} -name ${i} -a \
		-exec rm -f {} \;
done
rm -f working*.txt
chmod 755 SRPM-*.txt
#
