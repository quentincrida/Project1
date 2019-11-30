require_relative('../db/sql_runner')

class Wine
  attr_reader :name, :description, :stock, :cost, :price, :id

  def initialize( options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @description = options['description']
    @stock = options['stock']
    @cost = options['cost'].to_i
    @price = options['price'].to_i
  end

  # def save()
  #   sql = "INSERT INTO wines
  #   (name, description, stock, cost, price)
  #   VALUES ($1, $2, $3, $4, $5) RETURNING id"
  #   values = [@name, @description, @stock, @cost, @price]
  #   results = SqlRunner.run(sql, values)
  #   @id = results.first()['id'].to_i
  #
  # end
  #
  # def self.delete_all()
  #   sql = "DELETE FROM wines"
  #   SqlRunner.run(sql)
  # end

  # def self.all()
  #   sql = "SELECT * FROM wines"
  #   results = SqlRunner.run(sql,values)
  #   return results.map{|wine| Wine.new(wine)}
  # end
  #



end
