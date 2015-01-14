#!/bin/sh
#
#	reboot-notice.sh
#		Version: $Id: reboot-notice.sh,v 1.13 2015/01/14 15:49:08 herrold Exp herrold $
#
#	formerly: proprietary
#	License: GPLv3+
#	info@owlriver.com
#	Copyright (c) 2010 R P Herrold, Columbus OH
#
#	UDP 'phone in' an update when a reboot happens, optionally
#	with the -m option
#
#	add to crontab on remote unit:
#	@reboot		/root/bin/reboot-notice.sh > /dev/null 2>&1 
#		- or, with mailer -
#	@reboot         /root/bin/reboot-notice.sh -m > /dev/null 2>&1
#
#	see: man 5 crontab, toward the bottom
#
PATH='/usr/sbin:/sbin:/usr/bin:/bin:~/bin/'
MYNAME=`basename $0`
#
#	some local variables ...
CENTRAL="http://www.owlriver.com/setup/"
RECIPIENT="herrold@owlriver.com"
LIMIT=10
VERSION=`grep "Version:" $0 | grep "${MYNAME}"  | \
	awk -F"," {'print $2'} | awk {'print $2'} `
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
export WEBARG="hostname=${MYHOST}&amp;progname=${MYNAME}&amp;version=${VERSION}"
#
#	make sure we have what we need:
WHICH=`which which 2> /dev/null`
[ "x${WHICH}" = "x" ] && {
	yum clean all 2> /dev/null 
	yum -q -y --skip-broken install which 
	}
MAIL=`which mail 2> /dev/null`
[ "x${MAIL}" = "x" ] && {
	yum clean all 2> /dev/null
	yum -q -y --skip-broken install mailx
	}
MAIL=`which mail 2> /dev/null`
#
DELAY=`date 2> /dev/null | md5sum - 2> /dev/null | tr -d 'a-fA-F' 2> /dev/null | cut -c 1-2 2> /dev/null `
[ "x${DEBUG}" != "x" ] &&  export DELAY="0 "
[ "x${DEBUG}" != "x" ] && {
	echo "DEBUG:    ${DEBUG}   " 1>&2
	echo "MYNAME:   ${MYNAME}  " 1>&2
	echo "VERSION:  ${VERSION} " 1>&2
	echo "QUIET:    ${QUIET}   " 1>&2
	echo "YES:      ${YES}     " 1>&2
	echo "DELAY:    ${DELAY}   " 1>&2
	echo "                     " 1>&2
	echo "CENTRAL:  ${CENTRAL} " 1>&2
	echo "WEBARG:   ${WEBARG}  " 1>&2
	echo "                     " 1>&2
	echo "NETURL:   ${CENTRAL}?${WEBARG} " 1>&2
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
	( echo "reboot notice ${MYHOST} via: ${MYNAME} " ; 	\
	echo "Version: ${VERSION} " ; 				\
	echo "#" ;						\
	hostname ;						\
	echo "#" ;						\
	echo "My ip: ${HASIP} " ; 				\
	echo "#" ;						\
	ip addr show ;						\
	echo "#" ;						\
	ifconfig ;						\
	echo "#" ;						\
		) | 						\
		${MAIL} -s "reboot notice ${MYHOST} via: ${MYNAME} " \
		${RECIPIENT} > /dev/null 1>&2
	}
#
#############################
#
