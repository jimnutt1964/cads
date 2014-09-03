<?php
mysql_free_result($result);
mysql_close();

if ($vardebug) {echo "finish<br>";}
?>
<script>
var Tynt=Tynt||[];Tynt.push("biQTSuyxur4kGJadbi-bpO");Tynt.i={"ap":"Read more:"};
$(document).ready(function() {
  $("#round1form, #round1form-low")
    .submit(function() {
      var i = $(this).find("input[data-suggest]");
      i.val() == i.data("suggest") && i.val("");
    })
    .find("input[data-suggest]")
      .blur(function() {
        var i = $(this);
        i.val() == "" && i.val(i.data("suggest")).addClass("suggest");
      })
      .focus(function() {
        var i = $(this).removeClass("suggest");
        i.val() == i.data("suggest") && i.val("");
      })
      .each(function(j, elem) {
        var i = $(elem);
        (i.val() == "" || i.val() == i.data("suggest")) && i.val(i.data("suggest")).addClass("suggest");
      });
  if(document.location.protocol=="http:") {
    $.getScript("http://tcr.tynt.com/ti.js");
  }
});
</script>


</body>
</html>
