


class MP3Importer
    attr_accessor :path, :song

    def initialize(path)
        @path = path

    end

    def files
        Dir.children(self.path)
    end

    def list_of_filenames
        self.files.map{|file| file.delete_suffix(".mp3")}
    end

    def import(list_of_filenames)
        list_of_filenames.each do |filename|
            Song.new_by_filename(filename)
        end

    end

end