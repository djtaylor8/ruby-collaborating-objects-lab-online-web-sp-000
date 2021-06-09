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
    new_song.artist = artist
    new_song
    binding.pry 
  end
  
  def artist_name=(name)
    
  end 
  
end 