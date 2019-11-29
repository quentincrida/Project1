require_relative("../models/winery.rb")
require('pry')


Winery.delete_all()

winery1 = Winery.new({
  "name" => "Boekenhoutskloof",
  "address" => "Excelsior Road, Franschhoek, 7690, South Africa"  })


winery1.save()

winery2 = Winery.new({
  "name" => "Groot Constantia",
  "address" => "Groot Constantia Rd, Constantia, Cape Town, 7806, South Africa"
  })

  winery2.save()
binding.pry
nil
