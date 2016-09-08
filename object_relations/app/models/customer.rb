class Customer

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
    self.all.find { |customer| customer.name == name }
  end

  def add_review(content, restaurant_name)    
    restaurant = Restaurant.find_or_create_restaurant(restaurant_name)
    Review.new(content, restaurant, self) 
  end

  def reviews
    Review.all.select { |review| review.customer == self }
  end

  def add_restaurant(restaurant_name)
    restaurant = Restaurant.find_by_name(restaurant_name)
      if !restaurant
        Restaurant.new(restaurant_name)
      end
  end

  def restaurants
    self.reviews.map { |review| review.restaurant }
  end

end

# customer = customer.add_review('it was good', Restaurant.new)
# a new review tied ot the restaurant
# and tied to the customer

  # Customer#add_review
  # Customer#add_restaurant

