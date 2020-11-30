// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

import { previewImageOnFileSelect } from '../components/photo_preview';
import { fetchRandomKondo } from '../components/random_kondo';
import { flipKondoCard } from '../components/flip';

import { initAutocomplete } from '../plugins/init_autocomplete';
document.addEventListener('turbolinks:load', () => {

 previewImageOnFileSelect();
 initAutocomplete();
 fetchRandomKondo();
 flipKondoCard();

 document.getElementById("open").addEventListener("click", openNav);
 /* Set the width of the side navigation to 250px and the left margin of the page content to 250px */
 function openNav() {
   document.getElementById("mySidenav").style.width = "250px";
   document.getElementById("main").style.marginRight = "250px";
   document.querySelector(".fa-bars").style.display = "none"
 }

 document.getElementById("close").addEventListener("click", closeNav);
 /* Set the width of the side navigation to 0 and the left margin of the page content to 0 */
 function closeNav() {
   document.getElementById("mySidenav").style.width = "0";
   document.getElementById("main").style.marginRight = "0";
   document.querySelector(".fa-bars").style.display = ""
 }
  $(function () {
    $('[data-toggle="tooltip"]').tooltip()
  })
  function openOption(evt, option) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(option).style.display = "block";
    evt.currentTarget.className += " active";
  }
});
