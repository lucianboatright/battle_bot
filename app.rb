require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :Player

  get '/' do 
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]),Player.new(params[:player_2]))
    # erb :play
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game
    @player_2 = $game
    erb :play
  end

  get '/attack' do
    @player_1 = $game
    @player_2 = $game
    Game.new($player_1,$player_2).attack(@player_2)
    erb :attack
  end

  get '/confirm_attack' do
    @player_1 = $game
    @player_2 = $game
    erb :ok
  end


  run! if app_file == $0
end



