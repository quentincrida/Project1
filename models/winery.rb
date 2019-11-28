require_relative('../db/sql_runner')

class Winery

  attr_reader :id, :name, :address

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
  
end
