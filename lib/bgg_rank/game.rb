class BggRank::Game
  attr_accessor :name, :year, :designer, :url

  def self.scrape_games
    games = []

    games << self.scrape_bgg

  #  game_1 = self.new
  #  game_1.name = "Gloomhaven"
  #  game_1.year = "2017"
  #  game_1.designer = "Isaac Childress"
  #  game_1.url = "https://boardgamegeek.com"

  #  game_2 = self.new
#    game_2.name = "Pandemic Legacy"
  #  game_2.year = "2015"
  #  game_2.designer = "Matt Leacock"
  #  game_2.url = "https://boardgamegeek.com"

    games
  end

  def self.scrape_bgg
    doc = Nokogiri::HTML(open("https://boardgamegeek.com/browse/boardgame"))

    #binding.pry
    game = self.new
    game.name = doc.css("#results_objectname1 a").text
    game.year = doc.css("#results_objectname1 span").text
    game.designer = "Unknown"
    game.url = "Unknown"
    game
  end
end
