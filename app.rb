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
    Game.start(player1, player2)
    redirect('/play')
  end

  before do
    @game = Game.current_game
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
	  @game.attack(@game.current_opponent)
    if @game.game_over?
      redirect('/game_over')
    else
      erb(:attack)
    end
  end

  get '/game_over' do
    erb(:game_over)
  end

	post '/switch_turn' do
    @game.switch_player
		redirect to('/play')
	end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
