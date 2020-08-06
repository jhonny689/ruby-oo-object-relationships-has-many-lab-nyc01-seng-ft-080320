class Author
    attr_accessor :name
    @@post_count = 0
    def initialize(name)
        self.name = name
        @posts = []
    end

    def add_post(post)
        @posts << post
        @@post_count += 1
        if !post.author
            post.author = self
        end
    end

    def add_post_by_title (title)
        add_post(Post.new(title))
    end

    def posts
        @posts
    end

    def self.post_count
        @@post_count
    end
end