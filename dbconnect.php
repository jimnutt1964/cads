<?php

if ($vardebug) {echo "Set varDB Variable<br>";}

$varDB="ClassifiedAds";
if ($vardebug) {echo "varDB : $varDB<br>";}

mysql_connect('localhost','cads','cads')
	or die("<h3>Could not connect to MySQL</h3>\n");

mysql_select_db($varDB)
	or die("<h3>Could not select database $varDB</h3>\n" . mysql_error());
?>
