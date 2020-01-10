require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :Player

  get '/' do 
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    # erb :play
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    Game.new($player_1,$player_2).attack(@player_2)
    erb :attack
  end

  get '/confirm_attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb :ok
  end


  run! if app_file == $0
end



