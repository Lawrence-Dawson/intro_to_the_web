require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello world"
end

get '/secret' do
  "I have a secret ;)"
end

get '/name' do
  "Whats your name?"
end

get '/age' do
  "im 22!"
end

get '/named-cat' do
  p params
  @name = params[:name]
  @surname = params[:surname]
  erb(:index)
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
