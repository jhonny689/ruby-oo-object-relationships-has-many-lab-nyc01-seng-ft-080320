require 'pry'
class Song
    #attr_reader 
    attr_accessor :name, :artist
    @@all = []
    
    def initialize(name)
        self.name = name
        @@all << self
    end

    def artist_name
        self.artist ? self.artist.name : nil
    end

    def self.all
        @@all
    end

end