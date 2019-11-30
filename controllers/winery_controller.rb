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

  #new
  get '/wineries/new' do
    erb(:"wineries/new")
    end

#create
  post '/wineries' do
    winery = Winery.new(params)
    winery.save()
    redirect "/wineries"
  end

  #show

  get '/wineries/:id' do
    id = params[:id].to_i()
    @winery = Winery.find(id)
    erb(:"wineries/show")
  end

  #edit
  get '/wineries/:id/edit' do
    id = params[:id].to_i()
    @winery = Winery.find(id)
    erb(:"wineries/edit")
  end

  #update
  post '/wineries/:id' do
    winery = Winery.new(params)
    customer.update()
    redirect '/wineries'
  end
