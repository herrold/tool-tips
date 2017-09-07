#!/bin/sh 
#
#	gen-pw.sh
#	$Id: gen-pw.sh,v 1.27 2017/09/07 17:06:55 herrold Exp herrold $
#
#	Copyright (c) 2007, 2014 Owl River Company
#	reports to: info@owlriver.com
#	XX all rights reserved
#	relicensed 2014 09 26 for GH release post COLUG meeting
#	License: GPLv3+
#
#	GH copy lives at: $HOME/vcs/git/herrold/rph-shell-tools/convenience/
#		and has a dependency on shuffle-stdin.php
#	release: scp gen-pw.sh ~/vcs/git/herrold/rph-shell-tools/convenience/
#			cd  ~/vcs/git/herrold/rph-shell-tools
#			git add convenience/gen-pw.sh
#			git pull
#			git commit
#			git push
#
#	This script produces reasonable stirring, 
#	but has some predictable parts in the output
#		viz.: alphas at each end, and a discernable 
#		(with enough samples) emit pattern
#		to make it easier to add to the pasteboard by a click
#	TBD: address this, but that is easier said than done
#
#	TBD:  new word based generator occasionaly emits error noise
#
#	TBD: fugly: needs some functions drilled in, a general cleanup
#
#	bad symbols:	unix:	| = $ ! (BANG) > <
#		pulled: 2015 04 22
#
#	$ date | tr 'A-Za-z0123456789' 'a-zA-Z9876543210' | \
#		md5sum | base64 | tr 'abcdefABCDEF' '!@#$%^&*][_-'
#	yields a 48 char string
#
#  http://www.nytimes.com/2014/11/19/magazine/the-secret-life-of-passwords.html
#		Microsoft’s technicians, Lutnick recalled, knew 
#		that they needed to take advantage of two facts: 
#		Many people use the same password for multiple 
#		accounts, and these passwords are typically personalized.
#
#	http://strongpasswordgenerator.com/
#
# some rules seen -- taleo.net
# http://www.oracle.com/us/products/applications/taleo/enterprise/overview/index.html
#    The password you entered is not valid
#
#    Please note that the password must respect the following rules:
#    It must contain between 6 and 32 characters. Use only characters 
#		from the following set: 
#		! # $ % & ( ) * + , - . / 
#		0123456789 : ; < = > ? @ 
#		ABCDEFGHIJKLMNOPQRSTUVWXYZ [ \ ] _ ` 
#		abcdefghijklmnopqrstuvwxyz { | } ~
#    It must contain at least 1 letter(s) 
#		(ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz).
#    It must contain at least 1 numeric character(s) (0123456789).
#    It must not contain more than 2 identical consecutive characters 
#		(AAA, iiii, $$$$$ ...).
#    It must not contain your user name.
#    It must not contain your email address.
#                                
#	tester: https://dl.dropboxusercontent.com/u/209/zxcvbn/test/index.html
#	https://github.com/lowe/zxcvbn
#
#	http://xato.net/passwords/more-top-worst-passwords
#	http://xato.net/passwords/how-i-collect-passwords/
#
#	http://en.wiktionary.org/wiki/Wiktionary:Frequency_lists
#
#	https://xkcd.com/936/
#
#########################################################################
#
#	option: -h      help display    TBD
#		-a	alphanumerics only in the result 
#
#	dash, colon are OK for double click under puty in Windows
#
#		-j	just complex enough 
#		-l	letters only
#		-m	mixed alphanum and specials (default)
#		-z	mixed alphanum, specials, and HARD specials
#		-n	numerals only 
#		-x	hexaecimal digits only
#
#		-d   	debug 	-- not in external versions
#
#                       0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9
#	specials: 	_ . / - "
#	HARD specials: 	@ ~ ^ * : ; , % ` ) ( } { ] [ \ ; ' + #
#	BAD SPECIALS:	! | = $ > < & 
#
#	any remaining (i.e., optional) arg1 is maximum length
#
#########################################################################
#	TBD carps:
#
#
#########################################################################
#
PATH=/usr/bin:/bin:/usr/X11R6/bin:~/bin/
#
#	Symbol Sets
#	======================	
#
LCALPHA="abcdefghijklmnopqrstuvwxyz"
ROT13=` echo "${LCALPHA}${LCALPHA}" | cut -c 14-39 | rev `
UCALPHA=` echo "${ROT13}${LCALPHA}" | rev | tr "a-z" "A-Z" | cut -c 1-26`
#
EPOCHSECONDS=` date +%s `
SOMEDIGITS=` echo "${EPOCHSECONDS}" | tr -d "01" `
# echo "debug 1"
LCDIGIT=` echo "${SOMEDIGITS} ^ 2" | bc | tr -s "0-9" | tr -d "01" | \
	rev | cut -c 1 `
DRAWLC=`  echo " ( ${EPOCHSECONDS} % 26 ) + 1 " | bc `
# echo "debug 2"
LCVALUE=` echo "${LCALPHA}${LCALPHA}" | cut -c ${DRAWLC} `
#
SOMEDIGITS=` echo "${EPOCHSECONDS}" | tr -d "01" `
# echo "debug 3"
UCDIGIT=`   echo "${SOMEDIGITS} ^ 3" | bc | tr -s "0-9" | tr -d "01" | \
	rev | cut -c 1 `
DRAWUC=`  echo " ( ${EPOCHSECONDS} % 26 ) + 1" | bc `
# echo "debug 4"
UCVALUE=` echo "${UCALPHA}${UCALPHA}" | cut -c ${DRAWUC} `
#
#
#	we only need one symbol
#       0123 4 
WINSET="_./-\""
#       01234567 8901234 56 789
SYMSET="@~^*:;,%\`)(}{][\\;\'+#"
#          012 3456
NOTSYMSET="!|=\$><&"
#
# echo "debug 5"
SECEPOCH=`date +%s | rev | cut -c 1-4 | rev `
SYMOFFSET=` echo " ( ${SECEPOCH} % 10 ) + 1 " | bc `
# echo "SYMOFFSET: ${SYMOFFSET}"
#
#	get each set at least 10 long
# echo "debug 6"
WINUSE=`echo "${WINSET}${WINSET}${WINSET}${WINSET}" | cut -c ${SYMOFFSET} `
# echo "debug 7"
SYMUSE=`echo "${WINSET}${SYMSET}${WINSET}${SYMSET}" | cut -c ${SYMOFFSET} `
#
#	Digits for ROTOR and friends
#	============================
	EPOCHTIME=` date +%s `
	EPOCHTIME=` echo " ${EPOCHTIME} ^ 3" | bc | rev | tr -s "0-9" `
#
#	after this, DIGITS is ONLY 1 thru 9
	DIGITS=` echo "${EPOCHTIME}" | rev | md5sum - | awk {'print $1'} | \
		tr -d "0A-Fa-f" | tr -s "1-9" `
# echo "DIGITS: ${DIGITS} " 1>&2
#	we always increment the ROTORCNT before using ROTOR
	ROTORCNT=0
#
#
#	Word Lists
#	============================
#
CNT=`find /usr/share/dict/ -type f | wc -l | awk {'print $1'}`
[ 0${CNT} -lt 1 ] && {
	echo "warning: /usr/share/dict/ is empty -- please install: words package " 1>&2
	}
[ 0${CNT} -gt 0 ] && {
#
# 	echo "WORDLIST: "
#	a word
	LENFILE=` wc -l /usr/share/dict/* | awk {'print $1'} | tail -n 1 `
# echo "debug 8"
	NONCE=` echo "${EPOCHSECONDS}${LENFILE} ^ 3" | bc | md5sum - | \
		awk {'print $1'} | tr -d "01a-fA-F" | tr -s "0-9" `
# echo "NONCE: ${NONCE} " 1>&2
export NONCE=` echo "${NONCE}" | cut -c 1 `
#
#	re-compute if we have a poor value for cutting with
while [ 0${NONCE} -lt 1 -a 0${NONCE} -gt 9 ] ; do
	EPOCHSECONDS=` date +%s `
	export NONCE=` echo " ( ( ${DIGITS}${EPOCHSECONDS} ^ 3 ) \
		% ${LENFILE} ) + 1 " | bc | md5sum - | awk {'print $1'} | \
		tr -d "01a-fA-F" | tr -s "0-9" `
echo "NONCE: ${NONCE} " 1>&2
	export NONCE=` echo "${NONCE}" | cut -c 1 `
done
#
	echo -en "WORDLIST: (14) \t "
#
	echo -n "${UCVALUE}${LCVALUE}"
#
# echo "debug 9"
	SLICE=` echo " ${DIGITS}${EPOCHSECONDS} % ${LENFILE}" | bc `
	cat /usr/share/dict/* /usr/share/link-grammar/en/words/* | \
		head -n ${SLICE} | tr -s "[:alnum:]" | \
		grep -v "^[a-z][a-z][a-z][\ \t\n\r]" | \
		tr "aeiou" "AEIOU" | tail -n 1 | cut -c 1-5 | tr -d "\n\r"
#
#	every time we USE a NONCE, get a new one
while [ 0${NONCE} -lt 1 -a 0${NONCE} -gt 9 ] ; do
	EPOCHSECONDS=` date +%s `
	export NONCE=` echo " ( ( ${DIGITS}${EPOCHSECONDS} ^ 3 ) \
		% ${LENFILE} ) + 1 " | bc | md5sum - | awk {'print $1'} | \
		tr -d "01a-fA-F" `
echo "NONCE: ${NONCE} " 1>&2
	export NONCE=` echo "${NONCE}" | cut -c 1 `
done
#
#	a special
	export ROTORCNT=` echo "${ROTORCNT} + 1" | bc `
# echo "debug 10"
	ROTOR=` echo "${DIGITS}${DIGITS}" | tr -s "0-9" | \
		cut -c ${ROTORCNT} `
#
#	actually already chosen for one via WINUSE
# 	echo "${SYMSET}${SYMSET}${SYMSET}${SYMSET}" | \
#		cut -c ${ROTOR} | tr -s "0-9" | tr -d "\n\r"
	[ 0${ROTOR} -lt 2 ] && {
# cases 0 and 1	
		echo "${WINUSE}" | tr -d "\n\r"
		} || {
# cases: 2 thru 9
		echo "${WINSET}${WINSET}${WINSET}${WINSET}" | \
		cut -c ${ROTOR} | tr -d "\n\r"
		}
#	echo "${WINUSE}" | cut -c ${ROTOR} | tr -d "\n\r"
#             0123456789
#
#	another special
	export ROTORCNT=` echo "${ROTORCNT} + 1" | bc`
	ROTOR=` echo "${DIGITS}${DIGITS}" | tr -s "0-9" | cut -c ${ROTORCNT} `
## RPH
	echo "${WINSET}${WINSET}${WINSET}${WINSET}" | \
		cut -c ${ROTOR} | tr -d "\n\r"
#             0123456789
#	a couple numbers
	echo "${EPOCHTIME}${EPOCHTIME}" | rev | md5sum - | \
		tr -d "0A-Fa-f" | tr -s "0-9" | cut -c 1 | tr -d "\n\r"
#	another word
	EPOCHTIME=`echo " ${EPOCHTIME} ^ 3" | bc | rev`
	EPOCHTIME=`date +%s | rev`
#	last time was: ${DIGITS}${EPOCHSECONDS}, so reverse
	SLICE=`echo "${EPOCHTIME}${DIGITS} % ${LENFILE} " | bc`
	cat /usr/share/dict/* /usr/share/link-grammar/en/words/* | \
		head -n ${SLICE} | tr -s "[:alnum:]" | \
		tr "aeiou" "AEIOU" | cut -c 1-5 | tail -n 1 
	}
# exit
DEBUG="n"
#
#	pad is 6
#	1	a leading alphanum
#	1	a bang protector
#	x	the rest from the shuffled deck
#	1	upper
#	1	lower
#	1	another punctuation
#	1	a trailing alphanum
export PAD="6"
export MAXLEN="14"
#
#	guard the string against making it into the bash history
#	http://mmcgrath.livejournal.com/35143.html
export BANG=`echo "/"`
#
#########################################################################
#
#	OLD default settings with no options specified are"
#		mixed deck
#		one symbol at position two
#		14 char long
#
#	    -h help and bail
#	    -d turn debug on and continue
#
#	use -a for an alphanum only deck 
#	    -j for the just enough using alphanum 
#	    -l for letters only deck 
#	    -m for alphanum and specials deck 
#	    -n for a numeral only deck
#	    -x for a hexadecimal only deck
#	    -z for alphanum, specials, and HARD specials deck 
#
#	last valid option wins
#
#
#	debug sample code fragment
[ "x$DEBUG" = "xy" ] && {
	pwd  1>&2
 	ls   1>&2
	echo "------------------------------------------------------------"
	sleep 1
	shift
	}
#
#
#	options processing
#########################################################################
#	eat the options
#
#	set the default to -m 
export ALPHANUM="y"
export SYMBOL="y"
export MIXED="y"
export NUMBERS="y"
#
export HEX="y"
export HARD="y"
export LETTERS="y"
#
export ISOPT=`echo "#$1" | cut -c 1-2`
while [ "x${ISOPT}" = "x#-" ] ; do
#
#	alphanum only
[ "x$1" = "x-a" ] && {
#		alphanum deck 
	export ALPHANUM="y"
	export HEX=""
	export SYMBOL=""
	export HARD=""
	export LETTERS=""
	export MIXED=""
	export NUMBERS=""
	shift
	}
#
#	debug option
[ "x$1" = "x-d" ] && {
	export DEBUG="y"
#	pwd  1>&2
# 	ls   1>&2
	sleep 1
	shift
	}
#
#	just enough
[ "x$1" = "x-j" ] && {
#		alphanum deck with one special
	export ALPHANUM=""
	export HEX=""
	export SYMBOL="y"
	export HARD=""
	export LETTERS=""
	export MIXED=""
	export NUMBERS=""
	shift
	}
#
#
#	letters only
[ "x$1" = "x-l" ] && {
#		alphanum deck 
	export ALPHANUM=""
	export HEX=""
	export SYMBOL=""
	export HARD=""
	export LETTERS="y"
	export MIXED=""
	export NUMBERS=""
	shift
	}
#
#	mixed
[ "x$1" = "x-m" ] && {
#		alphanum and symbol deck 
	export ALPHANUM="y"
	export HEX=""
	export SYMBOL="y"
	export HARD=""
	export LETTERS=""
	export MIXED="y"
	export NUMBERS="y"
	shift
	}
#
#	numerals
[ "x$1" = "x-n" ] && {
#		numeral deck 
	export ALPHANUM=""
	export HEX=""
	export SYMBOL=""
	export LETTERS=""
	export MIXED=""
	export NUMBERS="y"
	shift
	}
#
#	hex digits
[ "x$1" = "x-x" ] && {
#		hexadecimal deck 
	export ALPHANUM=""
	export SYMBOL=""
	export HARD=""
	export LETTERS=""
	export MIXED=""
	export HEX="y"
	shift
	}
#
#	add HARD
[ "x$1" = "x-x" ] && {
#		hexadecimal deck 
	export ALPHANUM=""
	export SYMBOL=""
	export HARD=""
	export LETTERS=""
	export MIXED=""
	export HEX="y"
	shift
	}
#
[ "x${1}" = "x-h" ] && {
	BAS=`basename $0`
	echo "Usage: ${BAS} [-a] [-d] [-h] (length)" 1>&2
	echo "       -a limits to alphanumerics " 1>&2
	echo "       -j alphanumeric with just one special " 1>&2
	echo "       -z alphanumeric, special, and HARD specials " 1>&2
	echo "       -l limits to letters " 1>&2	
	echo "       -m mixed alphanumeric and specials (default) " 1>&2
	echo "       -n numerics " 1>&2
	echo "       -x hexadecimal mixed " 1>&2
	shift
	}
#
#
#	letters only
[ "x$1" = "x-l" ] && {
#		alphanum deck 
	export ALPHANUM=""
	export HEX=""
	export SYMBOL=""
	export HARD=""
	export LETTERS="y"
	export MIXED=""
	export NUMBERS=""
	shift
	}
#
#	mixed
[ "x$1" = "x-m" ] && {
#		alphanum and symbol deck 
	export ALPHANUM=""
	export HEX=""
	export SYMBOL=""
	export HARD=""
	export LETTERS=""
	export MIXED="y"
	export NUMBERS=""
	shift
	}
#
#	numerals
[ "x$1" = "x-n" ] && {
#		numeral deck 
	export ALPHANUM=""
	export HEX=""
	export SYMBOL=""
	export HARD=""
	export LETTERS=""
	export MIXED=""
	export NUMBERS="y"
	shift
	}
#
#	hex digits
[ "x$1" = "x-x" ] && {
#		hexadecimal deck 
	export ALPHANUM=""
	export SYMBOL=""
	export HARD=""
	export LETTERS=""
	export MIXED=""
	export HEX="y"
	shift
	}
#
[ "x${1}" = "x-h" ] && {
	BAS=`basename $0`
	echo "Usage: ${BAS} [-a] [-h] (length) " 1>&2
	echo "       -a limits to alphanumerics " 1>&2
	echo "       -j alphanumeric with just one special " 1>&2
	echo "       -l limits to letters " 1>&2
	echo "       -m is mixed alphanumerics and specials (default) " 1>&2
	echo "       -n is only numerals " 1>&2
	echo "       -x is only hexadecimal digits " 1>&2
	echo "" 1>&2
	echo "       (length) is the optional maximum length " 1>&2
	echo "          ... length defaults to ${MAXLEN} " 1>&2
	echo "" 1>&2
	echo " ... last seen option dominates " 1>&2
	exit
	} 
#
export ISOPT=`echo "#$1" | cut -c 1-2`
#
#	follow the convention that option: ^-- ends options processing
export DONEOPT=`echo "#$1" | cut -c 1-3`
[ "x${DONEOPT}" = "x#--" ] && {
	export ISOPT=""
	shift
#
#	anything that follows can only be the number of characters to emit
#		assuming it is valid
	}
done
#
#
## DEBUG="y"
#
####################################################################
#
[ "x${DEBUG}" = "xy" ] && {
	echo "ALPHANUM OPT: ${ALPHANUM}"
	echo "HEX OPT:      ${HEX}"
	echo "SYMBOL OPT:   ${SYMBOL} "
	echo "HARD OPT:     ${HARD} "
	echo "LETTERS OPT:  ${LETTERS}"
	echo "MIXED OPT:    ${MIXED}"
	echo "NUMBERS OPT:  ${NUMBERS}"
	                               
	}
#
#
[ "x$1" != "x" ] && {
	export BKPLEN=` echo "$1" `
	} || {
	export BKPLEN=` echo "${MAXLEN}" `
	}
export CUTLEN=`echo "${BKPLEN} - ${PAD}" | bc`
#
#########################################################################
#	and off to work
#
#	make a handful of NONCE's to whack around
#	the first is just a seed, and not used after this section
NONCE=`  ( df ; date )             | md5sum - | \
	awk {'print $1'} | tr -s "a-zA-Z0-9" `
#
NONCEA=` (ps ax ; echo "$NONCE" ; date )	|      md5sum - | \
	tr "0123456789abcdefABCDEF" "0123456789WERTYUWERTYU" | \
	awk {'print $1'} | tr -s "a-zA-Z0-9" `
#
#	LETTERS
NONCE=`  ( df ; date )             | md5sum - | \
	awk {'print $1'} | tr -s "a-zA-Z0-9" `
NONCEL=` ( echo "$NONCE" ; ps afx ; date )	|      md5sum - | \
	tr "0123456789abcdefABCDEF" "aBcDeFgHiJkLmNoPqRsTuV" | \
	awk {'print $1'} | tr -s "a-zA-Z0-9" `
#
#	NONCEM will be 'easy' symbols: 
#		- : @ # ~ & _ + . (ten)
#	22 symbols so some repeat; then squeeze on the ten
NONCE=`  ( df ; date )             | md5sum - | \
	awk {'print $1'} | tr -s "a-zA-Z0-9" `
NONCEM=` ( df -h ; ps afx ; date ; echo "$NONCE" ) |      md5sum - | \
	tr "0123456789abcdefABCDEF" "\-\:\@\#\~\%\&\_\+\.\-\:\@\#\~\&\&\_\+\.\-\:" | \
	awk {'print $1'} | tr -s "\-\:\@\#\~\%\&\_\+\." `
#
#	NONCEH will be the 'hard' (non-clickable) symbols:
#		` ^ * ) ( } { ] [ \ ; ['] " > < / (twenty - 1; drop ')
#	whole set squeezes
## tr does not like the doublequote in the next subshell
NONCE=`  ( df ; date )             | md5sum - | \
	awk {'print $1'} | tr -s "a-zA-Z0-9" `
NONCEH=` ( df -h ; ps afx ; date ; echo "$NONCE" ) |      md5sum - | \
	tr "0123456789def"        '\`\^\@\)\(\}\{\]\[\;\"\/\\x' | \
	awk {'print $1'} | tr -s  '\`\^\@\)\(\}\{\]\[\;\"\/\\x'  `
#                                   1 2 3 4 5 6 7 8 9 0 1 2 34
#
#	NUMERIC
NONCE=`  ( df ; date )             | md5sum - | \
	awk {'print $1'} | tr -s "a-zA-Z0-9" `
NONCEN=` (ps ax ; date ; echo "$NONCE")		|      md5sum - | \
	tr "0123456789abcdefABCDEF" "01234567890123456789012" | \
	awk {'print $1'} | tr -s "a-zA-Z0-9" `
#
#	HEX
NONCE=`  ( df ; date )             | md5sum - | \
	awk {'print $1'} | tr -s "a-zA-Z0-9" `
NONCEX=` (ps ax ; date ; echo "$NONCE")		|      md5sum - | \
	awk {'print $1'} | tr -s "a-zA-Z0-9" `
#
[ "x${DEBUG}" = "xy" ] && {
	echo "NONCEA: ${NONCEA}"
	echo "NONCEL: ${NONCEL}"
	echo "NONCEM: ${NONCEM}"
	echo "NONCEH: ${NONCEH}"
	echo "NONCEN: ${NONCEN}"
	echo "NONCEX: ${NONCEL}"
	}
#
[ "x${DEBUG}" = "xy" ] && {
	echo "SECEPOCH: 	${SECEPOCH} "
	echo "SYMOFFSET: 	${SYMOFFSET} "
#
	echo "SYMSET:		${SYMSET} "
	echo "SYMUSE:		${SYMUSE}"
#
	echo "WINSET:		${WINSET} "
	echo "WINUSE:		${WINUSE}"
	}
#
SNIPA1=` echo -n "${NONCEA}" |       cut -c 1-2 	` 
SNIPA2=` echo -n "${NONCEA}" | rev | cut -c 1-2 ` 
SNIPA3=` echo -n "${NONCEA}" |       cut -c 3-4 	`
SNIPA4=` echo -n "${NONCEA}" | rev | cut -c 3-4 `
#
#	specials
SNIPM5=`  echo -n "${NONCEM}" |       cut -c 1-2 	` 
SNIPM6=`  echo -n "${NONCEM}" | rev | cut -c 1-2 ` 
SNIPM15=` echo -n "${NONCEM}" |       cut -c 1-2 	` 
SNIPM16=` echo -n "${NONCEM}" | rev | cut -c 1-2 ` 
#
#	grab LETTERS and ALPHANUM padding characters for the head and 
#		tail of the string
SNIPL7=`  echo -n "${NONCEL}"  |       cut -c 6 	`
SNIPL8=`  echo -n "${NONCEL}"  | rev | cut -c 6 `
SNIPL9=`  echo -n "${NONCEL}"  |       cut -c 7 	`
SNIPL10=` echo -n "${NONCEL}"  | rev | cut -c 7 `
SNIPL17=` echo -n "${NONCEL}"  |       cut -c 8 	`
SNIPL18=` echo -n "${NONCEL}"  | rev | cut -c 8 `
#
SNIPN11=` echo -n "${NONCEN}"  |       cut -c 1 `
SNIPN12=` echo -n "${NONCEN}"  | rev | cut -c 1 `
SNIPN13=` echo -n "${NONCEN}"  |       cut -c 2 `
SNIPN14=` echo -n "${NONCEN}"  | rev | cut -c 2 `
SNIPN19=` echo -n "${NONCEN}"  |       cut -c 3 `
SNIPN20=` echo -n "${NONCEN}"  | rev | cut -c 3 `
SNIPN21=` echo -n "${NONCEN}"  |       cut -c 4 	`
SNIPN22=` echo -n "${NONCEN}"  | rev | cut -c 4 `
#
SNIPX23=` echo -n "${NONCEX}"  |       cut -c 1 `
SNIPX24=` echo -n "${NONCEX}"  | rev | cut -c 1 `
SNIPX25=` echo -n "${NONCEX}"  |       cut -c 2 `
SNIPX26=` echo -n "${NONCEX}"  | rev | cut -c 2 `
SNIPX27=` echo -n "${NONCEX}"  |       cut -c 3 `
SNIPX28=` echo -n "${NONCEX}"  | rev | cut -c 3 `
SNIPX29=` echo -n "${NONCEX}"  |       cut -c 4 	`
SNIPX30=` echo -n "${NONCEX}"  | rev | cut -c 4 `
#
#
#	HARD specials
SNIPM31=` echo -n "${NONCEH}" |       cut -c 1-2 	` 
SNIPM32=` echo -n "${NONCEH}" | rev | cut -c 1-2 ` 
SNIPM33=` echo -n "${NONCEH}" |       cut -c 1-2 	` 
SNIPM34=` echo -n "${NONCEH}" | rev | cut -c 1-2 ` 
#
#	we shuffle a deck of characters, and chop out a hunk
#
#	alphanum gets alphas, nums, and letters
[ "x${ALPHANUM}" = "xy" -o "x${SYMBOL}" = "xy" ] && {
export DECK=` echo "${SNIPA1}${SNIPA2}${SNIPA3}${SNIPA4}${NONCEA}${NONCEN}${NONCEL}" | \
	tr -s "a-zA-Z0-9" | awk {'print $1'} | shuffle-stdin.php | \
	cut -c 1-${CUTLEN} `
	[ "x${DEBUG}" = "xy" ] && {
		echo "ALPHANUM or SYMBOL DECK: ${DECK}"
		}
	}
#
#	letters get ONLY letters
[ "x${LETTERS}" = "xy" ] && {
export DECK=` echo "${SNIPL7}${SNIPL8}${SNIPL9}${SNIPL10}${NONCEL}" | \
	tr -s "a-zA-Z0-9" | awk {'print $1'} | shuffle-stdin.php | \
	cut -c 1-${CUTLEN} `
	[ "x${DEBUG}" = "xy" ] && {
		echo "LETTERS DECK: ${DECK}"
		}
	}
#
#	mixed gets everything
[ "x${MIXED}" = "xy" ] && {
export DECK=` echo "${SNIPA1}${SNIPA2}${SNIPA3}${SNIPA4}${SNIPM5}${SNIPM6}${NONCE}${NONCEL}${NONCEM}${NONCEA}" | \
	tr -s "a-zA-Z0-9" | awk {'print $1'} | shuffle-stdin.php | \
	cut -c 1-${CUTLEN} `
	[ "x${DEBUG}" = "xy" ] && {
		echo "MIXED DECK: ${DECK}"
		}
	} 
NONCE=`  ( df ; date )             | md5sum - | \
	awk {'print $1'} | tr -s "a-zA-Z0-9" `
#
#	HARD mixed gets everything PLUS
[ "x${HARD}" = "xy" ] && {
export DECK=` echo "${SNIPA1}${SNIPA2}${SNIPA3}${SNIPA4}${SNIPM5}${SNIPM6}${NONCE}${NONCEL}${NONCEM}${NONCEH}${NONCEA}" | \
	tr -s "a-zA-Z0-9" | awk {'print $1'} | shuffle-stdin.php | \
	cut -c 1-${CUTLEN} `
	[ "x${DEBUG}" = "xy" ] && {
		echo "MIXED DECK: ${DECK}"
		}
	}
NONCE=`  ( df ; date )             | md5sum - | \
	awk {'print $1'} | tr -s "a-zA-Z0-9" `
#
#	numbers gets ONLY numbers
[ "x${NUMBERS}" = "xy" ] && {
export DECK=` echo "${SNIPN11}${SNIPN12}${SNIPN13}${SNIPN14}${NONCEN}" | \
	tr -s "a-zA-Z0-9" | awk {'print $1'} | shuffle-stdin.php | \
	cut -c 1-${CUTLEN} `
	[ "x${DEBUG}" = "xy" ] && {
		echo "NUMBERS DECK: ${DECK}"
		}
	}
#
#	hex gets ONLY hex digits
[ "x${HEX}" = "xy" ] && {
export DECK=` echo "${SNIPX23}${SNIPX24}${SNIPX25}${SNIPX26}${NONCEX}" | \
	tr -s "a-zA-Z0-9" | awk {'print $1'} | shuffle-stdin.php | \
	cut -c 1-${CUTLEN} `
	[ "x${DEBUG}" = "xy" ] && {
		echo "HEX DECK: ${DECK}"
		}
	}
#
sleep 2
NONCE=`  (df ; date )             | md5sum - | \
	awk {'print $1'} | tr -s "a-zA-Z0-9" `
#
#	make some one char bumpers
LC=`echo "${NONCEL}"   | cut -c 1 | \
	tr "ABCDEFGHIJKLMNOPQRSTUVWXYZ" "abcdefghijklmnopqrstuvwxyz" `
UC=`echo "${NONCEL}"   | cut -c 2 | \
	tr "abcdefghijklmnopqrstuvwxyz" "ABCDEFGHIJKLMNOPQRSTUVWXYZ" `
#
PUN1=`echo "${NONCEM}" | cut -c 1 | tr 'ABCDEF' 'abcdef' | \
	tr "0123456789cdef" "~:@#&^*(){}][/" `
#..............................0123456789012345
PUN2=`echo "${NONCEM}" | cut -c 2 | tr "ABCDEF" "abcdef" | \
	tr "0123456789cdef" "~:@#&^*(){}][/" `
#..............................0123456789012345
#
#	tr fixup stop point RPH
NUM1=`echo "${NONCEN}" | cut -c 1 | tr 'ABCDEF' 'abcdef' | \
	tr '0123456789abcdef' '0123456789012345'`
#..............................0123456789012345
NUM2=`echo "${NONCEN}" | cut -c 2 | tr 'ABCDEF' 'abcdef' | \
	tr '0123456789abcdef' '0123456789987654'`
NUM3=`echo "${NONCEN}" | cut -c 3 | tr 'ABCDEF' 'abcdef' | \
	tr '0123456789abcdef' '0123456789012345'`
#..............................0123456789012345
NUM4=`echo "${NONCEN}" | cut -c 4 | tr 'ABCDEF' 'abcdef' | \
	tr '0123456789abcdef' '0123456789987654'`
NUM5=`echo "${NONCEN}" | cut -c 5 | tr 'ABCDEF' 'abcdef' | \
	tr '0123456789abcdef' '0123456789012345'`
#..............................0123456789012345
NUM6=`echo "${NONCEN}" | cut -c 6 | tr 'ABCDEF' 'abcdef' | \
	tr '0123456789abcdef' '0123456789987654'`
#..............................0123456789012345
#
HEX1=`echo "${NONCEX}" | cut -c 1 | tr 'ABCDEF' 'abcdef' `
HEX2=`echo "${NONCEX}" | cut -c 2 | tr 'ABCDEF' 'abcdef' `
HEX3=`echo "${NONCEX}" | cut -c 3 | tr 'ABCDEF' 'abcdef' `
HEX4=`echo "${NONCEX}" | cut -c 4 | tr 'ABCDEF' 'abcdef' `
HEX5=`echo "${NONCEX}" | cut -c 5 | tr 'ABCDEF' 'abcdef' `
HEX6=`echo "${NONCEX}" | cut -c 6 | tr 'ABCDEF' 'abcdef' `
#
#
[ "x${DEBUG}" = "xy" ] && {
	echo "LC: ${LC}"
	echo "UC: ${UC}"
	echo "PUN1: ${PUN1}"
	echo "PUN2: ${PUN2}"
	echo "NUM1: ${NUM1}"
	echo "NUM2: ${NUM2}"
	echo "NUM3: ${NUM3}"
	echo "NUM4: ${NUM4}"
	echo "NUM5: ${NUM5}"
	echo "NUM6: ${NUM6}"
	echo "HEX1: ${HEX1}"
	echo "HEX2: ${HEX2}"
	echo "HEX3: ${HEX3}"
	echo "HEX4: ${HEX4}"
	echo "HEX5: ${HEX5}"
	echo "HEX6: ${HEX6}"
	}
#
[ "x${DEBUG}" = "xy" ] && {
	echo "================================================================="
	}
#
#	Print stuff
#
#	EVERYTHING _NOT_ a DECK are always ONE CHARACTER
#	DECK is ALWAYS trimmed to 6 less than desired, 
#		and only contains proper characters
#
[ "x${ALPHANUM}" = "xy" ] && {
#	[ "x${DEBUG}" = "xy" ] && 
echo -e -n "ALPHANUM:\t " 
	echo "${SNIPL7}${SNIPA1}${DECK}${LC}${UC}${SNIPN11}${SNIPA2}"
	}
[ "x${MIXED}" = "xy" ] && {
#	[ "x${DEBUG}" = "xy" ] && 
echo -e -n "MIXED:\t\t " 
	echo "${SNIPL7}${BANG}${DECK}${LC}${UC}${PUN2}${SNIPM15}${SNIPL9}"
	} 
[ "x${NUMBERS}" = "xy" ] && {
#	[ "x${DEBUG}" = "xy" ] && 
echo -e -n "NUMBERS:\t " 
	echo "${SNIPN11}${SNIP12}${DECK}${NUM3}${NUM4}${SNIPN13}${SNIPN14}${SNIPN19}${SNIPN20}${SNIPN21}"
	} 
[ "x${HEX}" = "xy" ] && {
#	[ "x${DEBUG}" = "xy" ] && 
echo -e -n "HEX:\t\t " 
	echo -n "${SNIPX23}${SNIPX24}${DECK}${HEX3}${HEX4}${SNIPX25}${SNIPX26}${SNIPX27}${SNIPX28}" | \
		cut -c 1-4 | tr 'abcdef' 'ABCDEF' | tr -d '\r\n'
	echo "${SNIPX23}${SNIPX24}${DECK}${HEX3}${HEX4}${SNIPX25}${SNIPX26}${SNIPX27}${SNIPX28}" | \
		cut -c 5- 
	} 
[ "x${SYMBOL}" = "xy" ] && {
#	[ "x${DEBUG}" = "xy" ] && 
echo -e -n "SYMBOL:\t\t " 
	echo "${SNIPL7}${SYMUSE}${DECK}${LC}${UC}${SNIPN11}${SNIPA2}"
	}
[ "x${LETTERS}" = "xy" ] && {
#	[ "x${DEBUG}" = "xy" ] && 
echo -e -n "LETTERS:\t " 
	echo "${SNIPL7}${SNIPL8}${DECK}${LC}${UC}${SNIPL9}${SNIPL10}${SNIPL17}${SNIPL18}"
	}
#
##############################################################
#
