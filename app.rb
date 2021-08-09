require 'sinatra/base'
require 'sinatra/reloader'

class SinatraApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "hello!"
  end

  get '/secret' do
    "Makers Academy - July 2021"
  end

end
