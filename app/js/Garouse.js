

define(['jquery','jquery.flexslider-min'],function($,flexslider){

    return {
        init:function(){
			$('body').append('<div id="Garouse">');
			$('#Garouse').load('../html/Garouse.html');
			
			setTimeout(function(){
				$('.flexslider').flexslider({
					directionNav: true,
					pauseOnAction: false
				});
			},500);
			
            return this;
        },
        bind:function(){
        	
            return this;
          
        },

    }
})

