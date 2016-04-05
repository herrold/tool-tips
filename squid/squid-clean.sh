#!/bin/sh
#
#	squid-clean.sh
#
#	License: GPLv2+
#	Copyright (c) 2016 R P Herrold, Columbus OH
#	Reports to: info@owlriver.com
#
#	ln -s /root/bin/squid-clean.sh /etc/cron.daily/ 
#
#	this is a bit noisy, so it may make sense to just run on demand
#
#	fix ATT Motorola NVG510 modem cache problem polluting squid
#	http://www.fark.com/attuverseglitch.html
#	of type: the web page you requested, "/cgi-bin/redirect.ha", wasn't found.
#
PATH='/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin'
#
/sbin/service squid stop
sleep 2
cd /var/spool/squid
for i in ` find -type d | grep -v "lost" | grep -v "^." `; do
	rm -rf $i
done
sleep 2
/usr/sbin/squid -z
sleep 2
/sbin/service squid start
sleep 2
/sbin/service squid status
#
