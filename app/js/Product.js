

define(['jquery','top','Pr','foot'],function($,top,Pr,foot){

    return {
        init:function(){
			top.init();
		    Pr.init();
			foot.init();
            return this;
        },
        bind:function(){

        },

    }
})