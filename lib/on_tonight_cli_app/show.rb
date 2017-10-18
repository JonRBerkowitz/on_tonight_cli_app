class OnTonight::Show
  attr_accessor :name, :network, :episode_title, :episode_description, :time

  @@all = []

  def initialize(name=nil, network=nil, episode_title=nil, episode_description=nil, time=nil)
    @@all << self
  end

  def self.all
    @@all
  end

  def self.shows_by_network(network)
    self.all.select { |show| show.network.downcase == network.downcase }
  end

end
