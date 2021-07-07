class Post 
  
  attr_accessor :author, :title
  
  @@all = [] #=> keep track of all the created instances
  
  def initialize(title)
    @title = title
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def author_name
    if self.author 
      self.author.name
    else
      nil 
    end 
  end 
end 