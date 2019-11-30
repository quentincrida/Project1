require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/winery_controller')
require_relative('controllers/wine_controller')


get   do
  erb(:"wineries/index")
end
