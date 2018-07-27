class BggRank::CLI

  def call
    list_games
    menu
    goodbye
  end

  def list_games
    puts "BGG 100"
    @games = BggRank::Game.all
    @games.each.with_index(1) do |game, i|
      puts "#{i}. #{game.name} (#{game.year}) - #{game.designer}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "***Enter the number of the game for more info***"
      puts "***Type exit to leave***"
      puts "***Type menu for menu***"
      input = gets.strip.downcase

      if input.to_i > 0
        puts @games[input.to_i-1]
      elsif input == "list"
        list_games
        puts "Not sure what you want."
      end
    end
  end

  def goodbye
    puts 'Goodbye!'
  end
end
