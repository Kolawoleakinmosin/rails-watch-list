import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Save any kind of movie", "Try it, it's fun"],
      typeSpeed: 50,
      loop: true
    })
  }
}
