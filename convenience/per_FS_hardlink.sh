#!/bin/sh
#
#	per_FS_hardlink.sh
#		$Id: per_FS_hardlink.sh,v 1.3 2014/05/09 21:14:26 root Exp root $
#	this copy on xps420
#
#	License: GPLv2+
#	Reports to: info@owlriver.com
#
#	This utility can run daily, and opportunistically hardlinks 
#	as possible, at the root of an FTP mirror directory
#
#	for a RH derived environment, place it under cron thus:
#		ln -s /root/bin/per_FS_hardlink.sh /etc/cron.daily
#
PATH=/sbin:/bin:/usr/sbin:/usr/bin:/root/bin
#
for i in ` df | grep "/var/ftp" | rev | awk {'print $1'} | rev ` ; do
	hardlink -c -v ${i}
done
#
