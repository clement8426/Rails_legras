import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cart-items"
export default class extends Controller {
  static targets = ["form", "list", "cart", "trash", "progress"]
  static values = { id: Number }
  connect() {
    // console.log('coucou');
    // this.#updateProgressBars
  }

  create(event) {
    event.preventDefault();
    this.form = this.formTargets.find((form) => form === event.currentTarget)
    const url = this.form.action
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
    this.cartItemId = this.trash.dataset.cartItemsIdValue
    if (this.cartTargets.length > 1) {
      this.cart = event.currentTarget.closest('.list-group-flush')
    } else {
      this.cart = this.cartTarget
    }

    console.log(this.cart)
    let data = new FormData()
    data.append("id", this.cartItemId)
    const url = this.trash.href
    fetch(url, {
      method: "DELETE",
      headers: { "X-CSRF-Token": document.querySelector("meta[name=csrf-token]").content,
                 "Accept": "application/json" },
      body: data
    })
      .then(response => response.json())
      .then((data) => {
        this.cart.innerHTML = data.html
        const sumOfAll = this.cart.querySelector(".sum-of-all");
        const shipMin = this.cart.querySelector(".ship");
        let progressWidth = 0;
        const sum = parseFloat(sumOfAll.innerText);
        const minShippingAmount = parseFloat(shipMin.innerText);
        progressWidth = (sum / minShippingAmount) * 100;
        this.cart.querySelector(".progress-bar").style.width = progressWidth + "%";
      })
  }
}
