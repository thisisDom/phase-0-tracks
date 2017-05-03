
// make a function that hides the chameleon
// add event listeners for blend button
var chameleon = document.getElementById("lizard-photo");
chameleon.style.visibility = "visible";

var blend = document.getElementById("blend");
var reveal = document.getElementById("reveal");

function blendIt(){
  // select the chameleon photo and store it as a variable
  console.log("blending...");
 // change style to not visibility
  chameleon.style.visibility = "hidden";
  // hide blend button
  blend.style.display = "none";
  // show reveal button
  reveal.style.display = "inline";
}
// a function that reveals the chameleon

function revealIt(){
  // select the chameleon photo and store it as a variable
  console.log("revealing...");
  // change style to visibility
  chameleon.style.visibility = "visible";
  // hide reveal button
  reveal.style.display = "none";
  // show blend button
  blend.style.display = "inline";
}

blend.addEventListener("click", blendIt);
reveal.addEventListener("click", revealIt);
revealIt();