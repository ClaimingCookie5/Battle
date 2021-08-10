require 'sinatra'
require 'sinatra/reloader' if development?



get '/' do
  "hello!"
end

get '/secret' do
  "Makers Academy - July 2021"
end

get '/about' do
  "Coding Bootcamp based in London, UK"
end

get '/contact' do
  "Some Contact Info"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
