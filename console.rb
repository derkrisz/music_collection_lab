require_relative('./models/album.rb')
require_relative('./models/artist.rb')


artist1 = Artist.new({ 'name' => 'Ozzy'})
artist1.save()

album1 = Album.new(
  {
    'title' => 'Blizzard of Ozz',
    'genre' => 'Metal'

  }
)

album2 = Album.new(
  {
    'title' => 'Diary of a madman',
    'genre' => 'Rock'
    }
)
