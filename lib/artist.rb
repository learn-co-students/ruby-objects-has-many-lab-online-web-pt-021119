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

  def self.all_songs
    @@all
  end

  def add_song(song)
    song.artist = self
    self.songs << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    self.songs << song
   end

  def self.song_count
    self.all_songs.size
  end
end
