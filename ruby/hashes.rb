# Program for Interior Designer Client Info
client_info = Hash.new
# Get client's name (string)
puts "What is your name?"
input = gets.chomp
until input != "" && input
  puts "Please, enter your name."
  input = gets.chomp
end
client_info[:name] = input.capitalize
# Get client's age (integer)
puts "What is your age?"
input = gets.chomp.to_i
until input > 0
  puts "Please, enter your age."
  input = gets.chomp.to_i
end
client_info[:age] = input
# Get client's number of children (integer)
puts "Do you have any children?(Enter either Yes or No?)"
input = gets.chomp.downcase
until input == "yes"|| input == "no"
  puts "Do you have any children?(Enter either Yes or No?)"
  input = gets.chomp.downcase
end
if input == "yes"
  puts "How many children do you have?"
  input = gets.to_i
  until input > 0 && input
    puts "How many children do you have?"
    input = gets.to_i
  end
else
  input = 0
end
client_info[:no_of_children] = input
# Get client's decor theme (string)
puts "What's your favorite decor theme? Put \"none\" if you don't have one."
input = gets.chomp.downcase
until input != ""
  puts "What's your favorite decor theme?"
  input = gets.chomp.downcase
end
client_info[:favorite_decor_theme] = input.capitalize
# Get client's favorite color (string)
puts "What's your favorite color? Put \"none\" if you don't have one."
input = gets.chomp.downcase
until input != ""
  puts "What's your favorite color?"
  input = gets.chomp.downcase
end
client_info[:favorite_color] = input.capitalize
# Find out if they live with a significant other?
puts "Do you live with a significant other?(Enter either Yes or No?)"
input = gets.chomp.downcase
until input == "yes"|| input == "no"
  puts "Do you live with a significant other?(Enter either Yes or No?)"
  input = gets.chomp.downcase
end
if input == "yes" 
  input = true
else
  input = false
end
client_info[:lives_with_so] = input
# Get City of Residence?
puts "What's is your city of residence?"
input = gets.chomp.downcase
until input != ""
  puts "Please, enter your city of residencee"
  input = gets.chomp
end
client_info[:city_of_residence] = input.capitalize
# Make sure the information is correct
puts "Let's make sure the information we gather is correct"
puts "Name: #{client_info[:name]}"
puts "Age: #{client_info[:age]}"
puts "No of children: #{client_info[:no_of_children]}"
puts "Lives with SO?: #{client_info[:lives_with_so]}"
puts "City of Residence: #{client_info[:city_of_residence]}"
puts "Favorite Decor Theme: #{client_info[:favorite_decor_theme]}"
puts "Favorite Color: #{client_info[:favorite_color]}"
puts "Is all information correct?"
correct_info = gets.chomp.downcase
until correct_info == "yes"|| correct_info == "no"
  puts "Is all information correct?"
  correct_info = gets.chomp.downcase
end
if correct_info == "no"
  puts "What would you like to change?"
  correct_info = gets.chomp.downcase
  until correct_info != "" && correct_info
    puts "What would you like to change?"
    correct_info = gets.chomp
  end
  key = correct_info.split(" ").join("_").to_sym
  puts "What do you want to correct the information to"
  input = gets.chomp
  until input != "" && input
    puts "What would you like to change?"
    input = gets.chomp
  end
  client_info[key] = input.to_s.capitalize
end
puts "Here is the information we have for you"
puts "Name: #{client_info[:name]}"
puts "Age: #{client_info[:age]}"
puts "No of children: #{client_info[:no_of_children]}"
puts "Lives with SO?: #{client_info[:lives_with_so]}"
puts "City of Residence: #{client_info[:city_of_residence]}"
puts "Favorite Decor Theme: #{client_info[:favorite_decor_theme]}"
puts "Favorite Color: #{client_info[:favorite_color]}"