class BggRank::CLI

  def call
    list_games
    menu
    goodbye
  end

  def list_games
    puts "BGG 100"
    puts ""
    #@games = BggRank::Scraper.scrape_bgg
    BggRank::Scraper.scrape_bgg

    #binding.pry
    @games = BggRank::Game.all
    @games.each.with_index(1) do |game, index|
      puts "#{index}. #{game.name}"
    end
    #@games.each.with_index(1) do |game, i|
      #puts "#{i}. #{game}"
    #end
    #@games = BggRank::Game.scrape_bgg
    #@games.each.with_index(1) do |game, i|
    #  puts "#{i}. #{game}"
    #end
  end

  def menu
    input = nil
    while input != "exit"
      puts "***Enter the number of the game for more info***"
      puts "***Type exit to leave***"
      puts "***Type menu for menu***"
      input = gets.strip.downcase

      if input.to_i > 0
        a_game = @games[input.to_i-1]
        puts "#{a_game.name} #{a_game.year} - #{a_game.designer}"
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
