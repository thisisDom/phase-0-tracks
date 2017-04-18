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
    // get the keys from both arrays
  var array1_keys = Object.keys(array1);
  var array1_values = Object.values(array1);
  var array2_keys = Object.keys(array2);
  var array2_values = Object.values(array2);
  // iterate through each element of array 1 
  for( index = 0; index < array1_keys.length; index++ ){
  // create a conditional to check if the same key is in both array;
      var key_match = array2_keys.indexOf(array1_keys[index]);
      if( key_match !== -1 ){
        key = array1_keys[index]
        if(array1_values[index] == array2_values[index]){
        // if so, change value of "match" to true
            match = true;
      }
    }
  }
  // return variable "match"
  return match;
}

// Function that creates an Array of a random length and fills it with string between 1 letter and 10 letters
// function should take 1 parameter, the length of the array
function randomArray(integer){
  // create a variable "alphabet", a string containing each letter of the alphabet
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  // create a variable "new_array", with a length of the parameter
  var random_array = new Array(integer);
  // create a loop that iterates through each value of array
  for( index = 0; index < array.length; index++ ){
    // create a variable "new_word", with the value of an empty string ("");
    var new_word = ""
    // create a variable "word_length" that randomly select a number between 1-10
    var word_length = Math.floor(Math.random() * (10 - 1)) + 1;
    // create a loop that loops the value of world length times
    for ( letter = 0; letter < word_length; letter++ ){}
      // create a variable "alphabet_index" that stores a random number between 0 and the length of the alphabet - 1(25)
      letter_index = Math.floor(Math.random() * 25);
      // select the random index of alphabet and add it to the end of new_word
      new_word += alphabet[letter_index];3
    // store new word in the new_array
    }
    random_array[index] = new_word;
  }
  // return new_array 
  return random_array;
}

console.log(longestString(["long phrase","longest phrase","longer phrase"]));
console.log(longestString(["steve","dan","jasper"]));
console.log(longestString(["michael","jordy","dominique"]));


var array1 = {name: "dou", age: 54, junk: '2'};
var array2 = {name: "doug", age: 534, junk: 2}
arrayMatch(array1, array2);