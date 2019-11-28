require_relative("../models/winery.rb")
require('pry')


#Winery.delete_all()

winery1 = Winery.new({
  "name" => "Boekenhoutskloof",
  "address" => "Excelsior Road, Franschhoek, 7690"  })


#  winery1.save()


binding.pry
nil
