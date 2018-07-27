class BggRank::CLI

  def call
    list_games
    menu
    goodbye
  end

  def list_games
    puts "BGG 100"
    puts "1. Gloomhaven
    2. Pandemic Legacy".gsub /^\s*/, ''
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the game for more info."
      puts "Type exit to leave."
      puts "Type menu for menu."
      input = gets.strip.downcase
      case input
      when "1"
        puts "more info on Gloomhaven."
      when "2"
        puts "more info on Pandemic Legacy"
      when "menu"
        list_games
      else
        puts "Not sure what you want."
      end
    end
  end

  def goodbye
    puts 'Goodbye!'
  end
end
