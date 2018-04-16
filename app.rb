require './environment'
require_relative 'models/pirate.rb'
require_relative 'models/ship.rb'

module FormsLab
  class App < Sinatra::Base

<<<<<<< HEAD


    # code other routes/actions here
    get '/' do
      erb :index
    end
    
    get '/new' do
=======
set :views, File.expand_path('../../views/pirates', __FILE__)

    # code other routes/actions here
    get '/' do
>>>>>>> c01e7eaba62bb5129332347a0ca275362d247c64
      erb :new
    end
    
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      
      @ships = Ship.all
      
      erb :show
    end
  end
end
