#!/bin/sh
#
#	tease gdk list into strata
#	LF bug: 3943
#	reports to: info@owlriver.com
#	License GPLv3+
#
INFILE="gtk-list-201401528.txt"
NOCLASS="Info Appearance "
echo "Enumerate last segment in: Class ${NOCLASS}"
NEWWORD=""
for j in Class ${NOCLASS} ; do
	[ "x${NEWWORD}" != "x${j}" ] && {
# word changed -- optionally dump old tally
	[ 0${CNT} -gt 0 ] && {
		echo "   $NEWWORD ${CNT}"
		}			
		export NEWWORD="$j"
		export CNT=0
			}
#
#	pass 1 -- gross counts
for i in `grep "^_" ${INFILE} | sort `; do
	WORDX=`echo "${i}" | grep "${j}$"`
	[ "x${WORDX}" != "x" ] && {
		export CNT=`echo "0${CNT} + 1" | bc`
		echo "${i}"
		}
done
done
[ 0${CNT} -gt 0 ] && {
	echo "   $NEWWORD ${CNT}"
	}			
#
#	pass 2 -- objects without a corresponding Class
echo ""
echo "=================================================="
echo "items with no corresponding Class"
CNT=0
for i in ` grep "^_" ${INFILE} | sort | grep -v "Class$" ` ; do
HASCLASS=` grep "^_" ${INFILE} | grep "Class$" | grep -c ${i} `
	[ 0${HASCLASS} -lt 1 ] && {
		export CNT=`echo "0${CNT} + 1" | bc`
		echo "${i}"
	}
done
[ 0${CNT} -gt 0 ] && {
	echo "cnt: ${CNT} with no corresponding Class "
	}			
#
echo ""
echo "=================================================="
echo "Sorted list: "
grep "^_" ${INFILE} | sort 
echo -n "Total lines: "
grep "^_" ${INFILE} | wc -l - | awk {'print $1'}
#
