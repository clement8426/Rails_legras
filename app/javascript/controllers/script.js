document.addEventListener("DOMContentLoaded", function() {
const button = document.getElementById("checkout-button");
button.disabled = true;

if (total_cart_price.to_f > network.minimum_shipping_amount.to_f) {
  button.disabled = false;
} else {
  button.disabled = true;
}
});
