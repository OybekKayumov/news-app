import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  initialize() { }
  
  connect() { }

  toggleMenu() {
    const bgIcon = document.getElementById('bgIcon')
    const menuList = document.getElementById('menuList')
    const closeIcon = document.getElementById('closeIcon')
    menuList.classList.toggle('hidden')
    // closeIcon.classList.toggle('!hidden')
    bgIcon.classList.toggle('hidden')
  }

  profileDropdown() { 
    const profileDropdown = document.getElementById('dropdown')
    profileDropdown.classList.toggle('hidden')
  }

// static targets = [ "name" ]
//   greet() {
//     const element = this.nameTarget
//     const name = element.value
//     console.log(`Hello, ${name}!`)
//   }

}
