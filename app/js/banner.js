

define(['jquery'],function($){

    return {
        init:function(){
			$('body').append('<div id="banner">');
			$('#banner').load('../html/banner.html');			
            return this;
        },
        bind:function(){
            
        },

   }
});

