require 'pry'

class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    new_song = Song.new(song)
    new_song.artist = self
    @songs << song
  end

  def add_song_by_name
  end

  def self.song_count
  end
end
