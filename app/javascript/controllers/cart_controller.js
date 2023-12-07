import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    let progress = this.element.querySelectorAll(".progress-bar");
    let sumOfAll = this.element.querySelectorAll(".sum-of-all");
    let shipMin = this.element.querySelectorAll(".ship");
    let i = 0;

    progress.forEach((pro) => {
      let progressWidth = 0;
      let sum = parseFloat(sumOfAll[i].innerText);

      let minShippingAmount = parseFloat(shipMin[i].innerText);

      progressWidth = (sum / minShippingAmount) * 100;
      if (progressWidth >= minShippingAmount) {
        this.element
          .querySelectorAll("button")
          [i].classList.remove("button-gris");
      }
      pro.style.width = progressWidth + "%";
      i += 1;
      console.log(sum);
      console.log(minShippingAmount);
    });
  }
}
