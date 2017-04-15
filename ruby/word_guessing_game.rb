# Word guessing game(Hangman)
# Create a class Hangman
class Hangman
  # Variables needed outside class
  def initialize
  # Variables to set on initial creation of instance
    # Guesses left - should we the length of the word
    # The Word to guess(Should be an array)
    # Letters Guessed
    @dictionary = [
      "fish",
      "pony",
      "giraffe",
      "lion",
      "dog",
      "wolf",
      "gorilla",
    ]
    @display_puzzle_word = []
    @guessed_letter = []
    @guess_word = @dictionary.sample
    @guess_limit = @guess_word.length
    @guess_word_letters = @guess_word.split("")

    @guess_word_letters.each do
      @display_puzzle_word << "?"
    end
    self.word_status
  end

  # Create a method to see if games over
  def game_over
    letters_left = 0
    display_puzzle_word.each do |letter|
      if( letter == "?" )
        letters_left += 1
      end
    end
    if letters_left == 0
      return "winner"
    else
      if @guess_limit == 0
        return "loser"
      else
        return "keep playing"
      end
    end
  end
  # Create a method for guessing a letter
    # Gets user input
  def guess_letter(letter)
    # Make sure letter hasn't already been guessed
    if @guessed_letter.index(letter)
      return "Letter already guessed."
    end
    # Compare letter to word
    letter_index = @guess_word_letter.index(letter)
    if letter_index != nil
      @display_puzzle_word[letter_index] = letter + " "
    end
    # Store letter as a guessed letter
    @guessed_letter << letter
    @guess_limit -= 1
    game_status = self.game_over
  end
  # Create a method that returns the state of the word
  def word_status
    p @display_puzzle_word
    guess = "guesses"
    if @guess_limit == 1
      guess = "guess"
    end
    puts "#{@guess_limit} #{guess} left."
  end
    # Use underscores to indicate letters missing
  # Create a method for winning game
  # Create a method for losing game  
end  

game = Hangman.new
# puts "Please guess a letter."
# input = gets.chomp
# until input.length > 1
#   "Please, guess a letter."
#   input = gets.chomp
# end
# game.guess_letter(input)