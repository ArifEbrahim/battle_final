require 'sinatra/base'
require 'sinatra/reloader'
require 'capybara'
require './lib/player'
require './lib/game'



class Battle < Sinatra::Base
  enable :sessions
  
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = Game.instance
  end
  
  get '/' do
    'Testing infrastucture working'
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    redirect '/win' if @game.winner?
    @game.switch_turn unless @game.just_started?
    erb(:play)
  end

  get '/attack' do
    @game.attack(@game.opponent)
    erb(:attack)
  end

  get '/win' do
    erb(:win)
  end

end