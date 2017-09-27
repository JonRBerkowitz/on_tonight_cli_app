class OnTonight::CLI

  def call
    list_shows
    menu
  end

  def list_shows
    puts "So, what's on tonight?"
    puts "1. The Blacklist | 8:00 PM | NBC"
    puts "2. Modern Family | 9:00 PM | ABC"
  end

  def menu
    input = nil
    while input != "exit"
      puts "Which show would you like more info on? (Enter a number)"
      input = gets.strip.downcase
      case input
      when "1"
        puts "The Blacklist | 8:00 PM | NBC"
        puts "------------------------------"
        puts "Would you like to see more info about"
        puts "1. Tonight's episode"
        puts "2. The show"
      end
    end
  end

end
