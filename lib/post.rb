class Post
    attr_accessor :title
    attr_reader :author

    @@all = []

    def initialize(title)
        self.title = title
        @@all << self
    end

    def author= (author)
        @author = author
        if !author.posts.include?(self)
            author.add_post(self)
        end
    end
    def author_name
        self.author ? self.author.name : nil
    end

    def self.all
        @@all
    end
end