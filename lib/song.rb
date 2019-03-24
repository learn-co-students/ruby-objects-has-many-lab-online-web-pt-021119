class Song 
  
  attr_accessor :artist, :name
  
  @@all = [] #=> keep track of all the created instances
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def artist_name
    if self.artist #=> returns the object of artist name?
      self.artist.name
    else
      nil 
    end 
  end 
end 