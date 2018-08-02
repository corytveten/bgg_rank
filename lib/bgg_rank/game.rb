class BggRank::Game
  attr_accessor :name, :rating, :url, :year

  @@all = []

  def initialize(name, url, year, rating)
    @name = name
    @url = url
    @year = year
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end
#  def self.scrape_games
#    games = []

#    games << self.scrape_bgg

#  end

end
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
