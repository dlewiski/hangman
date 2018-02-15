require 'rspec'
require 'hangman'
require 'pry'
# require 'test'

describe('Hangman') do
  describe('#initialize') do
    game = Hangman.new
    it('generate a word from a preset list') do
      expect(game.word_array.include?(game.word)).to(eq(true))
    end
  end
  # describe('#present?')
  # end
end
