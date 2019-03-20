require 'song.rb'

class Artist
  
  @@song_count = 0
  
attr_accessor :name
  
  def initialize(name = nil)
    @name = name
    @songs = []
    
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    @songs << song
    song.artist = self #this self is the instance of the artist
    @@song_count += 1
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song) #this self is the instance of the artist too 
  end
  
  def self.song_count #this instance is the Class Artist
    @@song_count
  end
  
end
