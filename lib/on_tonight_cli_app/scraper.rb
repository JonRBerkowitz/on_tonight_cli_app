class OnTonight::Scraper

  def get_page
    Nokogiri::HTML(open("http://www.tvguide.com/new-tonight"))
  end

  def scrape_show_index
    self.get_page.css(".listings-program-content")
  end

  def scrape_show_page(url)
    Nokogiri::HTML(open(url))
  end

  def make_shows
    scrape_show_index.each do |i|
      OnTonight::Show.new_show(i)
    end
  end

  #def scrape_show_info(show_url)
  #  doc = scrape_show_page("http://www.tvguide.com/tvshows/curb-your-enthusiasm/100103/")
  #  OnTonight::Show.add_info(doc)
  #end

end
