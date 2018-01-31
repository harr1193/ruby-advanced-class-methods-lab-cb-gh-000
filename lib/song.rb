class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    temp = self.new
    temp.save
    temp
  end

  def self.new_by_name(name)
    temp = self.new
    temp.name = name
    temp
  end

  def self.create_by_name(name)
    temp = self.create
    temp.name = name
    temp
  end

  def self.find_by_name(name)
    Song.all.detect {|p| p.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.alphabetical
    self.all.sort_by {|s| s.name}
  end

  def self.new_from_filename(filename)
    seperator = filename.split(" - ")
    artist_name = seperator[0]
    song_name = seperator[1].gsub(".mp3", "")

    song = self.name
    song.artist_name = artist_name
    song
  end

  def self.create_from_filename(filename)
    seperator = filename.split(" - ")
    artist_name = seperator[0]
    song_name = seperator[1].gsub(".mp3", "")

    song = self.create
    song.name = song_name
    song.artist_name = artist_name
    song

  end

  def self.destroy_all
    self.all.clear
  end
end
