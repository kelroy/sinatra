require 'rubygems'
require 'sinatra'
require 'haml'
require 'json'


get '/' do
  "Hello World!"
end

get '/hello_haml/?' do
  haml :haml, :layout => :layout
end

get '/hello_sass/?' do
  sass :sass
end

get '/json/?' do
  content_type :text
  { :key1 => 'value1', :key2 => 'value2' }.to_json
end

get "/xml/?" do
  
  haml(:xml,:layout => false)
 	
end

get '/hello_input/:input' do
  params[:input]

end

