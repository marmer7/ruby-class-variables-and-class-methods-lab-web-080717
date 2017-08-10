class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = Array.new
  @@genres = Array.new
  @@genre_hash = Hash.new
  @@artist_hash = Hash.new

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.uniq.each {|genre| @@genre_hash[genre] = @@genres.count(genre)}
    @@genre_hash
  end

  def self.artist_count
    @@artists.uniq.each {|artist| @@artist_hash[artist] = @@artists.count(artist)}
    @@artist_hash
  end

end
