class OnTonight::CLI

  def call
    puts "So, what's on tonight?"
    list_shows
    menu
  end

  def list_shows
    puts "1. The Blacklist | 8:00 PM | NBC"
  end

  def episode
    puts "The Blacklist | 8:00 PM | NBC"
    puts "------------------------------"
    puts "Smokey Putnum (Season 5 | Episode 1)"
    puts "************************************"
    puts "In the Season 5 premiere, Red  whose criminal empire is in ruins enlists Liz in an unlikely plan to simultaneously earn cash and deliver a new Blacklister to the Task Force. As Liz faces the new reality of working alongside her father, Ressler finds himself in a precarious position and Tom weighs his options."
  end

  def show
    puts "The Blacklist | NBC | Metascore: 74"
    puts "------------------------------"
    puts "A most-wanted fugitive works with a rookie FBI profiler to take down criminals and terrorists in this crime series."
    puts "************************************"
    puts "Starring:"
    puts "James Spader as Raymond Reddington"
    puts "Ryan Eggold as Tom Keen"
    puts "Mozhan Marno as Samar Novabi"
  end

  def menu
    input = nil
    while input != "exit"
      puts "Which show would you like more info on? (Enter a number)"
      input = gets.strip.downcase

    end
  end

end
