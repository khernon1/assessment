class Review
 
  attr_accessor :content, :restaurants, :reviews
  @@all = []

  def initialize(content, restaurant, customer)
    @content = content
    @restaurant = restaurant
    @customer = customer
    customer.add_review(content)
    customer.add_restaurant(restaurant)
    restaurant.add_review(content)
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

