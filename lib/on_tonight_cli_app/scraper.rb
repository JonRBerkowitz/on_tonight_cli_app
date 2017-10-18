class OnTonight::Scraper

  def get_page
    Nokogiri::HTML(open("http://www.tvguide.com/new-tonight"))
  end

  def scrape_show_index
    self.get_page.css(".listings-program-content")
  end

  def make_shows
    scrape_show_index.each do |i|
      show = OnTonight::Show.new
      show.name = i.css(".listings-program-title").text
      show.time = i.css(".listings-program-airing-info").text.split(" | ")[0]
      show.network = i.css(".listings-program-airing-info").text.split(" | ")[1]
      show.episode_title = i.css(".listings-program-episode-title .listings-program-link").text
      show.episode_description = i.css(".listings-program-description").text
      show
    end
  end

end
