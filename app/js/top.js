


define(['jquery'],function($){

    return {
        init:function(){
			$('body').append('<div id="top">');
			$('#top').load('../html/top.html');
            return this;
        },
        bind:function(){

        }

    }
})

