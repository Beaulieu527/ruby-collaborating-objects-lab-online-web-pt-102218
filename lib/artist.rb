class Artist

  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
    self
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|a| a.name == name}
      self.all.detect {|a| a.name == name}
    else
      self.new(name).save
    end
  end

  def print_songs
    songs.each do |a|
      puts a.name
    end
  end

end
