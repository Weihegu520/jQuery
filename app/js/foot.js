
define(['jquery'],function($){

    return {
        init:function(){
			$('body').append('<div id="footer">');
			$('#footer').load('../html/foot.html');
            return this;
        },
        bind:function(){

        }

    }
})

