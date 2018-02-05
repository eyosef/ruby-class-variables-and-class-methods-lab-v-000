require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre

    @@count += 1
    @@genres << @genre
    @@artists << @artist
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
    counter = Hash.new(0)
    @@genres.each { |genre| counter[genre]+= 1}
    counter
  end

  def self.artists_count #work on
  end

  def new(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
  end

end #class
