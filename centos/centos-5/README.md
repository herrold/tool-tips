Responding to the CentOS 5 turndown

Yes, yes, I know CentOS 5 is 'end of life' and flying monkeys will 
appear to torment me ...

But some systems, living in protected environments, such as an internal
production system may not be worth the effort, expense, or lost opportunity
cost of migrating, and re-writing code to use later versions


The people presently running CentOS seem to be tone-deaf to the fact that
people may have what they, and those to whom those sysadmins report, consider
to be good and sufficient reasons to continue to run, and to install
additional packages on a CentOS 5 installation.  See contra: The EPEL group
migrated their content to lesser priority storage [mirroring no longer needs
to be refreshed, and so forth], AND updated the files living in:

    /etc/yum.repos.d/

to point to that new archive location.

The older CentOS 5 content is presently and assumedly will remain at:

    http://vault.centos.org/5.11/

and related prior 'point' versions.

To USE such for a existing installation, only a couple of steps are needed:

* on the unit, 

    ```
    cd /etc/yum.repos.d/
    mkdir attic
    mv CentOS* attic
    mv attic/CentOS-Vault.repo . 
    ```

* using a favorite editor, add a stanza by copying the "[C5.10-base]" and 
related stanzas, down to and including "[C5.10-centosplus]" one, to the top 
of the file.  Amend that new set of stanzas to reflect: 

    5.11 

* enable the repositories:

    ```
    sed -i -e 's@enabled=0@enabled=1@g'  CentOS-Vault.repo
    ```

*  clean out any stale 'yum' cached matter:

    ```
    yum clean all
    ```

And one is 'back in business' with a working installation
