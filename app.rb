require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :session
    set :session_secret, "secret"
  end

  get '/' do
    @session = session
    binding.pry
    erb :'index'
  end

  post '/checkout' do
    session["item"] = params[:checkout]
  end
end
