require 'sinatra'
require 'sinatra/reloader'
require 'pry'
also_reload('lib/**/*.rb')
require './lib/hangman'

get('/') do
  @favorites_list = Favorite.all()
  erb(:list)
end

post('/') do
  name = params["name"]
  new_favorite_thing = Favorite.new(name)
  new_favorite_thing.save()
  @favorites_list = Favorite.all()
  Favorite.clear()
  erb(:list)
end
