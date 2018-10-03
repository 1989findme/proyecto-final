var x = document.getElementById("demo");
function getLocation() {
 if (navigator.geolocation) {
 navigator.geolocation.getCurrentPosition(showPosition);
 } else {
 x.innerHTML = "Geolocation is not supported by this browser.";
 }
}
function showPosition(position) {
 x.innerHTML = "Latitude: " + position.coords.latitude +
 "<br>Longitude: " + position.coords.longitude;
}

addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }

  $('.jarallax').jarallax({
    speed: 0.5,
    imgWidth: 1366,
    imgHeight: 768
  })

  $(document).ready(function () {
    $('#horizontalTab').easyResponsiveTabs({
      type: 'default', //Types: default, vertical, accordion
      width: 'auto', //auto or any width like 600px
      fit: true   // 100% fit in a container
    });
  });


  $(function(){

    $("#typed").typed({
      // strings: ["Typed.js is a <strong>jQuery</strong> plugin.", "It <em>types</em> out sentences.", "And then deletes them.", "Try it out!"],
      stringsElement: $('#typed-strings'),
      typeSpeed: 30,
      backDelay:700,
      loop: true,
      contentType: 'html', // or text
      // defaults to false for infinite loop
      loopCount: false,
      callback: function(){ foo(); },
      resetCallback: function() { newTyped(); }
    });

    $(".reset").click(function(){
      $("#typed").typed('reset');
    });

  });
  function newTyped(){ /* A new typed object */ }

  function foo(){ console.log("Callback"); }


  $(window).load(function(){
    $('.flexslider').flexslider({
    animation: "slide",
    start: function(slider){
      $('body').removeClass('loading');
    }
    });
  });

    jQuery(document).ready(function($) {
      $(".scroll").click(function(event){
        event.preventDefault();

    $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
      });
    });

  $(document).ready(function() {
    /*
    var defaults = {
      containerID: 'toTop', // fading element id
      containerHoverID: 'toTopHover', // fading element hover id
      scrollSpeed: 1200,
      easingType: 'linear'
    };
    */

    $().UItoTop({ easingType: 'easeOutQuart' });

  });
