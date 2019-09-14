class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    songs =[]
    Song.all.each do |song|
      if song.artist.name == self.name
        songs << song
      end
    end
    songs
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    Song.new(name).artist = self
  end

  def self.song_count
    Song.all.size
  end
end
