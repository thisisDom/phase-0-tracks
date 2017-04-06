#yield
def greetings (x,y)
  x.upcase!
  y.upcase!
  yield(x,y)
end

greetings("bob","jo") { |name1, name2| puts "Great to see you, #{name1} and #{name2}!"}

#Release 1
#.each
nfl_mascots = {
  san_francisco: "49ers",
  seattle: "seahawks",
  chicago: "bears",
  jacksonville: "jaguars"
}
p nfl_mascots
nfl_mascots.each {|city, mascot| puts "The #{mascot}s play in #{city}."}

#.map
shapes = ["circle","square","rectangle","triangle","rhombus"]
p shapes
shapes.map! {"panda"}
p shapes

#Release 2
array = [1,2,3,4,5,6,7,8,9,10]
hash = {
  a: "aa",
  b: "bb",
  c: "cc",
  d: "dd",
  e: "ee",
  f: "ff"
}

#1 Array
array.delete_if { |item| item >= 5}

#1 Hash
hash.delete_if { |key,val| key == :a}

#2 Array
array.keep_if { |item| item <= 5}
#2 Hash
hash.keep_if { |key, val| key == :a && val == "aa"}

#3 Array
a = array.select { |item| item > 5}
p a
p array
#3 Hash
a = hash.select { |key, val| key == :a}
p hash
p a

#4 Array
a = array.reject { |item| item % 3 == 0}
p a
p array
#4 Hash
a = hash.reject { |key, val| key == :a}
p a
p hash
