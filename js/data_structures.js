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

function Car(manufacturer, year, color, model){

  this.manufacturer = manufacturer;
  this.year = year;
  this.color = color;
  this.model = model;

  this.drive = function(){ console.log("It ignites!!"); };

}

console.log("Lets build a car");
var car1 = new Car("Honda", "2017", "Silver", "Accord");
console.log(car1);
car1.drive(); 
var car2 = new Car("Toyota", "2015", "Green", "Corolla");
console.log(car2);
car2.drive();