require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  "Hello World!"
end

get '/h/:id/:type' do
  params.inspect

end

get '/haml/:id' do
  haml :test, :layout => :layout
end

get '/css/?' do
  sass :stylesheet

end

