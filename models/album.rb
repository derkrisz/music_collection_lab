require('pg')
require_relative('../db/sql_runner')



class Album

  attr_accessor :artist_id, :title
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
    @artist_id = options['artist_id'].to_i
  end

  def save()
    sql = "INSERT INTO albums
    (
      title,
      genre,
      artist_id
    )
    values(
      $1, $2, $3
    )
    RETURNING * "
    values = [@title, @genre, @artist_id]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i
  end

  def self.list()
    sql = "SELECT * FROM albums"
    albums = SqlRunner.run(sql)
    return albums.map { |albums| Album.new(albums) }
  end

end
