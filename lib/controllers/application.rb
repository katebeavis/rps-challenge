require 'sinatra/base'
require './lib/game'
class Rps < Sinatra::Base
  game = Game.new

  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    session[:current] = params[:name]
    @name = params[:name]
    @game = game
    if params[:name].empty?
      @message = 'You MUST enter a name!'
      erb :index
    else
      @player1 = Player.new(@name)
      game.add_player(@player1)
      @player2 = Player.new('Player Two')
      session[:me] = @player1
      session[:ai] = @player2
      session[:game] = @game
      game.add_player(@player2)
      erb :index
    end
  end
end
