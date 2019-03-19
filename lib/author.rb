class Author
    attr_accessor :name, :posts

    @@all_posts=[]

    def initialize (name)
        @name=name
        @posts=[]
    end

    def add_post(post)
        # binding.pry
        @posts<<post
        @@all_posts<<post
        post.author=self
    end

    def add_post_by_title(post_title)
        post=Post.new(post_title)
        self.add_post(post)
    end

    def self.post_count
        # binding.pry
        @@all_posts.size
    end
    
end