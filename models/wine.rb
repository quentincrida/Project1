require_relative('../db/sql_runner')
require_relative('./winery.rb')


class Wine

  attr_reader :name, :description, :stock, :cost, :price, :winery_id
  attr_accessor :id

  def initialize( options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @description = options['description']
    @stock = options['stock']
    @cost = options['cost'].to_i()
    @price = options['price'].to_i()
    @winery_id = options['winery_id'].to_i()
  end

  def save()
    sql = "INSERT INTO wines
    (name, description, stock, cost, price, winery_id)
    VALUES ($1, $2, $3, $4, $5, $6) RETURNING id"
    values = [@name, @description, @stock, @cost, @price, @winery_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i

  end

  def self.delete_all()
    sql = "DELETE FROM wines"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM wines"
    results = SqlRunner.run(sql)
    return results.map{|wine| Wine.new(wine)}
  end

  def update()

    sql = "UPDATE wines SET (name, description, stock, cost, price, winery_id) =($1, $2, $3, $4, $5, $6) WHERE id = $7
    "
    values = [@name, @description, @stock, @cost, @price, @winery_id, @id]

    SqlRunner.run(sql, values)

  end

  def show_winery()
    sql = "SELECT * FROM wineries WHERE id = $1"
    values = [@winery_id]
    winery_hash = SqlRunner.run(sql, values).first
    return Winery.new(winery_hash)
    #return Wine.new(result)
  end


end
