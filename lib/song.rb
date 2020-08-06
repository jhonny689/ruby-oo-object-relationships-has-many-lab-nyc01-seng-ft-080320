require 'pry'
class Song
    attr_reader :artist
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        self.name = name
        @@all << self
    end

    def artist=(artist)
        @artist = artist
        if !artist.songs.include?(self)
            artist.add_song(self)
        end
    end

    def artist_name
        self.artist ? self.artist.name : nil
    end

    def self.all
        @@all
    end

end