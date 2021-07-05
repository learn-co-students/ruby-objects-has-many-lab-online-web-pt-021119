require "pry"
class Author 
attr_accessor :name 
@@posts = 0 

def initialize(name)
   @name = name 
   @posts = []
end 
  
def posts
@posts
end

def add_post(post_)
 #binding.pry
  @posts << post_
  post_.author = self
  @@posts += 1
end

def add_post_by_title(title)
  title_name = Post.new(title)
  title_name.author = self
  @posts << title_name
  @@posts += 1
end

  def self.post_count
    @@posts 
  end


end

