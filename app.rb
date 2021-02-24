require_relative 'config/environment'
require_relative 'models/pig_latinizer'

class App < Sinatra::Base

  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    @pig_latin = PigLatinizer.new
    @pig_latin.piglatinize


    erb :pig_latin
  end
end
