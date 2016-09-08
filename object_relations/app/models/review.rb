class Review
 
  attr_accessor :content, :restaurant, :customer
  @@all = []

  def initialize(content, restaurant, customer)
    @content = content
    @restaurant = restaurant
    @customer = customer
    @@all << self
  end  

  def self.all
    @@all
  end

end


# Review#customer
# Review#restaurant

customer1 = Customer.new('grace')
customer2 = Customer.new('gina')

pizza = Restaurant.new('pizza')
sandwiches = Restaurant.new('sandwiches')

Review.new('it was good', pizza, customer1)
Review.new('not bad', pizza, customer2)

