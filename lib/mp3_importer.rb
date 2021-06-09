require 'pry'

class MP3Importer
  attr_accessor :path 
  
  def initialize(path)
    @path = path
    binding.pry 
  end 
  
  def files
  end
  
  def import
    @path 
  end 
end 