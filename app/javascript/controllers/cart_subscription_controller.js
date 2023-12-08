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
    const recipe_spec = data.recipe_spec

    this.cartTarget.innerHTML = `<h1>${data.recipe_name}</h1>`;

    const recipespechtml = recipe_spec.map(spec =>`<span>${spec}</span>`).join(" - ")

      this.cartTarget.innerHTML +=  `<div class="d-flex justify-content-center">${recipespechtml}</div>`;


    this.cartTarget.innerHTML += "</br>";

    for(const ingredient of recipe_ingredients) {
      this.cartTarget.innerHTML += `<li>${ingredient}</li>`;
    }

    this.cartTarget.innerHTML += "</br>";

    for(const step of recipe_steps) {
      this.cartTarget.innerHTML += `<li>${step}</li>`;
    }
  }

}
