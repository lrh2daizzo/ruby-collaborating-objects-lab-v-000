class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @file ||= Dir.glob("#{path}/*.mp3").collect { |file|  }
    binding.pry
  end

end
