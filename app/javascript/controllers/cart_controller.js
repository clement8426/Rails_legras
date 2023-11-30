import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    let progress = this.element.querySelectorAll(".progress-bar");
    let sumOfAll = this.element.querySelectorAll(".sum-of-all");
    let i = 0;

    progress.forEach((pro) => {
      let progressWidth = 0;
      let sum = parseFloat(sumOfAll[i].innerText);

      let minShippingAmount = parseFloat(
        this.element.querySelector(".ship").innerText
      );
      progressWidth = (sum / minShippingAmount) * 100;
      pro.style.width = progressWidth + "%";
      i += 1;
    });
  }
}
