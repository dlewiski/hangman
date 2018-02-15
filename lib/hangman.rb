class Hangman
  attr_accessor :word_array, :word

  def initialize
    @word_array = ["hello", "exciting", "epicodus", "ruby", "sinatra", "heroku"]
    @word = @word_array.sample
  end

  def has_letter?(letter)
    @word.include?(letter)
  end
end
