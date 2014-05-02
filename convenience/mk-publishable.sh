#!/bin/sh
#
#	mk-publishable.sh
#
#	make the domain used generic
#
# Copyright (c) 2014 Owl River Company 
# reports to: info@owlriver.com 
# License: GPL, v. 2+ 
#
PATH='/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:~/bin/'
MYNAME=`basename $0`
#
#	we ignore @owlriver, @herrold (email addresses), and 
#	this program file itself, in the next match and replace 
find -type f -a ! -name ${MYNAME} -a -exec \
	sed -i  -e 's@\.herrold.com@.example.com@g' \
		-e 's@\.owlriver.com@.example.com@g' {} \;
#
#	testing fragment below, to verify the self-exclusion works properly
# 	echo {} \;
#
