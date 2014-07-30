#!/bin/sh
#
#	push-reboot-notice.sh
#		$Id: push-reboot-notice.sh,v 1.12 2014/07/30 15:37:50 herrold Exp herrold $
#	License: GPLv3+
#	info@owlriver.com
#	Copyright (c) 2014 R P Herrold, Columbus OH
#
#	Push an updated copy of a script [here: TGT] outside, 
#	audit if installed,
#
#	if called with option: 
#		-i 
#	also install it in the remote root crontab
#
export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/root/bin
TGT="reboot-notice.sh "
#
MYNAME=` basename $0 2> /dev/null `
export YMD=` date +%Y%m%d`
#
QUIET="-q "
#
[ "x${1}" = "x" ] && {
	echo "usage: $0 [-i] (hostname)" 1>&2
	echo " ... where: -i installs remotely, as well as pushing an update out" 1>&1
	exit 1
	}
#
#	only one option
[ "x${1}" = "x-i" ] && {
	export INSTALL="y"
	shift 1
	}
#
cd 
cd /home/herrold/pmman/admin
ssh -l root -t $1 crontab -l 2>&1 | \
	grep -v "^no crontab for" | \
	grep -v "^Connection to "
ssh -l root $1 mkdir -p /root/bin
[ -e ${TGT} ] && \
	scp ${QUIET} ${TGT} root@$1:/root/bin
[ -e ${TGT} ] && {
	echo "notice: did not see: ${TGT} ... continuing " 1>&2
	}
#
#	handle option -i below here
#
#	strive for idempotency; leave commented matter alone
#
#	TBD:  we do not trap against interrupts, which may be a bad idea
#		we do not litter with a temp file, as we use a shell 
#		pipeline so it seems safe enough without 
[ "x${INSTALL}" != "x" ] && {
#
ssh -l root $1 rm -f /root/acme.sh
#
#	man 1 crontab  under -u shows that stdin may be used
#
cat - << END | ssh -l root  $1 tee /root/acme.sh > /dev/null 
#!/bin/sh
{
#	idempotency, after a fashion
#	pass 1, add a new uncommented line
crontab -l | grep -v "^no crontab for" | grep -v "${TGT}"
crontab -l | grep -v "^no crontab for" | grep    "${TGT}" | sed -e "s~^@~#@~"
echo "# "
echo "@reboot 	/root/bin/${TGT} -m > /dev/null 2>&1 "
} | (sleep 1; crontab -)
#
#	pass 2, remove any prior commented lines as to the target
#		a side effect is that the active line drops to the bottom
#		of the crontab -l
{
crontab -l | grep -v "^no crontab for" | grep -v "${TGT}"
crontab -l | grep -v "^no crontab for" | grep    "${TGT}" | grep -v "#@"
echo "#	prior line added: ${YMD} "
} | (sleep 1; crontab -)
END
#
ssh -l root $1 chmod 755 /root/acme.sh
ssh -l root $1 /root/acme.sh
# ssh -l root $1 crontab -l
ssh -l root $1 rm -f /root/acme.sh
#
echo "optionally, ssh in and clean up the crontab: " 1>&2
echo "   ssh -l root $1 " 1>&2
#
	}
#
