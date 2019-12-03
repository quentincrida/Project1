require_relative("../models/winery.rb")
require_relative("../models/wine.rb")
require('pry')


Winery.delete_all()
Wine.delete_all()

winery1 = Winery.new({
  "name" => "Boekenhoutskloof",
  "address" => "Excelsior Road, Franschhoek, 7690, South Africa"  })


winery1.save()

winery2 = Winery.new({
  "name" => "Groot Constantia",
  "address" => "Groot Constantia Rd, Constantia, Cape Town, 7806, South Africa"
  })

  winery2.save()

  winery3 = Winery.new({
    "name" => "Cape Point Vineyards",
    "address" => "Silvermine Rd, Noordhoek, Cape Town, 7985, South Africa"
    })

    winery3.save()




  wine1 = Wine.new({
    "name" => "Syrah",
    "description" => "red",
    "stock" => 24,
    "cost" => 12,
    "price" => 24,
    "winery_id" => winery1.id

    })

   wine1.save()

   wine2 = Wine.new({
     "name" => "Chenin Blanc",
     "description" => "white",
     "stock" =>5,
     "cost" => 7,
     "price" => 12,
     "winery_id" => winery2.id
     })

    wine2.save()



    wine3 = Wine.new({
      "name" => "Cabernet Sauvignon",
      "description" => "red",
      "stock" => 0,
      "cost" => 17,
      "price" => 32,
      "winery_id" => winery1.id
      })

     wine3.save()





binding.pry
nil
