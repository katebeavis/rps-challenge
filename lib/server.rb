require './lib/controllers/application'
require './lib/controllers/player'
require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class Rps < Sinatra::Base
  set :views, Proc.new { File.join(root, '..', 'views') }

  enable :sessions

  run! if app_file == $Rps
end
