class Restaurant {
  constructor(name) {
    this.name = name
    store.restaurants.push(this)
  }

  all() {
    return store.restaurants
  }

  find_by_name(name) {
    for (let i = 0; i < store.restaurants.length; i++) {
      if (store.restaurants[i].name === name) {
        return store.restaurants[i]
      }        
    }
  }

  find_or_create_restaurant(name) {
    let restaurant = this.find_by_name(name)
      if (restaurant === undefined) {        
        return restaurant = new Restaurant(name)
      }
    return restaurant
  }

  customers() {
    let restaurant_customers = []
    for (let i = 0; i < store.reviews.length; i++) {
      if (store.reviews[i].restaurant === this) {
        restaurant_customers.push(store.reviews[i].customer)
      }
    }
    return restaurant_customers
  }

  reviews() {
    let restaurant_reviews = []
    for (let i = 0; i < store.reviews.length; i++) {
      if (store.reviews[i].restaurant === this) {
        restaurant_reviews.push(store.reviews[i].content)
      }
    }
    return restaurant_reviews
  }

}

