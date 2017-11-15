require_relative('../models/album.rb')
require_relative('../models/artist.rb')


artist1 = Artist.new({ 'name' => 'Ozzy'})


album1 = Album.new(
  {
    'title' => 'Blizzard of Ozz'

  }
)

album2 = Album.new(
  {
    'title' => 'Diary of a madman'  }
)
