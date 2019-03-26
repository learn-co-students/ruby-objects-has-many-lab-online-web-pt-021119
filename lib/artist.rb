require "pry"

class Artist
  
  attr_accessor :name, :songs 
  
 
  @@all_songs = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end 

  def songs
  @songs
  end
  
  def add_song(song)
    #binding.pry
  @songs << song
  song.artist = self
  @@all_songs += 1 
  #binding.pry
  end
 
 def add_song_by_name(song_name)
  song = Song.new(song_name)
  song.artist = self
  @songs << song
  @@all_songs += 1
 end  
  
  def self.song_count
    @@all_songs 
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  


end