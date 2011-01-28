require 'rubygems'
require 'sinatra'
require 'haml'
require 'json'
require 'cobravsmongoose'


get '/' do
  "Hello World!"
end

get '/hello_haml/?' do
  haml :haml, :layout => :layout
end

get '/hello_sass/?' do
  sass :sass
end

get '/hello_json/?' do
  content_type :text
  { :hello => 'world'}.to_json
end

get "/hello_xml/?" do
  
CobraVsMongoose.hash_to_xml({ "hello" => { "$" => "world"} }
)
 	
end

get '/hello_input/:input' do
  params[:input]

end

