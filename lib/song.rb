class Song

  @@all = []

  attr_accessor :name, :artist

  def initialize(name = nil, artist = nil)
    @name = self.name
    @@all << self
  end

  def self.all
    @@all
  end
end
