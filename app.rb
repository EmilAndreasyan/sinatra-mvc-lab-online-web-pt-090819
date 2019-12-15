require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    pl = PigLatinizer.new
    @analyzed_text = PigLatinizer.new(text_from_user)
    erb :results
  end
end