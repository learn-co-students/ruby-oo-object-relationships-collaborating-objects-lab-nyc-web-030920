class Artist 
    attr_accessor :name 

    @@all = []

    def initialize(new_name)
        @name = new_name
        @@all << self
    end

    def self.all 
        @@all 
    end


    def song 
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end 

    def self.find_or_create_by_name(name)
        if self.find(name)
            self.find(name)
        else
            self.new(name)
        end
    end

    def print_songs
        songs.each {|song| puts song.name}
    end

end



