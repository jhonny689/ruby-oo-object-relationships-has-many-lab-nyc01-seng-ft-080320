require 'pry'
class Artist
    attr_accessor :name, :songs
    @@songs_count = 0
    def initialize(name)
        self.name = name
    end
    
    def add_song(song)
        song.artist = self
        @@songs_count += 1
    end

    def add_song_by_name (song_name)
        new_song = Song.new(song_name)
        add_song(new_song)
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def self.song_count
        Song.all.count
    end
    
end