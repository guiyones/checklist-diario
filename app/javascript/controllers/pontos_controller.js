import { Controller } from "@hotwired/stimulus"

// Conecta ao data-controller="pontos"
export default class extends Controller {
  static targets = ["checkbox", "counter", "circle"]

  connect() {
    this.updateCount()
  }

  updateCount() {
    const checkboxes = this.checkboxTargets
    let total = 0
    const max = 3

    checkboxes.forEach(cb => {
      const name = cb.dataset.habitName
      if (cb.checked) {
        if (name === "alcool" || name === "maconha") {
          total -= 1
        } else {
          total += 1
        }
      }
    })

    this.counterTarget.textContent = `${total} / ${max}`

    // 🟢 Animação visual do círculo
    const circle = this.circleTarget

    // Remove estilos anteriores
    circle.classList.remove(
      "bg-gray-100",
      "bg-emerald-100",
      "bg-emerald-200",
      "bg-emerald-300",
      "bg-emerald-400",
      "bg-emerald-500",
      "bg-red-100",
      "border-emerald-400",
      "border-red-400"
    )

    // Define cores baseadas na pontuação
    if (total <= 0) {
      circle.classList.add("bg-red-100", "border-red-400")
    } else if (total < max) {
      circle.classList.add(`bg-emerald-${100 + total * 50}`, "border-emerald-400")
    } else {
      circle.classList.add("bg-emerald-500", "border-emerald-500")
      circle.classList.add("animate-pulse")
      setTimeout(() => circle.classList.remove("animate-pulse"), 1000)
    }

    // Cor e ênfase do número
    if (total === max) {
      this.counterTarget.classList.add("text-white")
    } else {
      this.counterTarget.classList.remove("text-white")
    }
  }
}
  
