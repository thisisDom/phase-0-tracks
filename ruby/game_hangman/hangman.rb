# Word guessing game(Hangman)
# Create a class Hangman
class Hangman
  # Variables needed outside class
  attr_reader :game_status, :game_winner, :guess_word
  
  def initialize
  # Variables to set on initial creation of instance
    # Guesses left - should we the length of the word
    # The Word to guess(Should be an array)
    # Letters Guessed
    @game_dictionary = [
      "armadillo",
      "astronaut",
      "bathtub",
      "cat",
      "dragon",
      "dog",
      "door",
      "elephant",
      "fish",
      "giraffe",
      "gorilla",
      "griffin",
      "house",
      "lion",
      "parrot",
      "phone",
      "pony",
      "spacestation",
      "window",
      "wolf",
    ]
    @display_word = []
    @game_status = nil
    @game_winner = nil
    @guessed_letters = []

    @guess_word = @game_dictionary.sample
    @guess_limit = @guess_word.length
    @guess_word_letters = @guess_word.split("")

    @guess_word_letters.each do
      @display_word << "?"
    end
  end
  # Create a method to see if games over
  def display_word
    return @display_word.join
  end
  def game_over
    letters_left = 0
    @display_word.each do |letter|
      if letter == "?" 
        letters_left += 1
      end
    end
    if letters_left == 0
      @game_status = "done"
      @game_winner = true
    else
      if @guess_limit == 0
        @game_status = "done"
        @game_winner = false
      end
    end
    return false
  end
  # Create a method for guessing a letter
    # Gets user input
  def guess_letter(letter)
    # Make sure letter hasn't already been guessed
    if @guessed_letters.index(letter)
      return "Letter already guessed."
    end
    # Compare letter to word
    letter_count = 0
    letter_index = 0
    @guess_word_letters.each do |guess_word_letter|
      if guess_word_letter == letter
        #replace question marks in display word with correct letter
        @display_word[letter_index] = letter
        letter_count += 1
      end
      letter_index += 1
    end
    # Store letter as a guessed letter
    @guessed_letters << letter
    if letter_count == 0
      @guess_limit -= 1
    end
    return letter
  end
  def guesses_left
    guess = "guesses"
    if @guess_limit == 1
      guess = "guess"
    end
    return "#{@guess_limit} #{guess} left."
  end
  # Create a method that returns the state of the word
end  
game = Hangman.new
puts "It's time to play a game"
puts "Try to see if you can guess the letter I'm thinking of"
game.display_word
until game.game_status == "done"
  puts "Please guess a letter."
  input = gets.chomp
  until input.length == 1
    puts "Please, guess a letter."
    input = gets.chomp
  end
  game.guess_letter(input) 
  game_status = game.game_over
  if game_status != "done"
    puts game.display_word
    puts game.guesses_left
  end
end
if game.game_winner
  puts "Congratulation, you win"
  puts "Guess you outsmarted me (╯°□°）╯︵ ┻━┻"
else
  puts "Sorry, you lose"
  puts "The word was #{game.guess_word}"
  puts "Guess you aren't that smart (⌐■_■)"
end
exit
