# Alias manager 
# Takes a person's first and last name and creates an alias for them
# Needs to Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
# and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. 
# So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

# Create a method for creating alias, taking full name as an argument
def get_alias(full_name)
  # Need to split first name and last name into separate arrays
  names = full_name.split(" ")
  until names.size == 2
    puts "Please, enter your first and last name."
    input = gets.chomp
    until input != " " && input
      puts "Please, enter your first and last name."
      input = gets.chomp
    end
    full_name = input.downcase
    # Need to split first name and last name into separate arrays
    names = full_name.split(" ")
  end
  first_name = names[0].split("")
  last_name = names[1].split("")

  # Make variables for the non-vowels and vowels
  consonants  ="bcdfghjklmnpqrstvwxyz"
  vowels = "aeiou"

  # Map array for each name

  first_name.map!.with_index { |x, i|
  # Determine if the letter is a vowel or consonant
    new_letter = nil
    if vowels.include?(x)
      index_in_vowels = vowels.index(x)
      new_index = index_in_vowels+1
      #need to go to beginning of vowels array if at last index
      if new_index == vowels.size
        new_index = 0
      end  
      new_letter = vowels[new_index]
    else
      index_in_consonants = consonants.index(x)
      new_index = index_in_consonants+1
      #need to go to beginning of consonants array if at last index
      if new_index == consonants.size
        new_index = 0
      end 
      new_letter = consonants[new_index]
    end
  }

  last_name.map!.with_index { |x, i|
  # Determine if the letter is a vowel or consonant
    new_letter = nil
    if vowels.include?(x)
      index_in_vowels = vowels.index(x)
      new_index = index_in_vowels+1
      #need to go to beginning of vowels array if at last index
      if new_index == vowels.size
        new_index = 0
      end  
      new_letter = vowels[new_index]
    else
      index_in_consonants = consonants.index(x)
      new_index = index_in_consonants+1
      #need to go to beginning of consonants array if at last index
      if new_index == consonants.size
        new_index = 0
      end 
      new_letter = consonants[new_index]
    end
  }

  # Flip the order of the name 
  names[0] = last_name.join("").capitalize
  names[1] = first_name.join("").capitalize
  # Make alias name
  
  return names.join(" ")
end
puts "We are going to give you your alias, but we need some information first."
puts "What is your name?"
input = gets.chomp
until input != " " && input
  puts "Please, enter your first and last name."
  input = gets.chomp
end

new_alias = get_alias(input.downcase)
puts "Your new alias name below"
puts new_alias
# Ask if user want to reroll alias if they aren't satisfied with the produced one
puts "Want to reroll alias? Type \"quit\" if you are satisfied with your alias"
response = gets.chomp.downcase

# Create a loop to keep rerolling alias
until response == 'quit'
  new_alias = get_alias(new_alias.downcase)
  puts "Your new alias name below"
  puts new_alias
  puts "Want to reroll alias? Type \"quit\" if you are satisfied with your alias"
  response = gets.chomp.downcase
end



