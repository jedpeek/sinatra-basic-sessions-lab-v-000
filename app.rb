require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :session
    set :session_secret, "banana"
  end

  get '/' do
    erb :'index'
  end

  post '/checkout' do
    session["item"] = params[:checkout]
end
