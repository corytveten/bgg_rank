class BggRank::Scraper

  def self.scrape_bgg
    doc = Nokogiri::HTML(open("https://boardgamegeek.com/browse/boardgame"))

    #doc.css('.collection_table') puts all info in first index
    #doc.css('.collection_table a') give index 1 - 10 with blanks
    doc.css('#collectionitems tr')[1..10].each do |game_doc|

      #binding.pry
      name = game_doc.css('.collection_objectname a').text.strip
      year = game_doc.css('.collection_objectname span').text.strip
      #designer = "unknown"
      #url = 'http://boardgamegeek.com'
        #binding.pry
      BggRank::Game.new(name, year)
  #    game = self.new
  #    game.name = doc.css(".collection_objectname a").text.strip
  #    game.year = doc.css("#results_objectname1 span").text.strip
  #    game.designer = "Unknown"
  #    game = game.text.strip
    #games << game
      end
  end

  def self.scrape_details(game)

  end

end
