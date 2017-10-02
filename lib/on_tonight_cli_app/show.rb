class OnTonight::Show
  attr_accessor :name, :network, :description, :episode_title, :episode_description, :url, :time

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
    show.time = i.css(".listings-program-airing-info").text.split(" | ")[0]
    puts "#{show.time}"
    show.network = i.css(".listings-program-airing-info").text.split(" | ")[1]
    puts "#{show.network}"
    show.episode_title = i.css(".listings-program-episode-title .listings-program-link").text
    puts "#{show.episode_title}"
    show.episode_description = i.css(".listings-program-description").text
    puts "#{show.episode_description}"
  end

end
