class Artist

  attr_accessor :name, :song

  def initialize(name)
    @name = name
    @@all = []
    @@songs = []
  end

  def songs
    @@songs
  end

  def add_song(song)
    @@songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name
  end



end
