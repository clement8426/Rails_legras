// Stimulus controller (geoloc_controller.js)
import { Controller } from "@hotwired/stimulus";
import mapboxgl from "mapbox-gl"; // Don't forget this!

export default class extends Controller {
  static values = {
    apiKey: String,
  };
  static targets = ["address", "addressWrapper"];

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;
    console.log(this.apiKeyValue);
    this.getLocation();
  }

  getLocation() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        this.handleSuccess.bind(this),
        this.handleError.bind(this)
      );
    } else {
      console.error("Geolocation is not supported by this browser.");
    }
  }

  handleSuccess(position) {
    const latitude = position.coords.latitude;
    const longitude = position.coords.longitude;

    const addressInput = document.getElementById("query_address"); // Replace "query_address" with the actual ID of your address input
    if (addressInput) {
      addressInput.value = `${latitude}, ${longitude}`;
      console.log(
        fetch(
          `https://api.mapbox.com/geocoding/v5/mapbox.places/${longitude},${latitude}.json?access_token=${this.apiKeyValue}`,
          {
            headers: { Accept: "application/json" },
          }
        )
          .then((response) => response.json())
          .then((data) => {
            this.addressTarget.value = data.features[0].place_name;
            this.addressWrapperTarget.querySelector(
              ".mapboxgl-ctrl-geocoder--input"
            ).value = data.features[0].place_name;
            console.log(data.features[0].place_name);
          })
      );
    }

    console.log(`${latitude}, ${longitude}`);
  }

  handleError(error) {
    console.error(`Geolocation error: ${error.message}`);
  }
}
