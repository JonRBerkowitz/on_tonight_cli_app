class OnTonight::Show
  attr_accessor :name, :network, :description, :episode

  @@all = []

  def initialize(name=nil, network=nil, description=nil, episode=nil)
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_show(i)
    show = self.new
    show.name = i.css(".listings-program-title").text
    puts "#{show.name}"
    show.episode = i.css(".listings-program-link").text
    puts "#{show.episode}"
  end

end
