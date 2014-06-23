#!/bin/sh
#
#	wipe-down.sh
#		$Id: wipe-down.sh,v 1.6 2014/06/23 21:05:52 herrold Exp herrold $
#
#	this copy on centos-6
#
#	License: GPLv2+
#	Reports to: info@owlriver.com
#
#	This wipes some fingerprints off a machine
#
#	it ignores /home and /etc/passwd cleanup
#	it leaves intact ~/.ssh/ content
#
PATH='/bin:/usr/bin:/usr/sbin:/sbin'
#
QUIET="-q "
#
cd /root
> .bash_history
[ -e hardening/ ] && rm -rf hardening/
cd /home
find /home -name ".bash_history" -a -exec rm -f {} \;
cd /var/log/
for i in cron dmesg lastlog maillog messages \
	secure spooler tallylog yum.log ; do
	touch ${i}-acme
	rm -f touch ${i}-*
	> ${i}
done
cd /var/log/audit
for i in audit ; do
	touch ${i}.acme
	rm -f touch ${i}.*
	> ${i}
done
cd /var/log/mail
for i in statistics ; do
	touch ${i}.acme
	touch ${i}-acme
	rm -f touch ${i}.*
	rm -f touch ${i}-*
	> ${i}
done
cd /var/log/sa
for i in statistics ; do
	touch ${i}99
	rm -f touch ${i}[0-9]*
done
cd /var/spool
yum -y ${QUIET} clean all
cd /tmp
touch yum.log-acme
rm -f yum.log*
cd /etc/sysconfig
grep -v "^HOSTNAME" network > network.tmp
mv network.tmp network
#
