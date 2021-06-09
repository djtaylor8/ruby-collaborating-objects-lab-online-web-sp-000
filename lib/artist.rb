require 'pry'

class Artist 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end 
  
  def self.find_or_create_by_name(name)
    if @@all.include?(name)
      new_artist = Artist.new(name)
      new_artist
    else
      @name  
    end
    binding.pry 
  end 
  
  def print_songs
    
  end 
end 