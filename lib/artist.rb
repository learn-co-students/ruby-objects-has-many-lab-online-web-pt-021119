class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    self.songs << song
    @@all << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    @@all << song
    song.artist = self
   end

  def self.song_count
    @@all.length
  end
end
