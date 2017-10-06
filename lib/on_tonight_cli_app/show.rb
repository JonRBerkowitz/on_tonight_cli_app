class OnTonight::Show
  attr_accessor :name, :network, :episode_title, :episode_description, :time

  @@all = []

  def initialize(name=nil, network=nil, episode_title=nil, episode_description=nil, time=nil)
    @episode_title = episode_title
    @url = url
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
    show
  end

end
