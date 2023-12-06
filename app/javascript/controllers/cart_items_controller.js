import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cart-items"
export default class extends Controller {
  static targets = ["form", "list", "cart", "trash"]
  static values = { id: Number }
  connect() {
  }

  create(event) {
    event.preventDefault();
    this.form = this.formTargets.find((form) => form === event.currentTarget)
    const url = this.form.action
    console.log(url);
    fetch(url, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        this.cartTarget.innerHTML = data.html
      })
  }

  delete(event) {
    event.preventDefault();
    this.trash = this.trashTargets.find((trash) => trash === event.currentTarget)
    this.cartItemId = parseInt(this.trash.dataset.cartItemsIdValue)
    this.cartItemId
    const url = this.trash.href
    fetch(url, {
      method: "DELETE",
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        // this.cartTarget.innerHTML = data.html
      })

  }
}
