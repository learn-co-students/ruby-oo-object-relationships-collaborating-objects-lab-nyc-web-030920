class Song 

    @@all = []
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist_name=(name)
        if !@artist || !(@artist.name == name)
            artist = Artist.all.find {|artist| artist.name == name}
            if artist
                @artist = artist
            else
                @artist = Artist.new(name)
            end
        end
    end

    def self.all 
        return @@all 
    end
    def self.new_by_filename(fn)
        puts fn
        pair = fn.split(" - ")
        artist = pair[0]
        song = pair[1]
        s = self.new(song)
        a = Artist.new(artist)
        a.add_song(s)
        return s
        #TODO:
    end
end