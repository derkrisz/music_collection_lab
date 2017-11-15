require('pg')
require_relative('../db/sql_runner')

class Artist

  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO artists
    (
      name
    )
    values(
      $1
    )
    RETURNING id"
    values = [@name]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i
  end

  def self.list()
    sql = "SELECT * FROM artists"
    artists = SqlRunner.run(sql)
    return artists.map { |artists| Artist.new(artists) }
  end



end
