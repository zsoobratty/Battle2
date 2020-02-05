require "sinatra/base"
require "shotgun"
class Battle < Sinatra::Base
  set :session_secret, "nah nah nah"

  get '/Battle' do
    "Hello Battle!"
  end

end