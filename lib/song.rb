class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    Artist.all_songs << self
  end

  def self.all
    @@all
  end

  def artist_name
    @artist ? @artist.name : nil
  end

end
