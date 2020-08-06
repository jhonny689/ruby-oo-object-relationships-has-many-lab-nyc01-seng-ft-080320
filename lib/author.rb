class Author
    attr_accessor :name
    @@post_count = 0
    def initialize(name)
        self.name = name
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title (title)
        add_post(Post.new(title))
    end

    def posts
        Post.all.filter do |post|
            post.author == self
        end
    end

    def self.post_count
        Post.all.count
    end
end