require 'pry'

class Song
  attr_accessor :name, :artist 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def self.new_by_filename(filename)
    name = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    new_song = self.new(name)
    new_song.artist_name = artist
    new_song
  end
  
  def artist_name=(name)
    new_artist = self.new(name)
    
  end 
  
end 