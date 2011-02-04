require 'rubygems'
require 'sinatra'
require 'haml'
require 'json'
require 'cobravsmongoose'

configure do 
	set :root, File.dirname(__FILE__)
end


get '/?' do
  haml :div
end

