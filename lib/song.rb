class Song 
  
  attr_accessor :name, :artist 
  
  def initialize(title)
    @name = name
    @@all = []
  end
  
  def artist_name
    self.artist.name 
  end
  
end