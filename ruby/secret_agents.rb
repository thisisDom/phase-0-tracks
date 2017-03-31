
#Define two methods "encrypt" and "decrypt"
#Define encrypt method with one string parameter, the word we want to encrypt
def encrypt(word)
  index = 0
  while index < word.length
    #Add conditional statement to check if current position in word isn't a space.
    #If there is a space, move on to next letter
    if(word[index] != " ")
        word[index] = word[index].next
    end
    index += 1
  end
  return word
end
#Define decrypt method with one string parameter, the word we want to encrypt
def decrypt(word)
  #Assign alphabet to varible
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < word.length
    #Add conditional statement to check if current position in word isn't a space.
    #If there is a space, move on to next letter
    if(word[index] != " ")
      #Find position in the alphabet of the current letter and subtract -1 to it to get index of letter before it
      new_index = alphabet.index(word[index])
      word[index] = alphabet[(new_index - 1 )]
    end
    index += 1
  end
  return word
end