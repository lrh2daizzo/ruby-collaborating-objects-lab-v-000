class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if self.all.select {|artist| artist.name == name}
    else
      self.new(name).tap {|artist| artist}
    end
  end

end
