# RSpec for class Game
require_relative 'hangman'
describe Hangman do
  let(:game) { Hangman.new }

  it "guesses a letter in a word" do
    expect(game.guess_letter("l")).to eq "l"
  end

  it "gets game word and displays it with question marks for unguessed letters" do
    expect(game.display_word).to include "?"
  end

  it "gets current status of the game" do
    expect(game.game_over).to be false
  end

  it "gets the number of guesses left in the game" do
    expect(game.guesses_left).to include "guesses left"
  end
  
end