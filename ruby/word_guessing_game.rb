# Word guessing game(Hangman)
# Create a class Hangman
class Hangman
  # Variables needed outside class
  def initialize
    display_puzzle_word
    @guessed_letter = []
    @guess_limit = @guess_word.length
    @word = "fish"

    @word.each do
      display_puzzle_word << "_ "
    end

    puts display_puzzle_word
    puts "#{@guess_limit} guesses left."
  end
  # Variables to set on initial creation of instance
    # Guesses left - should we the length of the word
    # The Word to guess(Should be an array)
    # Letters Guessed
  # Create a method for guessing a letter
    # Gets user input
  def guess_letter(letter)
    # Make sure letter hasn't already been guessed
    # Compare letter to word
    # Store letter as a guessed letter
  end
  # Create a method that returns the state of the word
  def word_status

  end
    # Use underscores to indicate letters missing
  # Create a method for winning game
  # Create a method for losing game  
end  

game = Hangman.new
puts "Please guess a letter."
input = gets.chomp
until input.length > 1
  "Please, guess a letter."
  input = gets.chomp
end
game.guess_letter(input)