#hamster's name (the clerk names any hamsters who come in without name tags, so all hamsters have names)
puts "Does the hamster have a name?"
response = gets.chomp
if (response == 'yes')
  puts "What is its name?"
  name = gets.chomp
else
  puts "Give the hamster a name"
  name = gets.chomp
end
#volume level from 1 to 10 (some people are light sleepers who won't adopt extra-squeaky hamsters)
volume = 0
until volume < 10 && volume >= 1
  puts "What is the hamster's volume level? On a scale of 1-10"
  volume = gets.to_i
end
#fur color
puts "What is the hamster's fur color?"
fur_color = gets.chomp
#whether the hamster is a good candidate for adoption
valid_input = false
until valid_input
  puts "Is the hamster a good candidate for adoption? Answer Yes or No"
  adoption = gets.chomp
  if (adoption == "yes" || adoption == "no")
    valid_input = true
  else 
    puts "Invalid input. Please select Yes or No."
  end
end
#estimated age
puts "What's the hamster's estimated age?"
age = gets.chomp
if !age 
  age = nil
else
  age.to_i
end
puts "Age = #{age}"