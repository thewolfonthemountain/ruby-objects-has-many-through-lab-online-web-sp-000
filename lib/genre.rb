class Genre

  @@all = []
  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Songs.all.select {|song| song.genre == self}
  end

  def artists
    self.songs.collect {|song| song.artists}
  end

end
