import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="cart-subscription"
export default class extends Controller {
  static targets = [ "cart" ]
  connect() {

    console.log(this.cartTarget);
    console.log("Connected to cart subscription controller!");
    this.channel = createConsumer().subscriptions.create(
      { channel: "CartChannel" },
      { received: data => this.buildCart(data) }
    )
  }

  buildCart(data) {
    console.log(data);
    const recipe_name = data.recipe_name
    const recipe_ingredients = data.recipe_ingredients
    const recipe_steps = data.recipe_steps
    this.cartTarget.innerHTML = data.recipe_name
    for(const ingredient of recipe_ingredients) {
      this.cartTarget.innerHTML += ingredient
    }
    for(const step of recipe_steps) {
      this.cartTarget.innerHTML += step
    }
  }
}
