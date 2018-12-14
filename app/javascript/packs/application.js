import "bootstrap";

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import { initUpdateBookbarOnScroll } from '../components/book-bar-match';
initUpdateBookbarOnScroll();


// BOOKING CONFIRMATION

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




// FOUR STEPS HOME

var stepForm = {
  init: function() {
    stepForm.build();
    $(".js-step-next").click(stepForm.next);
    $(".js-step-prev").click(stepForm.prev);
    $(".js-step-goto").click(stepForm.goTo);
  },
  build: function() {
    var nextBtn   = "<button class='btn js-step-next'>Next</button>",
        prevBtn   = "<button class='btn js-step-prev'>Prev</button>",
        container = "<div class='step-controls'></div>";

    $(".step-form .step").append(container);
    $(".step-form .step .step-controls").not(':first').append(prevBtn);
    $(".step-form .step .step-controls").not(':last').append(nextBtn);

    $(".step-form .step").each(stepForm.attrData);

    var gotoWrapper = "<div class='step-goto'></div>";

    $(".step-form").prepend(gotoWrapper);
    $(".step-form .step").each(stepForm.addGoToItems);
    $(".step-form .goto-item").each(stepForm.attrData);
    $(".step-form .goto-item:first").addClass("active");
  },
  addGoToItems: function(index) {
    var gotoLabel = index + 1,
        gotoItem  = "<span class='goto-item js-step-goto'>" + gotoLabel + "</span>";

    $(".step-goto").append(gotoItem);
  },
  attrData: function(index) {
    $(this).attr("data-step", index);
  },
  prev: function() {
    var step = stepForm.getStep($(this).closest(".step")) - 1;
    $(".steps").css("transform", "translateX(-" + step + "00vw)");
  },
  next: function() {
    var step = stepForm.getStep($(this).closest(".step")) + 1;
    $(".steps").css("transform", "translateX(-" + step + "00vw)");
  },
  goTo: function() {
    var step = stepForm.getStep($(this));
    $(".step-goto .goto-item").removeClass("active");
    $(this).addClass("active");
    $(".steps").css("transform", "translateX(-" + step + "00vw)");
  },
  getStep: function(container) {
    var step = parseInt(container.data("step"));
    return step;
  }
};

$(document).ready(stepForm.init);


// SUPPLIER BECOME A HOSTER
$(function() {
  $('#carousel-example-generic').carousel();

  $("#carousel-example-generic").swipe({
    swipeRight: function() {
      $(this).carousel('prev')
    },
    swipeLeft: function() {
      $(this).carousel('next')
    }
  });
})

