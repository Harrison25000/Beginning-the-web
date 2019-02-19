require 'sinatra'

get '/' do
  'Hello world'
end

get '/secret' do
  'The cake is not a lie'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

post '/named-cat' do
  @name = params[:name]
  @colour = params[:colour]
  erb :index
end

get '/cat-form' do
  '<form method="post" action="/named-cat">
    <input type="text" name="name">
    <input type="submit" name="submit" value="Submit cat">
  </form>'
end
