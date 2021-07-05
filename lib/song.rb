

class Song
    attr_accessor :name, :artist

    @@all = []


    def initialize(name)
        @name = name
        Song.all << self
    end

    def self.all
        @@all
    end


    def new_by_filename(filename)

        Artist.new(filename.split(" - ")[0])

        self.new(filename.split(" - ")[1])
        
    end

end