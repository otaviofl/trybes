import "bootstrap";

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import { initUpdateBookbarOnScroll } from '../components/book-bar-match';
initUpdateBookbarOnScroll();


$(document).ready(function() {
  var $amount = $("#amount").html();
  $("button").click(function() {
    var id = this.id
    if (id === "minus" && $amount > 0) {
      $amount--;
      $("#amount").html($amount);
    }
    else if (id === "plus") {
      $amount++;
      $("#amount").html($amount);
    }

  });
});
