#!/bin/sh
#
#	testpw.sh
#		$Id: testpw.sh,v 1.1 2014/05/14 16:42:41 herrold Exp herrold $
#	License: GPLv2+
#	Reports to: info@owlriver.com
#
#	generate a complex PW for LSB bug 3980
#
#
PATH='/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:~/bin/'
#
SEED=`date`
#	comment out the next line if the password needs to vary
SEED="whatever"
#
COMPLEX=` echo "x${SEED}" | md5sum - | awk {'print $1'} | \
   tr -s '0123456789abcdefABCDEF' | tr '012345678' 'aceIKM@#*' `
echo "COMPLEX: ${COMPLEX}"
#
