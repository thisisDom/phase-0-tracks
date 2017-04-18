// Pseudo Code for a reverse function

// Create a function that takes the word as a parameter
function reverseString(string){
  // find the string's length and store it in a variable
  var string_length = string.length;
  // create an blank array that is the same length as the string
  var reverse_array = new Array(string_length);
  // create a loop that iterates through each letter of the original string
    for( i = 0; i < string.length; i++){
    // create an equation that finds the new position of the letter in the blank array
      // should be the (strings length-1) - current index
      var current_index = string[i];
      var new_position = ( string_length - 1 ) - i;
    // store value in letter in new array using new index
      reverse_array[new_position] = string[i];
    }
  // join the new word array
  var returned_string = reverse_array.join("");
  // return the new array
  return returned_string;  
}
var x = 1;
if( x == 1){
  console.log(reverseString("hello"));
}

