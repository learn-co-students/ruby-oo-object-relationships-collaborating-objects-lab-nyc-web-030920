class Artist
    attr_accessor :name
    @@all =[]

    def initialize(new_name)
        @name = new_name

        Artist.all << self
    end

    def self.all 
        @@all
    end

    def songs
        Song.all.select do |song|
            song.artist == self 
        end
    end

    def add_song(new_song)
        new_song.artist = self
    end

    def self.find_or_create_by_name(name)
        self.all.each do |each_artist|
            each_artist.songs.each do |song_instance|
                if song_instance.name == name 
                    return each_artist
                end 
            end
        end
        return self.new(name)
    end

    def print_songs
        self.songs.each do |song|
            puts song.name 
        end
        
    end



    
        

end
     