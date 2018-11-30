class Song
  attr_accessor :name,:artist

  def initialize(name)
    @name = name
  end




  def self.new_by_filename(filename)
      file = filename.split(" - ")
      song = self.create
      song.artist_name = file[0]
      song.name = file[1][0..-5]
      return song
    end




end
