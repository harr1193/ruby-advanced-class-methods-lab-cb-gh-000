class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def create
    temp = self.new
    if !self.all.include?(temp)
      self.all << temp
    end
    temp
  end
end
