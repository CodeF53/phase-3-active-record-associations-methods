class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_first_song
    songs.first
  end

  # return the genre of the artist's first saved song
  def get_genre_of_first_song
    get_first_song.genre
  end

  # return the number of songs associated with the artist
  def song_count
    songs.length
  end

  # return the number of genres associated with the artist
  def genre_count
    songs.map(&:get_genre_name).uniq.length
  end
end
