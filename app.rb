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

get '/cat' do
  @cat_name = ["Amigo", "Oscar", "Viking"].sample 
  erb(:index)
end
