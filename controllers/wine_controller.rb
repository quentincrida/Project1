require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('../models/wine.rb')
also_reload('../models/*')

# index
get'/wines' do
  @wines = Wine.all()
  erb (:"wines/index")
end

#new
get '/wines/new' do
  @wineries = Winery.all()
  erb(:"wines/new")
end

#CREATE
post '/wines' do
  wine = Wine.new(params)
  wine.save()
  redirect "/wines"
end

#Show
get '/wines/:id' do
  id = params[:id].to_i[]
  @wine = Wine.find(id)
  erb(:"wine/show")
end

#edit
get '/wines/:id/edit' do
  id = params[:id].to_i()
  @wine = Wine.find(id)
  erb(:"wines/edit")
end

#update
post '/wineries/:id' do
  wine = Wine.new(params)
  wine.update()
  redirect '/wines'
end
