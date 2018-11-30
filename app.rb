require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/game')

get ('/') do
  game = Hangman.new()
  game.save()
  @tries = game.attempts
  erb(:game)
end

post ('/') do
  @list = Hangman.all()
  # @game = Hangman.find()
  guess = params["guess"]
  Hangman.make_guess(guess)
  @tries = Hangman.find()
  @warning = Hangman.end_of_game()

  erb(:game)
end
