require 'pry'
class Artist
    @@all = []
    attr_accessor :name, :songs 

    def initialize(name)
        @name = name
        save
    end 

    def save
        @@all << self
      end

    def self.all
        @@all
    end 

    def add_song(song)
        song.artist = self 
    end 

    def songs 
        Song.all.select {|song| song.artist == self}
    end 

    def self.find_or_create_by_name(name)
        if  self.all.find {|artist| artist.name == name}
            self.all.find {|artist| artist.name == name}
        else 
            self.new(name)
        end 
    end  

    def print_songs 
        songs.each do |song| 
            puts song.name
    end 
    end 

end 