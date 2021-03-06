class BggRank::Scraper

  def self.scrape_bgg
    doc = Nokogiri::HTML(open("https://boardgamegeek.com/browse/boardgame"))

    doc.css('#collectionitems tr')[1..10].map do |game_doc|

      name = game_doc.css('.collection_objectname a').text.strip
      url = game_doc.css('.collection_objectname a').attribute('href').value
      url = "https://boardgamegeek.com" + url
      year = game_doc.css('.smallerfont').text.strip
      rating = game_doc.css('.collection_bggrating').text.strip[0..4]

      BggRank::Game.new(name, url, year, rating)

      end
  end


end
