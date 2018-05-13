$(document).ready(function () {
       $(window).scroll(function () {
           if ($(this).scrollTop() > 100) {
               $('#up').fadeIn(1000);
           } else {
               $('#up').fadeOut(500);
           }
       });
       $('#up').click(function () {
           $("html, body").animate({
               scrollTop: 0
           }, 600);
           return false;
       });
		
		$('.mreze img').hover(vece, vrati);

		function vece() {
			$(this).css({height: '+=10%', width: '+=10%'});
		}
		function vrati() {
			$(this).css({height: "", width: ""});
		}
		
		
    });