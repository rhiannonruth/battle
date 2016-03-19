require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  before do
    @game = Game.get_game
  end

  get '/' do
    session.clear if session['player_1'] && session['player_2']
    if session['player_1'] == nil
      erb :player1_form
    else
      erb :player2_form
    end
  end

  post '/player_1_session' do
    session['me'] = params[:player_1_name]
    session['player_1'] = params[:player_1_name]
    redirect '/waiting_room'
  end

  post '/player_2_session' do
    session['me'] = params[:player_2_name]
    session['player_2'] = params[:player_2_name]
    redirect '/waiting_room'
  end

  get '/waiting_room' do
    if session['player_2'] == nil
      @session = session
      erb :waiting
    else
      redirect '/ready'
    end
  end

  get '/ready' do
    erb :ready
  end

  post '/names' do
    player_1 = Player.new(session['player_1'])
    player_2 = Player.new(session['player_2'])
    Game.start(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    if @game.game_over?
      (erb :lose)
    else
      @session = session
      erb :play
    end
  end

  get '/wait' do
    if @game.current_player.name == session['me']
      redirect '/play'
    else
      redirect '/wait'
    end
  end

  get '/attack1' do
    @game.attack(@game.opponent)
    erb :attack1
  end

  post '/switch' do
    @game.switch
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
