class OnTonight::CLI

  def initialize
    OnTonight::Scraper.new.make_shows
  end

  def call
    puts "So, what's on tonight?"
    list_shows
    menu
  end

  def list_shows
    count = 1
    OnTonight::Show.all.each do |show|
      puts "#{count}) #{show.name}"
      count += 1
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Which show would you like more info on? (Enter a number)"
      input = gets.strip.downcase
    end
  end

end
