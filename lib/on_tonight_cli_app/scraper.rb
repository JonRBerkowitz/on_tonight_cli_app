class OnTonight::Scraper

  def get_page
    Nokogiri::HTML(open("http://www.tvguide.com/new-tonight"))
  end

  def scrape_show_index
    self.get_page.css(".listings-program-content")
  end

  def make_shows
    scrape_show_index.each do |i|
      show = OnTonight::Show.new_show(i)
      puts show.name
    end
  end

end
