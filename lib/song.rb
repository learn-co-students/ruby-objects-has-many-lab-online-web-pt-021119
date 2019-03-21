class Song

  @@all = []

  attr_accessor :artist, :name, :song

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    @artist ? self.artist.name : nil
  end

end
