# RSpec for class Game
require_relative 'hangman'
describe Hangman do
  let(:game) { Hangman.new }

  it "guesses a letter in a word" do
    expect(game.guess_letter("l")).to eq "l"
  end

end