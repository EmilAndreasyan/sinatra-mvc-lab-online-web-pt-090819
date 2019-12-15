require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    pl = PigLatinizer.new
    @analyzed_text = pl.piglatinize(params[:user_input])
    erb :results
  end
end