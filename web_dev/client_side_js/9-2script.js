
// make a function that hides the chameleon
// add event listeners for blend button
var chameleon = document.getElementById("lizard-photo");
chameleon.style.visibility = "visible";

var blend = document.getElementById("blend");

var reveal = document.getElementById("reveal");

function blendIt(){
  // select the chameleon photo and store it as a variable
  console.log("blending...");
  // check visibility of chameleon
  if(chameleon.style.visibility == "visible"){
   // change style to not visibility
    chameleon.style.visibility = "hidden";
  }
    // show reveal button
  blend.style.display = "none";
    // reveal button
  reveal.style.display = "none";
}
// a function that reveals the chameleon

function revealIt(){
  // select the chameleon photo and store it as a variable
  console.log("revealing...");
  // check visibility of chameleon
  if(chameleon.style.visibility == "hidden"){
    // change style to visible if chameleon in not visible
    chameleon.style.visibility = "visible";
  }
    // show blend button
  blend.style.display = "none";
    // hide reveal button
  reveal.style.display = "none";
}

blend.addEventListener("click", blendIt);
reveal.addEventListener("click", revealIt);