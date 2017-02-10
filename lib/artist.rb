class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each{|song| puts "#{song.name}"}
  end

  def self.find_or_create_by_name(name)
    found_object = self.all.find{|art_obj| art_obj.name==name}
    if found_object
      found_object
    else
      new_artist = Artist.new(name)
    end
  end

  def self.all_names
    @@all.map{|artist| artist.name}
  end

  def self.all
    @@all
  end

end
