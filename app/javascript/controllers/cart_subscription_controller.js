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
    const recipe_spec = data.recipe_spec
    const recipe_ingredients = data.recipe_ingredients
    const recipe_steps = data.recipe_steps
    const recipe_img = data.recipe_img

    this.cartTarget.innerHTML = `<img src="${recipe_img}" alt="${recipe_name}">`;
    this.cartTarget.innerHTML = `<h1>${data.recipe_name}</h1>`;

    recipe_spec.forEach(spec => {
      this.cartTarget.innerHTML += `<p>${spec}</p>`;
    });
    recipe_ingredients.forEach(ingredient => {
      this.cartTarget.innerHTML += `<li>${ingredient}</li>`;
    });

    recipe_steps.forEach(step => {
      this.cartTarget.innerHTML += `<p>${step}</p>`;
    });
  }
}
