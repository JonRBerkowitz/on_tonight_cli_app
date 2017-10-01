class OnTonight::Show
  attr_accessor :name, :network, :description, :episode

  @@all = []

  def initialize(name=nil, network=nil, description=nil, episode=nil)

  end

  def self.all
    @@all
  end
  

end
