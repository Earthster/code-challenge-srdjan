import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['content']

  connect() {
    this.toggleClass = '--hidden';
    this.element.openModal = this.open.bind(this);
    this.element.closeModal = this.close.bind(this)
    this.isOpen = !this.element.classList.contains(this.hiddenClass);
  }

  close(){
    this.element.querySelector("#modal").classList.add(this.toggleClass)
  }

  open(){
    this.element.querySelector("#modal").classList.remove(this.toggleClass)
  }
}
