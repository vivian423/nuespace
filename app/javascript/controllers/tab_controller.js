import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tab"
export default class extends Controller {
  static targets = ["booking", "tab_booking", "listing", "tab_listing", "received_listing", "tab_received_listing"]
  connect() {
    console.log("The 'tabs' controller is now loaded!")
  }

  display_bookings(event) {
    event.preventDefault()
    this.bookingTarget.classList.remove("hide-info")
    this.tab_bookingTarget.classList.add("active")

    this.listingTarget.classList.add("hide-info")
    this.tab_listingTarget.classList.remove("active")

    this.received_listingTarget.classList.add("hide-info")
    this.tab_received_listingTarget.classList.remove("active")
  }

  display_listings(event) {
    event.preventDefault()
    this.listingTarget.classList.remove("hide-info")
    this.tab_listingTarget.classList.add("active")

    this.bookingTarget.classList.add("hide-info")
    this.tab_bookingTarget.classList.remove("active")

    this.received_listingTarget.classList.add("hide-info")
    this.tab_received_listingTarget.classList.remove("active")
  }

  display_received_listings(event) {
    event.preventDefault()
    this.received_listingTarget.classList.remove("hide-info")
    this.tab_received_listingTarget.classList.add("active")

    this.bookingTarget.classList.add("hide-info")
    this.tab_bookingTarget.classList.remove("active")

    this.listingTarget.classList.add("hide-info")
    this.tab_listingTarget.classList.remove("active")
  }

}

// <li>
//   <a href="#" class="tab-underlined" data-tab-target="tab_received_listings" data-action="click->tab#display_received_listings">Received bookings</a>
