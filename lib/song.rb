require 'pry'

class Song

  @@all = []

  attr_accessor :name, :artist

  def initialize(name = nil, artist = nil)
    @name = name
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

end
