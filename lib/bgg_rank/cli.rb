class BggRank::CLI

  def call
    list_games
    menu
    goodbye
  end

  def list_games
    puts "Boardgamegeek.com Top 10 Games"
    puts "---------------"
    BggRank::Scraper.scrape_bgg

    games = BggRank::Game.all
    games.each.with_index(1) do |game, index|
      if index <= 10
        puts "#{index}. #{game.name}"
      end
    end

  end

  def menu
    input = nil
    while input != "exit"
      puts "***Enter the number of the game for more info***"
      puts "***Type exit to leave***"
      puts "***Type list to see game list again***"
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i <= 10
        new_game = BggRank::Game.all[input.to_i-1]


        puts "Title: #{new_game.name}"
        puts "Publication Year: #{new_game.year}"
        puts "Rating: #{new_game.rating}"
        puts "URL: #{new_game.url}"
        puts ""
      elsif input == "list"
        list_games[0..9]

      end
    end
  end

  def goodbye
    puts 'Goodbye!'
  end
end
