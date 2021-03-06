require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
    get '/' do 
        erb :user_input
    end 

    post '/piglatinize' do 
        pig = PigLatinizer.new
        @results = pig.piglatinize(params[:user_phrase])
        erb :results
    end 
end