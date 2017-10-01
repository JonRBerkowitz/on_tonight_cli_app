class OnTonight::Scraper

  def get_page
    Nokogiri::HTML(open("http://www.tvguide.com/new-tonight"))
  end

  def scrape_show_index
    puts self.get_page.css(".listings-program-content")
  end

end
