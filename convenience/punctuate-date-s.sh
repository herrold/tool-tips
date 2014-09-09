#!/bin/sh
#
#	punctuate-date-s.sh
#		$Id: punctuate-date-s.sh,v 1.2 2014/09/09 14:52:41 herrold Exp herrold $
#
#       this copy on centos-6:~/bin/
#	outside will be at: https://github.com/herrold/tool-tips/convenience/
#
#	Copyright (c) 2010 R P Herrold, Columbus OH
#       License: GPLv2+
#       Reports to: info@owlriver.com
#
#	aid to memory --- elapsed time pretty printer
#	see: info date
#
#	usage: ./punctuate-date-s.sh (seconds)
#		default is 120 seconds
#
SAMPLE=120
[ "x${1}" != "x" ] && {
	export SAMPLE=` echo "0${1} + 0" | bc `
	}
#
echo "displaying for ${SAMPLE} seconds "
echo "Simple time only: +%T "
date -u --date="1970-01-01 00:00:00 UTC ${SAMPLE} seconds" +%T
echo "Minutes and Seconds: +%M:%S "
date -u --date="1970-01-01 00:00:00 UTC ${SAMPLE} seconds" +%M:%S
echo "Hours (suppress LZ) and Minutes: +%k:%M "
date -u --date="1970-01-01 00:00:00 UTC ${SAMPLE} seconds" +%k:%M
#
