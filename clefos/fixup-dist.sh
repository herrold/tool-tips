#!/bin/sh 
#
#	fixup-dist.sh
#		$Id: fixup-dist.sh,v 1.7 2014/06/20 19:22:50 herrold Exp herrold $
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
#	some are SCL solved, but others are not
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
#	and completely missing packages 
# 	(no .spec files, so no SRPM may be built)
cat - << END
missing: esc
missing: gnome-system-log
missing: gtk-vnc
missing: haproxy
missing: httpd24-httpd
missing: httpd24-mod_auth_kerb
missing: java-1.7.0-openjdk
missing: java-1.7.1-ibm
missing: libreoffice
missing: mariadb55-mariadb
missing: mesa-private-llvm
missing: mongodb24-gperftools
missing: mongodb24-libunwind
missing: mongodb24-mongodb
missing: mongodb24-mongo-java-driver
missing: mysql55-mysql
missing: nfstest
missing: nginx14-nginx
missing: nodejs010-http-parser
missing: nodejs010-libuv
missing: nodejs010-node-gyp
missing: nodejs010-nodejs
missing: nodejs010-nodejs-abbrev
missing: nodejs010-nodejs-ansi
missing: nodejs010-nodejs-ansicolors
missing: nodejs010-nodejs-ansistyles
missing: nodejs010-nodejs-archy
missing: nodejs010-nodejs-asn1
missing: nodejs010-nodejs-assert-plus
missing: nodejs010-nodejs-async
missing: nodejs010-nodejs-aws-sign
missing: nodejs010-nodejs-block-stream
missing: nodejs010-nodejs-boom
missing: nodejs010-nodejs-bson
missing: nodejs010-nodejs-child-process-close
missing: nodejs010-nodejs-chmodr
missing: nodejs010-nodejs-chownr
missing: nodejs010-nodejs-cmd-shim
missing: nodejs010-nodejs-columnify
missing: nodejs010-nodejs-combined-stream
missing: nodejs010-nodejs-config-chain
missing: nodejs010-nodejs-cookie-jar
missing: nodejs010-nodejs-couch-login
missing: nodejs010-nodejs-cryptiles
missing: nodejs010-nodejs-ctype
missing: nodejs010-nodejs-delayed-stream
missing: nodejs010-nodejs-editor
missing: nodejs010-nodejs-forever-agent
missing: nodejs010-nodejs-form-data
missing: nodejs010-nodejs-fstream
missing: nodejs010-nodejs-fstream-ignore
missing: nodejs010-nodejs-fstream-npm
missing: nodejs010-nodejs-github-url-from-git
missing: nodejs010-nodejs-github-url-from-username-repo
missing: nodejs010-nodejs-glob
missing: nodejs010-nodejs-graceful-fs
missing: nodejs010-nodejs-hawk
missing: nodejs010-nodejs-hoek
missing: nodejs010-nodejs-http-signature
missing: nodejs010-nodejs-inherits
missing: nodejs010-nodejs-ini
missing: nodejs010-nodejs-init-package-json
missing: nodejs010-nodejs-json-stringify-safe
missing: nodejs010-nodejs-lockfile
missing: nodejs010-nodejs-lru-cache
missing: nodejs010-nodejs-mime
missing: nodejs010-nodejs-minimatch
missing: nodejs010-nodejs-mkdirp
missing: nodejs010-nodejs-mongodb
missing: nodejs010-nodejs-mute-stream
missing: nodejs010-nodejs-nan
missing: nodejs010-nodejs-node-uuid
missing: nodejs010-nodejs-nopt
missing: nodejs010-nodejs-normalize-package-data
missing: nodejs010-nodejs-npmconf
missing: nodejs010-nodejs-npmlog
missing: nodejs010-nodejs-npm-registry-client
missing: nodejs010-nodejs-npm-user-validate
missing: nodejs010-nodejs-oauth-sign
missing: nodejs010-nodejs-once
missing: nodejs010-nodejs-opener
missing: nodejs010-nodejs-osenv
missing: nodejs010-nodejs-path-is-inside
missing: nodejs010-nodejs-promzard
missing: nodejs010-nodejs-proto-list
missing: nodejs010-nodejs-qs
missing: nodejs010-nodejs-read
missing: nodejs010-nodejs-read-installed
missing: nodejs010-nodejs-read-package-json
missing: nodejs010-nodejs-request
missing: nodejs010-nodejs-retry
missing: nodejs010-nodejs-rimraf
missing: nodejs010-nodejs-semver
missing: nodejs010-nodejs-sha
missing: nodejs010-nodejs-sigmund
missing: nodejs010-nodejs-slide
missing: nodejs010-nodejs-sntp
missing: nodejs010-nodejs-tar
missing: nodejs010-nodejs-text-table
missing: nodejs010-nodejs-tunnel-agent
missing: nodejs010-nodejs-uid-number
missing: nodejs010-nodejs-which
missing: nodejs010-npm
missing: OpenEXR
missing: perl516-mod_perl
missing: perl516-perl
missing: perl516-perl-Archive-Tar
missing: perl516-perl-autodie
missing: perl516-perl-B-Lint
missing: perl516-perl-BSD-Resource
missing: perl516-perl-Capture-Tiny
missing: perl516-perl-Carp
missing: perl516-perl-CGI
missing: perl516-perl-Class-Inspector
missing: perl516-perl-Class-Load
missing: perl516-perl-Class-Load-XS
missing: perl516-perl-Class-Singleton
missing: perl516-perl-Clone
missing: perl516-perl-Compress-Raw-Bzip2
missing: perl516-perl-Compress-Raw-Zlib
missing: perl516-perl-CPAN-Meta
missing: perl516-perl-CPAN-Meta-Requirements
missing: perl516-perl-CPAN-Meta-YAML
missing: perl516-perl-Data-Dumper
missing: perl516-perl-Data-OptList
missing: perl516-perl-Data-Peek
missing: perl516-perl-DateTime
missing: perl516-perl-DateTime-Locale
missing: perl516-perl-DateTime-TimeZone
missing: perl516-perl-DBD-MySQL
missing: perl516-perl-DBD-Pg
missing: perl516-perl-DBD-SQLite
missing: perl516-perl-DBI
missing: perl516-perl-DBIx-Simple
missing: perl516-perl-Devel-StackTrace
missing: perl516-perl-Devel-Symdump
missing: perl516-perl-Digest
missing: perl516-perl-Digest-SHA
missing: perl516-perl-Dist-CheckConflicts
missing: perl516-perl-Encode
missing: perl516-perl-ExtUtils-MakeMaker
missing: perl516-perl-ExtUtils-Manifest
missing: perl516-perl-FCGI
missing: perl516-perl-File-CheckTree
missing: perl516-perl-File-Copy-Recursive
missing: perl516-perl-File-ShareDir
missing: perl516-perl-File-Slurp
missing: perl516-perl-Filter
missing: perl516-perl-Inline
missing: perl516-perl-Inline-Files
missing: perl516-perl-IO-Compress
missing: perl516-perl-IO-String
missing: perl516-perl-IPC-Cmd
missing: perl516-perl-IPC-Run3
missing: perl516-perl-JSON-PP
missing: perl516-perl-Linux-Pid
missing: perl516-perl-List-MoreUtils
missing: perl516-perl-Locale-Codes
missing: perl516-perl-Log-Message
missing: perl516-perl-Module-Build
missing: perl516-perl-Module-Implementation
missing: perl516-perl-Module-Metadata
missing: perl516-perl-Module-Pluggable
missing: perl516-perl-Module-Runtime
missing: perl516-perl-Net-Daemon
missing: perl516-perl-Number-Compare
missing: perl516-perl-Package-Anon
missing: perl516-perl-Package-Generator
missing: perl516-perl-Package-Stash
missing: perl516-perl-Package-Stash-XS
missing: perl516-perl-Params-Check
missing: perl516-perl-Params-Util
missing: perl516-perl-Params-Validate
missing: perl516-perl-parent
missing: perl516-perl-Parse-CPAN-Meta
missing: perl516-perl-Parse-RecDescent
missing: perl516-perl-PathTools
missing: perl516-perl-Perl-OSType
missing: perl516-perl-PlRPC
missing: perl516-perl-Pod-Checker
missing: perl516-perl-Pod-Coverage
missing: perl516-perl-podlators
missing: perl516-perl-Pod-Parser
missing: perl516-perl-Pod-Perldoc
missing: perl516-perl-Pod-Simple
missing: perl516-perl-Pod-Usage
missing: perl516-perl-Probe-Perl
missing: perl516-perl-Readonly
missing: perl516-perl-Readonly-XS
missing: perl516-perl-Scalar-List-Utils
missing: perl516-perl-Socket
missing: perl516-perl-Sub-Exporter
missing: perl516-perl-Sub-Install
missing: perl516-perl-Sub-Name
missing: perl516-perl-Sub-Uplevel
missing: perl516-perl-Sys-Syslog
missing: perl516-perl-Taint-Runtime
missing: perl516-perl-Term-UI
missing: perl516-perl-Test-CPAN-Meta
missing: perl516-perl-Test-Fatal
missing: perl516-perl-Test-NoWarnings
missing: perl516-perl-Test-Output
missing: perl516-perl-Test-Pod
missing: perl516-perl-Test-Pod-Coverage
missing: perl516-perl-Test-Requires
missing: perl516-perl-Test-Script
missing: perl516-perl-Test-Taint
missing: perl516-perl-Test-Tester
missing: perl516-perl-Test-Warn
missing: perl516-perl-Test-Without-Module
missing: perl516-perl-Text-Glob
missing: perl516-perl-Text-Soundex
missing: perl516-perl-Text-Unidecode
missing: perl516-perl-Thread-Queue
missing: perl516-perl-threads
missing: perl516-perl-threads-shared
missing: perl516-perl-Tie-IxHash
missing: perl516-perl-Tree-DAG_Node
missing: perl516-perl-Try-Tiny
missing: perl516-perl-version
missing: perl516-perl-Version-Requirements
missing: perl516-perl-YAML
missing: perl-DBD-Pg
missing: php54-php
missing: php54-php-pear
missing: php54-php-pecl-apc
missing: php54-php-pecl-memcache
missing: php54-php-pecl-zendopcache
missing: php55-php
missing: php55-php-pear
missing: php55-php-pecl-jsonc
missing: php55-php-pecl-memcache
missing: php55-php-pecl-mongo
missing: postgresql92-postgresql
missing: preupgrade-assistant
missing: preupgrade-assistant-contents
missing: python27-babel
missing: python27-mod_wsgi
missing: python27-MySQL-python
missing: python27-numpy
missing: python27-python
missing: python27-python-coverage
missing: python27-python-docutils
missing: python27-python-jinja2
missing: python27-python-markupsafe
missing: python27-python-nose
missing: python27-python-psycopg2
missing: python27-python-pygments
missing: python27-python-pymongo
missing: python27-python-setuptools
missing: python27-python-simplejson
missing: python27-python-six
missing: python27-python-sphinx
missing: python27-python-sqlalchemy
missing: python27-python-virtualenv
missing: python27-python-werkzeug
missing: python27-scipy
missing: python33-mod_wsgi
missing: python33-numpy
missing: python33-python
missing: python33-python-coverage
missing: python33-python-docutils
missing: python33-python-jinja2
missing: python33-python-markupsafe
missing: python33-python-nose
missing: python33-python-psycopg2
missing: python33-python-pygments
missing: python33-python-pymongo
missing: python33-python-setuptools
missing: python33-python-simplejson
missing: python33-python-six
missing: python33-python-sphinx
missing: python33-python-sqlalchemy
missing: python33-python-virtualenv
missing: python33-scipy
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-as-IN
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-bn-IN
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-de-DE
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-en-US
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-es-ES
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-fr-FR
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-gu-IN
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-hi-IN
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-it-IT
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-ja-JP
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-kn-IN
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-ko-KR
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-ml-IN
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-mr-IN
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-or-IN
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-pa-IN
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-pt-BR
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-ru-RU
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-ta-IN
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-te-IN
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-zh-CN
missing: Red_Hat_Enterprise_Linux-Release_Notes-7-zh-TW
missing: redhat-indexhtml
missing: redhat-logos
missing: redhat-release-server
missing: ror40-rubygem-actionmailer
missing: ror40-rubygem-actionpack
missing: ror40-rubygem-activemodel
missing: ror40-rubygem-activerecord
missing: ror40-rubygem-activerecord-deprecated_finders
missing: ror40-rubygem-activeresource
missing: ror40-rubygem-activesupport
missing: ror40-rubygem-arel
missing: ror40-rubygem-atomic
missing: ror40-rubygem-bacon
missing: ror40-rubygem-bcrypt-ruby
missing: ror40-rubygem-bson
missing: ror40-rubygem-bson_ext
missing: ror40-rubygem-builder
missing: ror40-rubygem-bundler
missing: ror40-rubygem-coffee-rails
missing: ror40-rubygem-coffee-script
missing: ror40-rubygem-coffee-script-source
missing: ror40-rubygem-dalli
missing: ror40-rubygem-diff-lcs
missing: ror40-rubygem-erubis
missing: ror40-rubygem-execjs
missing: ror40-rubygem-fakeweb
missing: ror40-rubygem-hike
missing: ror40-rubygem-http_connection
missing: ror40-rubygem-i18n
missing: ror40-rubygem-introspection
missing: ror40-rubygem-jbuilder
missing: ror40-rubygem-jquery-rails
missing: ror40-rubygem-mail
missing: ror40-rubygem-metaclass
missing: ror40-rubygem-mime-types
missing: ror40-rubygem-mocha
missing: ror40-rubygem-mongo
missing: ror40-rubygem-multi_json
missing: ror40-rubygem-net-http-persistent
missing: ror40-rubygem-polyglot
missing: ror40-rubygem-rack
missing: ror40-rubygem-rack-cache
missing: ror40-rubygem-rack-protection
missing: ror40-rubygem-rack-test
missing: ror40-rubygem-rails
missing: ror40-rubygem-rails-observers
missing: ror40-rubygem-railties
missing: ror40-rubygem-ref
missing: ror40-rubygem-rspec
missing: ror40-rubygem-rspec-core
missing: ror40-rubygem-rspec-expectations
missing: ror40-rubygem-rspec-mocks
missing: ror40-rubygem-sass
missing: ror40-rubygem-sass-rails
missing: ror40-rubygem-sdoc
missing: ror40-rubygem-sinatra
missing: ror40-rubygem-sprockets
missing: ror40-rubygem-sprockets-rails
missing: ror40-rubygem-sqlite3
missing: ror40-rubygem-test_declarative
missing: ror40-rubygem-therubyracer
missing: ror40-rubygem-thor
missing: ror40-rubygem-thread_safe
missing: ror40-rubygem-tilt
missing: ror40-rubygem-treetop
missing: ror40-rubygem-turbolinks
missing: ror40-rubygem-tzinfo
missing: ror40-rubygem-uglifier
missing: ruby193-ruby
missing: ruby193-rubygem-actionmailer
missing: ruby193-rubygem-actionpack
missing: ruby193-rubygem-activemodel
missing: ruby193-rubygem-activerecord
missing: ruby193-rubygem-activeresource
missing: ruby193-rubygem-activesupport
missing: ruby193-rubygem-arel
missing: ruby193-rubygem-bacon
missing: ruby193-rubygem-bcrypt-ruby
missing: ruby193-rubygem-bson
missing: ruby193-rubygem-bson_ext
missing: ruby193-rubygem-builder
missing: ruby193-rubygem-bundler
missing: ruby193-rubygem-coffee-rails
missing: ruby193-rubygem-coffee-script
missing: ruby193-rubygem-coffee-script-source
missing: ruby193-rubygem-diff-lcs
missing: ruby193-rubygem-erubis
missing: ruby193-rubygem-execjs
missing: ruby193-rubygem-fakeweb
missing: ruby193-rubygem-hike
missing: ruby193-rubygem-http_connection
missing: ruby193-rubygem-i18n
missing: ruby193-rubygem-introspection
missing: ruby193-rubygem-journey
missing: ruby193-rubygem-jquery-rails
missing: ruby193-rubygem-mail
missing: ruby193-rubygem-metaclass
missing: ruby193-rubygem-mime-types
missing: ruby193-rubygem-mocha
missing: ruby193-rubygem-mongo
missing: ruby193-rubygem-multi_json
missing: ruby193-rubygem-net-http-persistent
missing: ruby193-rubygem-passenger40
missing: ruby193-rubygem-polyglot
missing: ruby193-rubygem-rack
missing: ruby193-rubygem-rack-cache
missing: ruby193-rubygem-rack-protection
missing: ruby193-rubygem-rack-ssl
missing: ruby193-rubygem-rack-test
missing: ruby193-rubygem-rails
missing: ruby193-rubygem-railties
missing: ruby193-rubygem-ref
missing: ruby193-rubygem-rspec
missing: ruby193-rubygem-rspec-core
missing: ruby193-rubygem-rspec-expectations
missing: ruby193-rubygem-rspec-mocks
missing: ruby193-rubygem-sass
missing: ruby193-rubygem-sass-rails
missing: ruby193-rubygem-sinatra
missing: ruby193-rubygem-sprockets
missing: ruby193-rubygem-sqlite3
missing: ruby193-rubygem-test_declarative
missing: ruby193-rubygem-therubyracer
missing: ruby193-rubygem-thor
missing: ruby193-rubygem-tilt
missing: ruby193-rubygem-treetop
missing: ruby193-rubygem-tzinfo
missing: ruby193-rubygem-uglifier
missing: ruby193-rubygem-ZenTest
missing: ruby200-ruby
missing: thermostat1-apache-commons-fileupload
missing: thermostat1-google-gson
missing: thermostat1-jcommon
missing: thermostat1-jfreechart
missing: thermostat1-jline2
missing: thermostat1-lucene
missing: thermostat1-netty
missing: thermostat1-thermostat
missing: v8314-gyp
missing: v8314-v8
missing: virtio-win
missing: zhongyi-song-fonts
END
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
