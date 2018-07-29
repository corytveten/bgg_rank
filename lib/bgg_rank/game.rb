class BggRank::Game
  attr_accessor :name, :year, :designer, :url

  @@all = []

  def initialize(name, year)
    @name = name
    @year = year
    @@all << self
  end

  def self.all
    @@all
  end
#  def self.scrape_games
#    games = []

#    games << self.scrape_bgg

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
    #binding.pry
#    games
#  end

=begin
  def self.scrape_bgg
    games = []
    doc = Nokogiri::HTML(open("https://boardgamegeek.com/browse/boardgame"))
    #doc.css('.collection_objectname a').text.strip

    doc.css('.collection_objectname a')[0..9].map do |game|

      name = game.css('.collection_objectname a').text.strip
      year = game.css('.collection_objectname span').text.strip
      designer = "unknown"
      url = 'http://boardgamegeek.com'
      game = self.new
#    game = self.new
#    game.name = doc.css(".collection_objectname a").text.strip
#    game.year = doc.css("#results_objectname1 span").text.strip
#    game.designer = "Unknown"
#    binding.pry
#    game = game.text.strip
    games << game
    end
    binding.pry
    games
  end
=end
end
