require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  "Hello World!"
end

get '/haml/?' do
  haml :haml, :layout => :layout
end

get '/hello_sass/?' do
  haml :test, :layout => :sass

end

