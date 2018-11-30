class MP3Importer
attr_accessor :filename

  def initialize(filename)
    @filename = filename
  end
  

  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end
