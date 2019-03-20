class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def self.all_posts
    @@all
  end

  def add_post(post)
    post.author = self
    self.posts << post
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    self.posts << new_post
  end

  def self.post_count
    self.all_posts.size
  end

end
