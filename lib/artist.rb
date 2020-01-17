class Artist 
   def initialize(name)
     @name = name
    @songs = []
   end 
   
  attr_accessor :name
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
 
  def songs
    @songs
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end
  
  def self.song_count
    Song.all.count  
  end 
  
end 