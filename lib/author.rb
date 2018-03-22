class Author
  attr_accessor :name
  @@post_count = 0

  def initialize(name = nil)
    @name = name
    @posts = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    add_song(new_song)
  end

  def self.song_count
    @@song_count
  end
end
