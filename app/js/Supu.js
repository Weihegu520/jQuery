


define(['jquery','top','Garouse','banner','foot'],function($,top,Garouse,banner,foot){

    return {
        init:function(){
			top.init();
			Garouse.init();
			banner.init();
			foot.init();
            return this;
        },
        bind:function(){

        },

    }
})

