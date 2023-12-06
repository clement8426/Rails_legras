import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="cart-items"
export default class extends Controller {
  static targets = ["form", "list", "cart", "trash"];

  connect() {
    console.log(this.trashTargets);
  }

  create(event) {
    event.preventDefault();
    // console.log(event.currentTarget)
    this.form = this.formTargets.find((form) => form === event.currentTarget);
    const url = this.form.action;
    console.log(url);
    fetch(url, {
      method: "POST",
      headers: { Accept: "application/json" },
      body: new FormData(this.formTarget),
    })
      .then((response) => response.json())
      .then((data) => {
        // console.log(data.html)
        this.cartTarget.innerHTML = data.html;
        // console.log(this.formTargets)
        // this.formTargets.forEach((form) => form.reset() )
      });
  }
}
