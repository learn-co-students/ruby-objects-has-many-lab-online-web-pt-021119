class Post
	attr_accessor :title, :author
	@@all = []

	def initialize(title)
		@title = title
		@@all << self
		Author.all_posts << self
	end

	def self.all
		@@all
	end

	def author_name
		@author ? @author.name : nil
	end

#	def author_name
#		if @author
#			return @author.name
#		else
#			return nil
#		end
#	end
end
