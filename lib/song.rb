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
    temp.create
    temp.name = name
    temp
  end
end
