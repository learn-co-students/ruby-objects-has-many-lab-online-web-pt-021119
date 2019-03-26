require "pry"
class Author 
attr_accessor :name 

def initialize(name)
   @name = name 
end 
  
def posts
@posts = []
end

def add_post(post_)
 #binding.pry
  @posts << post_
  #binding.pry
  
end
end

