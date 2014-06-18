#!/bin/sh 
#
#	fixup-dist.sh
#		$Id: fixup-dist.sh,v 1.6 2014/06/17 21:16:27 herrold Exp herrold $
#
#	remedial script to cover bad form of dist tag used 
#
#	we mention the issue but default to: .CHANGEME; this cleans that up
#
#	then we snapshot a backup,
#		mkdir ../backup-`date +%Y%m%d` 
#		rsync -a . ../backup-`date +%Y%m%d`/.
#
#	then flatten 
#		rm -rf SRPMS ; mkdir SRPMS ; cd SRPMS 
#		for i in `find .. -name "*.src.rpm" `; do ln -s $i  ; done
#	size is as follows:
cat - << END > /dev/null
herrold@centos-6 SRPMS]$ du -shL
5.8G    
END
#
#	there are also some missing %{dist] tags in play:
cat << END > /dev/null 
[herrold@centos-6 centos-7-archive]$ ls SRPMS | grep -v ".orc7."
centos-logos-70.0.3-99.el7.centos.src.rpm
kernel-3.10.0-123.1.2.el7.src.rpm
pidgin-2.10.7-22.el6.src.rpm
spamassassin-3.3.2-18.el6.src.rpm
xhtml1-dtds-1.0-20020801.10.src.rpm
[herrold@centos-6 centos-7-archive]$ date
Tue Jun 17 16:03:38 EDT 2014
END
#
#
#	Copyright (c) 2014 R P Herrold info@owlriver.com
#	lives on: centos-6 at: /home/herrold/vcs/git/centos-7-archive
#	outside will be in: https://github.com/herrold/tool-tips/tree/master/clefos
#	reports to: info@owlriver.com
#	discussion: http://lists.clefos.org/mailman/listinfo, on list:
#		e7-devel-list
#       license: GPLv3+
#
ARCHIVE="/home/herrold/vcs/git/centos-7-archive"	
STRING=".CHANGEME.src.rpm"
REPLSTRING=".orc7.src.rpm"
#
PATH='/bin:/usr/bin:/usr/sbin:/sbin:~/bin/'
#
##########################################################
#
[ "x$1" = "x-r" ] && {
#	option -r says: this is real	
	export REAL="y"
	echo "info: will make changes -- ten sec to ^C if not wanted" 1>&2
	echo "info: will replace: ${STRING} with ${REPLSTRING} " 1>&2
#	we fibbed ...
	sleep 15
	}
#
cd
cd ${ARCHIVE}
for i in `find ${ARCHIVE} -name "*[0-9a-zA-Z]${STRING}" | \
	sort | grep -v "[\.]${STRING}"` ; do
	BAS=`basename $i`
	BASDIR=`dirname $i`
	NEWNAM=`echo "${BAS}" | sed -e "s@${STRING}@${REPLSTRINGSTRING}@g"`
	echo $i
	[ "x${REAL}" != "x" ] && mv $i ${BASDIR}/${NEWNAM} 
	echo
done
#
