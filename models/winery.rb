require_relative('../db/sql_runner')

class Winery

  attr_reader :id, :name, :address

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @address = options['name']
  end

end
