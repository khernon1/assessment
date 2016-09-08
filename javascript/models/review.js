class Review {
  constructor(content, restaurant, customer) {
    this.content = content
    this.restaurant = restaurant
    this.customer = customer
    store.reviews.push(this)
  }

  all() {
    return store.reviews
  }

}

let todd = new Customer('todd')
let julie = new Customer('julie')

let pizza = new Restaurant('pizza')
let soup = new Restaurant('soup')

new Review('it was good', pizza, todd)
new Review('good cheese', pizza, julie)
new Review('no soup for you', soup, julie )