puts "How many employees will be processed?"
employees = gets.to_i
time = Time.new
year = time.strftime("%Y").to_i # gets the current year to find discrepancy between year of birth(yob) and age
until employees == 0
  puts  "What is your name?"
  username = gets.chomp
  puts  "Nice to meet you, #{username}. How old are you?"
  age = gets.to_i
  puts "#{age} huh? What year were you born, #{username}?"
  yob = gets.to_i #yob - year of birth
  puts "Hmm, born in #{yob}. Our company cafeteria serves garlic bread. Should we order some for you?"
  bread = gets.chomp
  puts "Would you like to enroll in the company’s health insurance?"
  insurance = gets.chomp
  results = "Results Inconclusive"
  if (year - yob <= age + 1) && bread == "yes" #finding the discrepancy between yob and age.
    results = "Probably not a vampire"
  end
  if !(year - yob <= age + 1) && bread == "no"
    results = "Probably a vampire"
  end
  if !(year - yob <= age + 1) && bread == "no" && insurance == "no"
    results = "Almost certainly a vampire"
  end
  if username == "Drake Cula" ||  "Tu Fang"
    results = "Definitely a vampire."
  end
  puts "Name your allergies, one at a time. Type done when finished"
  allergies = gets.chomp
  while allergies != "done"
    if allergies == "sunshine"
      results = "Probably a vampire"
      break
    end
    puts "Name your allergies, one at a time. Type done when finished"
    allergies = gets.chomp
  end
  puts "#{username} - " + results
  employees = employees - 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

