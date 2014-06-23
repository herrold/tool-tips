Tools used in making the ClefOS distribution, post drop of
the upstream's cutover 'git' form, and deprecation of SRPMs 
as a portible GPL source availability obligation compliance 
distribution format

Note: we use a custom approach to ./SOURCES/ wherein we add also
the package name into the path (refactoring this out is in process):

    [herrold@centos-6 ~]$ grep source  ~/.rpmmacros
    %_sourcedir     %{_topdir}/SOURCES/%{name}

Mailing lists at:
    http://lists.clefos.org/mailman/listinfo

Why?:
    https://bugzilla.redhat.com/show_bug.cgi?id=1109401#c13

The SRPMs run:

    [herrold@centos-6 centos-7-archive]$ du -sLh SRPMS/
    5.8G    SRPMS/

-- Russ herrold

reports to: info@owlriver.com

