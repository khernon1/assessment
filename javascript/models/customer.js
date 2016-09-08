class Customer {
  constructor(name) {
    this.name = name
    store.customers.push(this)
  }

  all() {
    return store.customers
  }

  find_by_name(name) {
    for (let i = 0; i < store.customers.length; i++) {
      if (store.customers[i].name === name) {
        return store.customers[i]
      }
    }
  }

  add_review(content, restaurant_name) {
    let restaurant = Restaurant.prototype.find_or_create_restaurant(restaurant_name)
    new Review(content, restaurant, this)  
  }

  add_restaurant(name) {
    new Restaurant(name)
  }
}


