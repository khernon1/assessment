class Restaurant

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find { |restaurant| restaurant.name == name }
  end

  def self.find_or_create_restaurant(name) # used in customer class
    Restaurant.find_by_name(name) || Restaurant.new(name)
  end

  def customers
    Review.all.map do |review| 
      if review.restaurant == self
        review.customer
      end
    end
  end

  def reviews
    Review.all.map do |review|
      if review.restaurant = self
        review
      end
    end
  end

end

# Restaurant#customers
# Restaurant#reviews

