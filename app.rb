require "sinatra/base"
require "shotgun"
class Battle < Sinatra::Base
  set :session_secret, "nah nah nah"

  get '/' do
    "Testing infrastructure working!"
  end

  post '/Battle' do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    erb :player_enter
  end


end
