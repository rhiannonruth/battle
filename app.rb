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
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  	get '/attack' do
	    @game = $game
	    @game.attack(@game.current_opponent)
	  	erb(:attack)
  	end

	post '/switch_turn' do
		$game.switch_player
		redirect to('/play')
	end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
