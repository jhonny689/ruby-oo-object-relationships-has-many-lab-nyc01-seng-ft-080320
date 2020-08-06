require 'pry'
class Artist
    attr_accessor :name, :songs
    @@songs_count = 0
    def initialize(name)
        self.name = name
        @songs = []
    end
    
    def add_song(song)
        @songs << song
        @@songs_count += 1
        if song.artist != self
            song.artist = self
        end
    end

    def add_song_by_name (song_name)
        new_song = Song.new(song_name)
        add_song(new_song)
    end

    def self.song_count
        @@songs_count
    end
    
end