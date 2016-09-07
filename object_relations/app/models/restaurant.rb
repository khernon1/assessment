class Restaurant

  attr_accessor :name, :customers, :reviews

  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @customers = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find { |restaurant| restaurant.name == name }
  end

  def add_review(content)
    @reviews << content    
  end

end

# Restaurant#customers
# Restaurant#reviews

