
A sandbox, for training purposes

------------

setting up a fork rubric

 1508  May 02 14:37 cd
 1509  May 02 14:37 cd vcs
 1510  May 02 14:37 cd git
	mkdir acme-rph
#		that is we are forking 'acme' upstream, and use my initials
#		for 'seeing' the fork and its parent more easily
	cd acme-rph
	git init
	git pull (upstream GH url)

------------

editting in a a fork 

use the GH UI to make a from from a different 'master' at GH

 1508  May 02 14:37 cd
 1509  May 02 14:37 cd vcs
 1510  May 02 14:37 cd git
 1511  May 02 14:37 cd rph-shell-tools/
 1512  May 02 14:37 ls
 1513  May 02 14:37 mkdir sandbox
 1514  May 02 14:38 cd sandbox
 1516  May 02 14:38 joe README.md
 1517  May 02 14:38 cd ..
 1519  May 02 14:38 git add sandbox sandbox/README.md
 1520  May 02 14:38 git commit -m 'initial'
 1521  May 02 14:38 git pull
 1522  May 02 14:38 git push

then use the GH UI to request a pull

---------------

