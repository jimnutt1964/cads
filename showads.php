<?php
include("header.php");
?>
<body class="cat">
<?php
include("mast.php");
include("nav.php");
?>
<div id=results>

<?php
if ($vardebug) {echo "Start<br>";}

$CatID = 0;
$Pattern = '';

// Check to see if we were passed a Category
if (isset($_REQUEST['CatID'])){
	$CatID = $_REQUEST['CatID'];
	if ($vardebug) {echo "CatID : $CatID<br>";}
	}


// check to see if we are passed keywords, if so we are doing a search
if (isset($_REQUEST['keywords'])){
	$Pattern = $_REQUEST['keywords'];
	if ($vardebug) {echo "Pattern : $Pattern<br>\n";}
	//Now remove any html tags
	$Pattern = STRIP_TAGS($Pattern);
	if ($vardebug) {echo "Tags Stripped : $Pattern<br>\n";}
	// escape the $Pattern String
	$Pattern = addslashes($Pattern);
	if ($vardebug) {echo "Escaped Pattern : $Pattern<br>\n";}
	}

//if we were passed keywords then we will run a search
if ($Pattern != ''){
	//run the search query
	if ($vardebug) {echo "Run the Search Query<br>";}
	$result = mysql_query("call SearchAds('$Pattern',$CatID)")
		or die (mysql_error());

}
else {
	//no keywords so either show all or query by category
	if ($CatID == 0){
		//run the query to get all the ads
		if ($vardebug) {echo "Run the Query to get all ads<br>";}
		$result = mysql_query("call GetAds()")
			or die (mysql_error());
		}
	else {
		//run the query to get the ads in the category
		if ($vardebug) {echo "Run the Query to filter by Category<br>";}
		$result = mysql_query("call GetAdsbyCategory($CatID)")
			or die (mysql_error());
		}
}
if ($vardebug) {echo "Query Ran Fine<br>";}

if ($vardebug){
	//get the field names

	$numcols = mysql_num_fields($result);
	echo "Number of columns : $numcols<br>";

	//loop through the field names
	for ($i=0; $i<$numcols; ++$i){
		echo "<div class=tabhead>" . mysql_field_name($result, $i) . "</div>";
		}
	}		

$numrows = mysql_num_rows($result);

if ($numrows>0){
	// get the data
	while ($row = mysql_fetch_array($result)){
		$AdURL = "showad.php?AdsID=" . $row["AdsID"];
		echo "<div class=resultitem style=''>\n";
		echo "<a href='" . $AdURL . "'>\n";
		echo "<img src='" . $row["Path"] . $row["Name"] . "' onerror=\"if(!this.src.match(/_404.gif$/))this.src='/_/image_404.gif';\" style='float:right;border:0;padding:0;margin:0;width:80px;height:60px;' alt=''>\n";
		echo "</a>";
		echo 	"<div style='padding:4px 88px 0 8px;'>\n";
		echo 	"<a href='" . $AdURL . "'>" . $row["Title"] . "</a><br>\n";
		echo 	(STRLEN($row["Description"]<100) ? SUBSTR($row["Description"],0,100). "..." : $row["Description"]) . "\n";
		echo 	"</div>\n";
		echo "</div>\n";
		}
	echo "<br><br><br><br><br><br><br><br><br><br><br><br><br>\n";	
	}
else {
	echo "<div class=resultitem style=''>\n";
	echo 	"<div style='padding:4px 88px 0 8px;'>\n";
	echo 	"There are no listings for the selected category";
	echo 	"</div>\n";
	echo "</div>\n";	
	echo "<br><br><br><br><br><br><br><br><br><br><br><br><br>\n";

}

?>
</div>

<?php
include("footnav.php");
include("footer.php");
?>
