class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @file ||= Dir.glob("dir/glob/*") { |file|  }
  end

end
