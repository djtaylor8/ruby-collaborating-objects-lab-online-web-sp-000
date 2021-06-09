require 'pry'

class MP3Importer
  attr_accessor :path 
  
  def initialize(path)
    @path = path
     
  end 
  
  def files
    files = Dir.entries(".")
    files
    binding.pry 
  end
  
  def import
  end 
end 