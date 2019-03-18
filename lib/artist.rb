class Artist
  attr_accessor :name, :song
  @@song_count=1
  
  def initialize(name)
    @name=name
    @songs= []
  end 
  def songs 
    @songs 
  end 
  def add_song(song)
    @songs << song
    song.artist = self
     @@song_count += 1
  end
  def add_song_by_name(name)
    song=Song.new(name)
    @songs << song 
  song.artist = self
  #  add_song(Song.new(song)) #this is a way of calling the add_song method. then change the @@song_count to = 0 
  end 
  def self.song_count
    @@song_count
  end 
end 