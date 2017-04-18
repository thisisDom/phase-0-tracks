// Function that returns the longest string from an array
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
longestString(["long phrase","longest phrase","longer phrase"]);