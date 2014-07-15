#!/bin/sh
#
#	reboot-notice.sh
#
#	formerly: proprietary
#	License: GPLv3+
#	info@owlriver.com
#	Copyright (c) 2010 R P Herrold, Columbus OH
#		$Id: reboot-notice.sh,v 1.7 2014/07/15 21:40:29 herrold Exp herrold $
#
#	UDP 'phone in' an update when a reboot happens, optionally
#	with the -m option
#
#	add to crontab on remote unit:
#	@reboot		/root/bin/reboot-notice.sh > /dev/null 2>&1 
#
#	see: man 5 crontab, toward the bottom
#
PATH='/usr/sbin:/sbin:/usr/bin:/bin:~/bin/'
#
#	some local variables ...
CENTRAL="http://www.owlriver.com/setup/"
RECIPIENT="FIXME@example.com"
LIMIT=10
#
#	and some boilerplate
DEBUG=""
export YES="-y "
#
#
#	options the old fashioned way
#	' -- ' ends options processing
export ISOPT=`echo "#$1" | cut -c 1-2`
export DONEOPT=""
while [ "x${ISOPT}" = "x#-" -a "x${DONEOPT}" = "x"  ] ; do
#
#	show debugging?
[ "x$1" = "x-d" ] && {
	export DEBUG="-d "
	shift 1
	}
#
#	send an email about the reboot?
[ "x$1" = "x-m" ] && {
	export SEND_EMAIL="y"
	shift 1
	}
#
#	done with options when we hit a ' -- '
[ "x$1" = "x--" ] && {
	export DONEOPT="y"
	shift 1
	}
export ISOPT=`echo "#$1" | cut -c 1-2`
[ "x${ISOPT}" = "x##" ] && {
	echo "info: option pass against $1" 1>&2
	}
sleep 1
done
#
#
#	debugging is not quiet
export QUIET="-q "
[ "x${DEBUG}" != "x" ] &&  export QUIET=""
#
#	end of options handling
#####################################################
#
#	if we have an arg 1, have curl look there for the URL 
#	rather than the default
[ "x$1" != "x" ] && {
	export CENTRAL=$1
	}
#
##############################################################
#	start main body 
cd 
#
MYNAME=`basename $0 2> /dev/null`
MYHOST=`hostname 2> /dev/null | tr 'A-Z' 'a-z'  2> /dev/null `
export WEBARG="hostname=${MYHOST}&amp;progname=${MYNAME}"
DELAY=`date 2> /dev/null | md5sum - 2> /dev/null | tr -d 'a-fA-F' 2> /dev/null | cut -c 1-2 2> /dev/null `
[ "x${DEBUG}" != "x" ] &&  export DELAY="0 "
[ "x${DEBUG}" != "x" ] && {
	echo "DEBUG:  ${DEBUG} " 1>&2
	echo "QUIET:  ${QUIET} " 1>&2
	echo "YES:    ${YES} "   1>&2
	echo "DELAY:  ${DELAY} " 1>&2
	echo "NETURL: ${CENTRAL}?${WEBARG} " 1>&2
	}
#
#	wait to let the default route go live; we randomly wait
#	differing intervals
sleep 0${DELAY}
HASGW=` netstat -rn 2> /dev/null | grep -c "^0.0.0.0" 2> /dev/null ` 
#	hopefully, this loop never gets hit
CNT=0
while [ 0${HASGW} -lt 1 -a 0${CNT} -lt 0${LIMIT} ] ; do
	WHICHBC=`which bc 2> /dev/null `
	[ "x${WHICHBC}" = "x" ] && {
#
#	no retry limit when no bc is present to do maths
#	we _could_ try to install it (thus the braces, but ... )
		export CNT=${LIMIT}
		}
	[ "x${WHICHBC}" != "x" ] && {
		export CNT=` echo " 1 + 0${CNT}" | bc 2> /dev/null `
		}
	sleep 60
	HASGW=` netstat -rn 2> /dev/null | grep -c "^0.0.0.0" 2> /dev/null ` 
done
#
#	curl reaches for the remote webserver
HASIP=` curl ${QUIET} -o - ${CENTRAL}?${WEBARG} 2> /dev/null | \
	grep "Your IP" 2> /dev/null | tail -n 1 2> /dev/null | \
	awk -F: {'print $2'} 2> /dev/null `
[ "x${DEBUG}" != "x" ] && {
	echo "HASIP:  ${HASIP} " 1>&2
	}
#
#	optionally, SEND_EMAIL handler (option -m )
[ "x${SEND_EMAIL}" != "x" ] && {
	( echo "reboot notice ${MYHOST} via: ${MYNAME} " ; \
	echo "My ip: ${HASIP} " ) | \
		mail -s "reboot notice ${MYHOST} via: ${MYNAME} " \
		${RECIPIENT} > /dev/null 1>&2
	}
#
#############################
#
