require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:player_form)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect to('/play')
  end

  get '/play' do
    $player1_name = $player1.name
    $player2_name = $player2.name
    erb(:play)
  end

  get '/attack1' do
    Game.new.attack($player1)
  	@loser = $player1_name
    @winner = $player2_name
  	erb(:attack)
  end

   get '/attack2' do
   	Game.new.attack($player2)
   	@loser = $player2_name
    @winner = $player1_name
  	erb(:attack)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
