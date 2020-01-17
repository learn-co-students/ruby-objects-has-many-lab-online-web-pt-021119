require 'pry'
class Artist 
  attr_accessor :name, :songs
  
  @@artist_songs = 0
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(song)
    @songs << song 
    song.artist = self 
    @@artist_songs += 1
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song 
    song.artist = self 
    @@artist_songs += 1 
  end 
  
  def self.song_count
    Song.all.length
  end 
  
end 