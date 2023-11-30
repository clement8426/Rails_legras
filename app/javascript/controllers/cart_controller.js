import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    var cartItems = this.element.querySelectorAll(".list-group-item");
    var progress = this.element.querySelector(".progress-bar");

    var sum = Array.from(cartItems).reduce(function (acc, listItem) {
      var priceText = listItem.querySelector(".col-md-4").textContent.trim();
      var price = parseFloat(priceText.replace("€", "").replace(",", ""));
      return acc + price;
    }, 0);

    console.log("hello");
    var minShippingAmount = parseFloat(this.data.get("minShippingAmount"));

    var progressWidth = (sum / minShippingAmount) * 100;
    progress.style.width = progressWidth + "%";
  }
}
