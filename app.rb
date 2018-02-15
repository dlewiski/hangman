require 'sinatra'
require 'sinatra/reloader'
require 'pry'
also_reload('lib/**/*.rb')
require './lib/hangman'

get('/') do
  @game = Hangman.new
  Hangman.current_game = @game
  # binding.pry
  erb(:game)
end

post('/') do
  # binding.pry
  @game = Hangman.current_game
  # binding.pry
  letter = params["guess"]
  @game.update(letter)
  # binding.pry
  erb(:game)
end
