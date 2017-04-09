# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
p zombie_apocalypse_supplies.join("*")
# ----
# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
sorted_array = []
zombie_apocalypse_supplies.each do |value|
  index = zombie_apocalypse_supplies.index(value)
  position_index = 0
  new_index = 0
  # Loop through array to count how many words come before it to find it's new index
  while position_index < zombie_apocalypse_supplies.size
    # If the value of the current position in the array is less than value, add 1 to new index
    if value.downcase > zombie_apocalypse_supplies[position_index].downcase
     p value + " " + zombie_apocalypse_supplies[position_index]
     new_index += 1
    end
    position_index += 1
  end
  sorted_array[new_index] = value
end
zombie_apocalypse_supplies = sorted_array

p zombie_apocalypse_supplies
# ----
# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
  def in_list(item, array)
    index = 0
    in_array = nil
    while index < array.size
      break if item.downcase == array[index].downcase
      index += 1
    end
    if index == array.size
      return false
    else
      return true
    end
  end
# ----
# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
zombie_apocalypse_supplies.each do |value|
  index = zombie_apocalypse_supplies.index(value)
  if zombie_apocalypse_supplies.size > 5
    zombie_apocalypse_supplies.delete_at(index)
  end 
end
# ----
# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
# ----
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
combined_supplies = zombie_apocalypse_supplies.concat(other_survivor_supplies).uniq
# ----
# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
extinct_animals.each do |animal, extinct_year|
  print "#{animal}-#{extinct_year}*"
end 
# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
extinct_before_2000 = {}
extinct_animals.each do |animal, extinct_year|
  if(value<2000)
    extinct_before_2000[animal] = extinct_year
  end
end 
# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----
extinct_animals.map do |animal, extinct_year|
   extinct_animals[animal] = extinct_year - 3
end 
# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----
def in_extinct_animals(animal, extinct_animals)
  in_extinct = false
  extinct_animals.each do |extinct_animal, extinct_year|
    if(extinct_animal.downcase == animal.downcase)
      in_extinct = true
    end
  end
  return in_extinct
end
puts in_extinct_animals("Andean Cat", extinct_animals)
puts in_extinct_animals("Dodo", extinct_animals)
puts in_extinct_animals("Saiga Antelope", extinct_animals)
# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
extinct_animals.select{|extinct_animal, extinct_year| 
  extinct_animal == "Passenger Pigeon"
}.flatten

