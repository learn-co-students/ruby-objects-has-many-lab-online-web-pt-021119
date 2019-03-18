class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name
    @name
  end
  
  def artist
    @artist
  end

  def self.all
    @@all
  end

  def artist_name
    @artist ? @artist.name : nil
  end

end
