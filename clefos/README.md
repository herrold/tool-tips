Tools used in making the ClefOS distribution, post drop of
the upstream's cutover 'git' form, and deprecation of SRPMs 
as a portible GPL source availability obligation compliance 
distribution format

Note: we use a custom approach to ./SOURCES/ wherein we add also
the package name into the path:

    [herrold@centos-6 ~]$ grep source  ~/.rpmmacros
    %_sourcedir     %{_topdir}/SOURCES/%{name}


-- Russ herrold
reports to: info@owlriver.com

