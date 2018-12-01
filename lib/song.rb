class Song
  attr_accessor :name,:artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
     Artist.find_or_create_by_name(artist_name).add_song(self)
  end


  def self.new_by_filename(file_name)
      artist_name, song_name = file_name.chomp(".mp3").split(" - ")
      song = self.new(song_name)
      song.artist_name = artist_name
      return song
    end




end
