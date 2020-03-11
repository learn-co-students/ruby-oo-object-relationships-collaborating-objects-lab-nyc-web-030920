class Artist 
    @@all = []
    attr_accessor :name, :songs 

    def initialize(name)
        @name = name 
        store 
    end 
    def store 
        @@all << self 
    end 
    def add_song(song)
        song.artist = self 
    end 
    def songs 
        Song.all.select do |song| 
            song.artist == self 
        end 
    end 
    def self.find_or_create_by_name(name)
        if self.find(name)
            self.find(name)
        else 
            self.new(name)
        end 
    end 
    def self.find(name)
        self.all.find do |artist| 
            artist.name == name 
        end 
    end 
    def self.all 
        @@all 
    end 
    def print_songs
        songs.each do |song| 
            puts song.name 
        end 
    end 
end 