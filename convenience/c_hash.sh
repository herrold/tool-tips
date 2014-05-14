#!/bin/sh
#
#	c_hash.sh
#	non-stated license
#	found code from: http://www.filewatcher.com/p/openssl-1.0.1-beta1.tar.gz.4445727/openssl-1.0.1-beta1/tools/c_hash.html
#	so probably: License: OpenSSL
#	Reports to: upstream, please
#
# 	print out the hash values [of a directory full of X.509 certificates]
#
#	see also: http://www.filewatcher.com/p/openssl-1.0.1-beta1.tar.gz.4445727/openssl-1.0.1-beta1/tools/c_rehash.html
#		c_rehash (c_rehash.pl)
#
for i in $*
do
	h=`openssl x509 -hash -noout -in $i`
	echo "$h.0 => $i"
done