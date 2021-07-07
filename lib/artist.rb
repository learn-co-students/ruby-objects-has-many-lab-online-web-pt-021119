class Artist
  attr_accessor :artist, :name

  def initialize(name, artist)
    @name = name
    @artist = artist
  end

  def name
    if Beyonce?
     puts "#{name}"
