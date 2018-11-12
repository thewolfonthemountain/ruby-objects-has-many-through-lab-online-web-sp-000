class Doctor

  @@all = []
  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    self.songs.collect {|song| song.genre}
  end


end
