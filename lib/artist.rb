

class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        Artist.all << self

    end

    def self.all
        @@all
    end

end
