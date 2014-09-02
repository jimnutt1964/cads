<?php
include("adheader.php");
?>
<body class="ad">
<?php
include("mast.php");

$AdsID = $_REQUEST['AdsID'];

if ($vardebug) {echo "AdsID: ". $AdsID;}

if ($vardebug) {echo "Start<br>";}

$sql = "Call GetAd($AdsID)" . "\n";

if ($vardebug) {echo "sql: ". $sql;}

//run the query
$result = mysql_query($sql)
	or die (mysql_error());
?>
<div class=clearer style='margin:10px 0px 10px 0px;border-bottom:2px solid #293653;'>
</div>
<div class="crumb"><span style="font-weight:bold;">This ad is in: </span><a href="http://www.classifiedads.com/bellevue-7906_real_estate-18.html" class="tattle">Seattle: Eastside - Bellevue Real Estate</a>
</div>
<div class="abuse"><a rel=nofollow href='/report.php?aid=10707783&amp;type=abuse' class=tattle>Flag abuse or spam?</a>
</div>

<div class="itemmain">
	<div class="innerad">
		<div class="itemhi respond">
			<a rel=nofollow href='/respond.php?10707783'><img src='images/respond_to_this_ad.png' style='float:left;' alt=''><span style='font-weight:bold;'>Respond to this ad</span></a>
		</div>
		<div class="itemhi friend"><span class="st_email"></span><span class="st_facebook"></span><span class="st_twitter"></span><span class="st_sharethis" displayText="Share this ad"></span>
		</div>
		<div class="facebook" style="float:right;width:80px;"><iframe src="http://www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.classifiedads.com%2Freal_estate-ad10707783.htm&amp;layout=button_count&amp;show_faces=false&amp;width=200&amp;action=like&amp;font=verdana&amp;colorscheme=light" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
		</div>
		<div class="facebook" style="float:right;"><g:plusone size="medium"></g:plusone>
		</div>
		<div class="clearer">
		</div>
		<div class="mooptions"><a rel=nofollow href="mailto:?subject=Real Estate: Sammamish Rambler&amp;body=Check out what I found on Classified Ads:%0Ahttp://www.classifiedads.com/real_estate-ad10707783.htm%0A%0A">Send to a friend</a>
		</div>

	<h1 class="itemtitle">
	<?php
		// get the data
		while ($row = mysql_fetch_array($result)){
			echo $row["Title"] . " - Price: $" . number_format($row["Price"],2,".",",") ."\n";

	?>
	</h1>
	<div style='text-align:center;line-height:0;font-size:10px;color:#888;margin:0 0 10px 0;padding:0;'>


	<img src='<?php echo $row["Path"] . $row["Name"]?>' width=160 height=120 alt="<?php echo $row["Title"] ?>" class=thumbimg
                onclick='viewimage("http://images2.classifiedads.com/large/10707783_TKjKAg.jpg")' style='cursor:pointer;'>
		<div style='padding:5px 0 10px 0;'>(Click an image for original size)
		</div>
	</div>
  <div style='float:left;width:220px;margin:0 20px 40px 0;overflow:auto;'>
   <table border=0 cellpadding=0 cellspacing=0 class=ohhai>

    <tr><th>Ad #</th><td><?php echo $row["AdsID"] ?></td></tr>
    <tr><th>Contact</th><td><?php echo $row["ContactName"] ?></td></tr>
    <tr><th>Phone</th><td><?php echo $row["ContactPhone"] ?></td></tr>
    <tr><th>City</th><td><?php echo $row["ContactCity"] ?></td></tr>
    <tr><th>Zip</th><td><?php echo $row["ContactZip"] ?></td></tr>
    <tr><th>Created</th><td style='white-space:nowrap;'><?php echo $row["DatePosted"] ?></td></tr>
    <tr><th>Updated</th><td style='white-space:nowrap;'><?php echo $row["LastUpdated"] ?></td></tr>
    <tr><th>Expires</th><td style='white-space:nowrap;'><?php echo $row["ExpirationDate"] ?></td></tr>
   </table>
  </div>
	<div class=userhtml><?php echo $row["Description"] ?>
	</div>
<?php
}
?>

  <div class=clearer></div>
  <form id=respondform method=post action="/respond.php">
  <div id=respondformdiv class=respondinline>
   <h1>Respond to this ad</h1>

   <br>
   <input type=hidden name=aid value=10707783>
   <input type=hidden name=token value=7241fdfe>
   <table class=dumbform>
    <tr><td>Your&#160;name</td><td><input class=inurfield type=text name=name value="" size=35></td></tr>
    <tr><td>Your&#160;e-mail</td><td><input class=inurfield type=text name=email value="" size=35></td></tr>
    <tr><td valign=top>Your&#160;message</td><td><textarea class=inurfield name=message cols=80 rows=10></textarea></td></tr>

    <tr><td></td><td><input type=image src='/_/button_send_message.png' value='Send message' style='float:right;'><img src='/_/0.gif' alt='' width=120 height=1></td></tr>
   </table>
  </div>
  </form>

<br>
<?php
include("footer.php");
?>
