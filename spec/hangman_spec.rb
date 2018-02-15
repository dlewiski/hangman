require 'rspec'
require 'hangman'
require 'pry'
# require 'test'

describe('Hangman') do
  describe('#initialize') do
    it('generate a word from a preset list') do
      game = Hangman.new
      expect(game.word_array.include?(game.word)).to(eq(true))
    end
  end
  describe('#has_letter?') do
    it('returns true if word contains letter, else false') do
      game = Hangman.new
      game.word = "ruby"
      expect(game.has_letter?("r")).to(eq(true))
    end
  end
end
