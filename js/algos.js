// Function that returns the longest string from an array
// function should take 1 parameter
function longestString(arr){
  // create a variable called longest string and store nothing in it
  var longest_string = "";
  // create a loop that iterates through each element of the array
  arr.forEach(function(element){
    //compare the length of the current position element with the length of the variable "longest_string"
    if( element.length > longest_string.length ){
      // if the current position element is longer, store value as new value of variable "longest_string"
      longest_string = element;
    }
  });
  //return longest string
  return longest_string;
}

// Function that searches two arrays and sees if the same key-pair appears in both arrays
// function should take 2 parameters
function arrayMatch(array1, array2){
// create the variable "match", setting its default value to false
var match = false;
// iterate through each element of array 1 
array.forEach(function(value, key){
// create a conditional to check if the same key is in both arrays
  if(array2[key]){
  // if so, check to see if the value for both keys is the same
    if(array2[key] == array1[key]){
    // if so, change value of "match" to true
      match = true;
    }
  }
});
// return variable "match"
return match;
}


console.log(longestString(["long phrase","longest phrase","longer phrase"]));
console.log(longestString(["steve","dan","jasper"]));
console.log(longestString(["michael","jordy","dominique"]));
