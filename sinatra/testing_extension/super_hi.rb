require "sinatra"
require './sinatra/post_get'

get "/hello" do
  "HI!"
end

post_get '/' do
  "Hi #{params[:name]}"
end

get '/tester' do
  erb :tester
end
