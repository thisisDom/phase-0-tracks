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