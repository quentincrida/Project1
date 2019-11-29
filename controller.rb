require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/wineries_controller')


get   do
  erb(:"wineries/index")
end
