class Customer

  attr_accessor :name, :restaurants, :reviews
  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @restaurants = []
    @@all << self
  end  

  def self.all
    @@all
  end
  
  def self.find_by_name(name)
    self.all.find { |customer| customer.name == name }
  end

  def add_review(content)
    @reviews << content
    byebug    
  end

  def add_restaurant(restaurant)
    @restaurants << restaurant
  end

end

# customer = customer.add_review('it was good', Restaurant.new)
# a new review tied ot the restaurant
# and tied to the customer

  # Customer#add_review
  # Customer#add_restaurant

