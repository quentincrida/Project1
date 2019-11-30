require_relative('../db/sql_runner')


class Winery

  attr_reader :id, :name, :address
#constructor
  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @address = options['address']
  end

  # def get_name
  #   return @winery1.get_name
  # end

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

  def update()
    sql = "UPDATE wineries SET (name, address)
    = ($1, $2) WHERE id = $3"
    values = [@name, @address, @id]
    SqlRunner.run(sql)
  end



end
