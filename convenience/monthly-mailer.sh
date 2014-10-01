From robotron9000@colug.net Wed Oct  1 12:59:14 2014
Date: Wed, 1 Oct 2014 12:59:06
From: robotron9000@colug.net
To: herrold@owlriver.com
Subject: robo

#!/bin/sh
#
#	send the web page to the mailing list monthly
#	/home/robotron9000/bin/monthly-mailer.sh
#
#	warn the web admins earlier than that
#	Copyright (c) R P Herrold
#	License GPLv3+
#	Reports to: info@owlriver.com
#
#	run daily from cron
#
PATH=/usr/local/bin:/bin:/usr/bin:/home/robotron9000/bin
#	any option makes this a test
[ "x$1" != "x" ] && export TEST="y"
#
RECIPIENT="colug-432@colug.net"
URL="http://www.colug.net/"
#
DOM=`date +%d`
MONTHWORD=`date +%B`
YEAR=`date +%Y`
#
#	choose the later of the two
LASTSAT=` cal | awk {'print $7'} | grep -v "^$" | tail -1 `
LASTWED=` cal | awk {'print $5'} | grep -v "^$" | tail -1 `
TGT=0${LASTWED}
[ 0${LASTSAT} -gt 0${TGT} ] && export TGT=${LASTSAT}
#
#	warn at ten days out
WARN=`echo "0${TGT} - 10 " | bc`
#	send at seven days out
SEND=`echo "0${TGT} - 10 " | bc`
#
[ 0${DOM} -eq 0${WARN} -o "x${TEST}" != "x" ] && {
	export PREVIEW="PREVIEW -- "
	export RECIPIENT="herrold@owlriver.com"
	export SENDIT="y"
	}

[ 0${DOM} -eq 0${WARN} ] && export SENDIT="y"
#
[ "x${SENDIT}" != "x" ] && {
	lynx -dump ${URL} | \
	mail -s "${PREVIEW} Monthly meeting details for ${MONTHWORD} ${YEAR} " \
	${RECIPIENT}
#
#	comment this out if not cron file details are needed
	echo "$0 sent ${PREVIEW} ${URL} reminder to ${RECIPIENT} "
	}	
#
