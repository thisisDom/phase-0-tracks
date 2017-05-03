$(function(){

  function blendIt(){
    // fade out the lizard photo
    $("#lizard-photo").animate({"opacity":0});
    // hide blend button
    $("#blend").css("display","none");
    // show reveal button
    $("#reveal").css("display","inline");
  }
  function revealIt(){
    // fade in the lizard photo
    $("#lizard-photo").animate({"opacity":1});
    // hide blend button
    $("#reveal").css("display","none");
    // show reveal button
    $("#blend").css("display","inline");
  }

  $("#blend").click(blendIt);
  $("#reveal").click(revealIt);
});