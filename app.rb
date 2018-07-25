require_relative 'config/environment'

class App < Sinatra::Base

  configure
  session :session_secret, "secret"
end