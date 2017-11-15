require_relative('./models/album.rb')
require_relative('./models/artist.rb')


artist1 = Artist.new({ 'name' => 'Ozzy'})
artist1.save()

album1 = Album.new(
  {
    'title' => 'Blizzard of Ozz',
    'genre' => 'Metal',
    'artist_id' => artist1.id

  }
)

album2 = Album.new(
  {
    'title' => 'Diary of a madman',
    'genre' => 'Rock',
    'artist_id' => artist1.id
    }
)

album1.save()
album2.save()
