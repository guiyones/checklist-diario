// app/javascript/controllers/flash_message_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    setTimeout(() => {
      this.element.remove()
    }, 5000) // Remove a mensagem flash após 5 segundos (5000 ms)
  }

  close() {
    this.element.remove()
  }
}
