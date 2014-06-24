Mentioned as an old CentOS binary RPM verify script: 

    http://vault.centos.org/4.9/build/distro/tmverifyrpms

What does 100% binary compatible mean to you?

What it meant to us was this.  A proper ldd link to all the right
libraries, the same file list, size within 10%.  It was pointed out that
binary compatible means the same shasum of the items, which we never
have had and can not possibly obtain in a staged build system where
there are separate build repos

 -- From: Johnny Hughes <johnny@centos.org>
    Reply-To: The CentOS developers mailing list. <centos-devel@centos.org>
    Date: Sat, 21 Jun 2014 17:48:22
    Subject: centos-d] CentOS 7 and release numbering