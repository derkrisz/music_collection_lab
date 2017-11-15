require('pg')
require_relative('../db/sql_runner')

class Album

def initialize(options)
  @id = options['id'].to_i if options['id']
  @title = options['title']
  @artist_id = options['artist_id'].to_i
end

end
