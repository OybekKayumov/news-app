import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    initialize() {console.log('initialized')}
    connect() {
      console.log('clicked')
  }
}
