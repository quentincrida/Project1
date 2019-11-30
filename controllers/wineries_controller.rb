require('sinatra')
require('sinatra/contrib/all')
require ('pry')
require_relative('../models/winery.rb')
also_reload('../models/*')

#index
  get'/wineries' do
    @wineries = Winery.all()
    erb (:"wineries/index")
  end
