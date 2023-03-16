import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startTime", "endTime" ]

  connect() {
    console.log("im here Hello!")
    // flatpickr(this.startTimeTarget, {})
    // flatpickr(this.endTimeTarget, {})
    this.flatPickrChange(this.startTimeTarget)
    this.flatPickrChange(this.endTimeTarget)
  }

  flatPickrChange(date) {
    flatpickr(date, { minDate: "today" })
  }
}
