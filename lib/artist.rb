class Artist 
  attr_accessor :name, :songs
  
  # new instance of artist with empty songs array 
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  #add new song to artist instance, artist name not included
  def add_song(song)
    @songs << song 
    song.artist = self
  end
  
  #add new song to artist instance, arist name included 
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song 
    song.artist = self 
  end
  
  #total count of all songs
  def self.song_count
    Song.all.length
  end
  
end