require_relative('../db/sql_runner')
require_relative('./wine.rb')


class Winery

  attr_reader :id
  attr_accessor :name, :address
#constructor
  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @address = options['address']
  end


  def save()
    sql = "INSERT INTO wineries (
    name, address)
    VALUES ($1, $2) RETURNING id"
    values = [@name, @address]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.delete_all
    sql = "DELETE FROM wineries"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM wineries"
    results = SqlRunner.run(sql)
    return results.map {|winery| Winery.new(winery)}
  end

  def self.find(id)
    sql = "SELECT * FROM wineries WHERE id = $1"
    values = [id]
    farm_hash = SqlRunner.run(sql, values)[0]
    return Winery.new(farm_hash)
  end 

  def update()
    sql = "UPDATE wineries SET (name, address)
    = ($1, $2) WHERE id = $3"
    values = [@name, @address, @id]
    SqlRunner.run(sql)
  end



end
