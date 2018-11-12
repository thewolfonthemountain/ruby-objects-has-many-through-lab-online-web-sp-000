class Artist

  @@all = []
  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(song_name, genre)
    Song.new(song_name, self, genre)
  end

  def songs
    Songs.all.select {|song| song.artist == self}
  end



end
