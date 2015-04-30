require 'sinatra/base'
require './lib/player'
require './lib/controllers/application'
class Rps < Sinatra::Base

enable :sessions

  get '/player' do
    erb :player
  end

  post '/player' do
    @player1 = session[:me]
    @player2 = session[:ai]
    @game = session[:game]
    session[:current] = params[:choice]
    @choice = params[:choice]
    @player1.make_choice(@choice)
    @comchoice = @player2.computer_choice
    @winner = @game.winner?(@player1, @player2)
    erb :player
  end
end
