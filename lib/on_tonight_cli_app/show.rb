class OnTonight::Show
  attr_accessor :name, :network, :description, :episode_title, :episode_description, :url, :time

  @@all = []

  def initialize(name=nil, network=nil, description=nil, episode_title=nil, episode_description=nil, time=nil)
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_show(i)
    show = self.new
    show.name = i.css(".listings-program-title").text
    show.time = i.css(".listings-program-airing-info").text.split(" | ")[0]
    show.network = i.css(".listings-program-airing-info").text.split(" | ")[1]
    show.episode_title = i.css(".listings-program-episode-title .listings-program-link").text
    show.episode_description = i.css(".listings-program-description").text
    show.url = i.css("a.listings-program-link").attribute("href").value
    show
  end

end
