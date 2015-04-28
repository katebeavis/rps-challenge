require 'sinatra/base'
require './lib/player'
class Rps < Sinatra::Base
  game = Game.new

  get '/player' do
    erb :player
  end

  post '/player' do
    @player1 = Player.new(@name)
    @player2 = Player.new('AI')
    @game = game
    session[:current] = params[:choice]
    @choice = params[:choice]
    @player1.make_choice(@choice)
    @comchoice = @player2.computer_choice
    @winner = game.winner?(@player1, @player2)
    erb :player
  end
end
