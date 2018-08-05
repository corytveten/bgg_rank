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


end
