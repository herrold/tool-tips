#!/bin/sh
#
#	days_spanned.sh
#
#	print some daycount intervals
#
#	to use 'find' to expire stale backup content, I need to know some 
#		intervals of days spanned by calendar months, to retain
#		sufficient copies to roll back into
#		'find' does not know months ... 
#		-- build a chart
#
#       master copy on centos-7:~/bin/
#	internal as externally released under git: 
#		$HOME/vcs/git/herrold/rph-shell-tools/convenience/
#	outside appears at: https://github.com/herrold/tool-tips/convenience/
#
#	Copyright (c) 2017 R P Herrold, Columbus OH
#       License: GPLv3+
#       Reports to: info@owlriver.com
#
#
cat - << END > /dev/null

#	a fragment of files named: whatever-YYYYMM.tgz 
#	-- we never automatically remove January copies
for i in `find .  -maxdepth 1 -mtime +93 -name "html*.tgz" | \
        grep -v "01\.tgz" | grep "$YR"` ; do
                rm -f ${i}
done
#
                
END
#
#	driving tables
DAYCHART="	\
	1:31	\
	2:29	\
	3:31	\
	4:30	\
	5:31	\
	6:30	\
	7:31	\
	8:31	\
	9:30	\
	10:31	\
	11:30	\
	12:31	\
	13:31	\
	14:29	\
	15:31	\
	16:30	\
	17:31	\
	18:30	\
	19:31	\
	20:31	\
	21:30	\
	22:31	\
	23:30	\
	24:31	\
	"
COMPARE=" 	\
	-gt 	\
	-ge 	\
	" 
#
#####################################################
#
for COMPARAND in ${COMPARE} ; do 
echo "Compare: ${COMPARAND} "
#
for OFFSET in `seq 0 11`; do
MAX=0
MAXMONTH=""
#
for i in ` seq 1 12 `; do
	LHS=`echo "$i" | awk -F: {'print $1'}`
	RHS=`echo "$i" | awk -F: {'print $2'}`
#	figure out the end month
	export FUTUREMONTH=`echo "0$i + 0${OFFSET}" | bc`
	export DAYCOUNT=0
	for j in ${DAYCHART} ; do
		FUTLHS=`echo "$j" | awk -F: {'print $1'}`
		FUTRHS=`echo "$j" | awk -F: {'print $2'}`
#	add day values for present, and the next OFFSET months	
		[ 0${FUTLHS} -ge 0$i -a 0${FUTLHS} -le 0${FUTUREMONTH} ] && {
			export DAYCOUNT=` echo "0${DAYCOUNT} + 0${FUTRHS}" | bc `
			}
#	finally see if we have a new MAX
#		either -gt or -ge return a champion, at the 
#		head or the tail of the year
	[ 0${DAYCOUNT} ${COMPARAND} 0${MAX} ] && {
		export MAX=${DAYCOUNT}
		export MAXMONTH=$i
		}
	done
done
#
#	pretty-print
echo -n "month: ${MAXMONTH} "
[ 0${OFFSET} -gt 0 ] && {
	echo -n "plus following "
	}
[ 0${OFFSET} -gt 1 ] && {
	echo -n "${OFFSET} "
	}
#
echo -n "month"
[ 0${OFFSET} -gt 1 ] && {
	echo -n "s"
	}
echo " spans: ${MAX} days  "
#
done
#
echo ""
done
#
