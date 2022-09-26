class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  # return the number of songs in a genre
  def song_count
    songs.length
  end

  # return the number of artists associated with the genre
  def artist_count
    artists.count
  end

  # return an array of strings containing every musician's name
  def all_artist_names
    artists.map(&:name).uniq
  end
end
