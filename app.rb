`require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/' do
    text_from_user = params[:user_input]
    @analyzed_text = PigLatinizer.new(text_from_user)
    erb :results
  end
end