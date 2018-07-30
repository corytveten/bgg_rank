class BggRank::Scraper

  def self.scrape_bgg
    doc = Nokogiri::HTML(open("https://boardgamegeek.com/browse/boardgame"))

    #doc.css('.collection_table') puts all info in first index
    #doc.css('.collection_table a') give index 1 - 10 with blanks
    doc.css('#collectionitems tr')[1..10].each do |game_doc|

      #binding.pry
      name = game_doc.css('.collection_objectname a').text.strip
      url = game_doc.css('.collection_objectname a').attribute('href').value
      url = "https://boardgamegeek.com" + url
      #designer = "unknown"
      #url = 'http://boardgamegeek.com'
        #binding.pry
      BggRank::Game.new(name, url)

      end
  end

  def self.scrape_details(game)
    url = game.url
    doc = Nokogiri::HTML(open(url))
    #binding.pry
    game.year = doc.css('.game-header-title-info span').text.strip
    game.designer = doc.css('.credits a').text.strip
    #doc.css().text.strip
  end

end
