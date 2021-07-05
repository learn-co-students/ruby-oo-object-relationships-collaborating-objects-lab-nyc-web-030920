   class MP3Importer

    attr_reader :path 
    def initialize(file_path)
        @path = file_path
    end

    def files 
    end

    def import 
        files.each{|f| Song.new_by_filename(f)}
    end
end

