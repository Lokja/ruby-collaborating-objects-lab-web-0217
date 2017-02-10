require "pry"

class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(path).find_all{|files| files.end_with?(".mp3")}
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
