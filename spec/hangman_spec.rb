require 'rspec'
require 'hangman'
require 'pry'
# require 'test'

describe('Hangman') do
  describe('#initialize') do
    it('generate a word from a preset list') do
      game = Hangman.new
      expect(game.word_list.include?(game.word)).to(eq(true))
      expect(game.word_list.include?("yodel")).to(eq(false))
    end
  end
  describe('#has_letter?') do
    it('returns true if word contains letter, else false') do
      game = Hangman.new
      game.input_word("ruby")
      expect(game.has_letter?("r")).to(eq(true))
      expect(game.has_letter?("x")).to(eq(false))
    end
  end
  describe('#update') do
    it('inserts guessed letter into the placeholder array') do
      game = Hangman.new
      game.input_word("ruby")
      # binding.pry
      game.update('r')
      # binding.pry
      expect(game.placeholders).to(eq(["r", "_", "_", "_"]))
    end
  end
end
