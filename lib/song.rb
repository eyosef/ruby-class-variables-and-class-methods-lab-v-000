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

  def self.genre_count #work on
    @@genres.map{ |genre, freq| freq[genre]+=1; [genre, freq] }.to_h
    #note TO SELF, figure out how to use 'freq' to count number of genres

    #@@genres.each do |genre|
      # @@genres = {genre => freq}

      #new_hash[:"#{genre}"] = nil
    #end #each iteration

    # @@genres = ["rap", "rap", "pop"]
  end

  def self.artists_count #work on
  end

  def new(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
  end

end #class
