class OnTonight::CLI

  def initialize
    OnTonight::Scraper.new.make_shows
  end

  def call
    puts "So, what's on?"
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
      puts "These shows have new episodes on tonight!"
      puts "Enter a number for more info on tonight's episode."
      input = gets.strip.downcase
      puts "#{OnTonight::Show.all[input.to_i - 1].name} (#{OnTonight::Show.all[input.to_i - 1].time} | #{OnTonight::Show.all[input.to_i - 1].network})"
      puts "------------------------------------------------"
      puts "#{OnTonight::Show.all[input.to_i - 1].episode_title}:"
      puts OnTonight::Show.all[input.to_i - 1].episode_description
    end
  end

end
