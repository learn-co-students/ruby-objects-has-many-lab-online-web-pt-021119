class Author 
   def initialize(name)
     @name = name
    @post = []
   end 
   
  attr_accessor :name 
  
  def add_post(post)
    @post << post
    post.author = self
  end
 
  def posts
    @post
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @post << post
    post.author = self
  end
  
  def self.post_count
    Post.all.count  
  end 
  
end 