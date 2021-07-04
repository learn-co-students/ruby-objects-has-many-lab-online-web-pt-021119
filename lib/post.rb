class Post 
  attr_accessor :title, :author 
  
  def initialize(title)
    @title = title
    @@all = []
  
  
  def self.all
    @@all
  end
end