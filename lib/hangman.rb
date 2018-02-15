class Hangman
  attr_accessor :word_list, :word, :placeholders, :guessed_letters

  def initialize
    @word_list = ["hello", "exciting", "epicodus", "ruby", "sinatra", "heroku"]
    @word = @word_list.sample
    @letters = @word.chars
    @placeholders = Array.new(@letters.length, "_")
    @guessed_letters = []
    @gallows_count = 0
  end

  def self.current_game=(game)
    @@current_game = game
  end

  def self.current_game
    @@current_game
  end

  def input_word(word)
    @word = word
    @letters = @word.chars
    @placeholders = Array.new(@letters.length, "_")
  end

  def has_letter?(letter)
    @letters.include?(letter)
  end

  def update(letter)
    @guessed_letters = @guessed_letters.push(letter)

    if has_letter?(letter)
      @letters.each_index do |i|
        if @letters[i] == letter
          @placeholders[i] = letter
        end
      end
    else
      @gallows_count += 1
    end
  end
end
