class BggRank::Game
  attr_accessor :name, :year, :designer, :url

  def self.all
    #puts "1. Gloomhaven
    #2. Pandemic Legacy".gsub /^\s*/, ''

    game_1 = self.new
    game_1.name = "Gloomhaven"
    game_1.year = "2017"
    game_1.designer = "Isaac Childress"
    game_1.url = "https://boardgamegeek.com"

    game_2 = self.new
    game_2.name = "Pandemic Legacy"
    game_2.year = "2015"
    game_2.designer = "Matt Leacock"
    game_2.url = "https://boardgamegeek.com"

    [game_1, game_2]
  end

end
