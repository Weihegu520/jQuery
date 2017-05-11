

define(['jquery','top','dl','foot'],function($,top,dl,foot){

    return {
        init:function(){
        	
			top.init();
			dl.init();
			foot.init();
            return this;
        },
        bind:function(){

        }

    }
})

