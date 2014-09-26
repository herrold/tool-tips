#!/usr/bin/php -qc/etc
<?php
#
#	shuffle-stdin.php
#		$Id: shuffle-stdin.php,v 1.2 2014/09/26 15:55:39 herrold Exp herrold $
#
#	Copyright (c) 2010, 2014 Owl River Company
#	reports to: info@owlriver.com
#	XX all rights reserved
#	relicensed 2014 09 26 for GH release post COLUG meeting
#	License: GPLv3+
#
#	simple repeated cut shuffle, written and forgotten
#
$fp = fopen("php://stdin",'r');
$NONCE = fread($fp, 4096);
$NONCE = trim($NONCE);
# print $NONCE . "\n";
$RESULT="";
while (strlen($NONCE) > 0) {
  $slen = strlen($NONCE);
  $random = rand(0,($slen - 1));
#  print "strlen: $slen      random: $random \n";
#  print "RESULT: $RESULT    NONCE:  $NONCE \n\n";
#
#	pick a single character
  $RESULT = $RESULT . substr($NONCE,$random,1);
#
#	now get the next round with a deck cut at the pick point
  $WORK = "";
#	cut the deck RHS to left
  $WORK = substr($NONCE,($random + 1),$slen);
#	and then add LHS
  $NONCE = $WORK . substr($NONCE,0,$random);
  }
print $RESULT . "\n";
?>
