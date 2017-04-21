var horse_colors = ["blue","red","green","yellow"];
var horse_names = ["Black Beauty", "Seabiscuit", "Secretariat", "Curlin"];

horse_colors.push("teal");
horse_names.push("Ruffian");

console.log(horse_colors);
console.log(horse_names);

// conditional to check if both arrays are the same length
if(horse_colors.length == horse_names.length){
  //create an empty object
  var horses = {};
  //create a loop that iterates through both arrays
  for( i = 0; i < horse_colors.length; i++){
    horses[horse_names[i]] = horse_colors[i];
  }
  console.log(horses);
}