#!/bin/sh
#
#	cleanup.sh
#		$Id: cleanup.sh,v 1.2 2014/06/18 13:59:59 herrold Exp herrold $
#	License: GPLv2+
#	Reports to: info@owlriver.com
#
#	trivial shell oneliner to get rid of editor droppings at and 
#	below the CWD -- basically to enable tab completion, 
#	to save typing, and get it right every time
#	(we had to 'git rm' some cruft after an incautious 'git add' grabbed 
#	more than we anticipated or saw when we did the commit)
#	
find . -name "*~" -a -exec rm {} \;
#
