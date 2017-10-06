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

  def input_to_index(input)
    input = input.to_i - 1
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter a number for more info on tonight's episode."
      puts "Enter 'exit' to end program."
      input = gets.strip.downcase
      if input.to_i > 0
        puts " "
        puts "#{OnTonight::Show.all[input_to_index(input)].name} (#{OnTonight::Show.all[input.to_i - 1].time} | #{OnTonight::Show.all[input_to_index(input)].network})"
        puts "------------------------------------------------"
        puts "#{OnTonight::Show.all[input_to_index(input)].episode_title}:"
        puts OnTonight::Show.all[input_to_index(input)].episode_description
        puts " "
        puts "Enter 'list' to list all shows again."
      end
      if input == "list"
        list_shows
      end
    end
    puts "Goodbye!"
  end

end
