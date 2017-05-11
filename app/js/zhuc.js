



define(['jquery','top','zc','foot'],function($,top,zc,foot){

    return {
        init:function(){
			top.init();
			zc.init();
			foot.init();
            return this;
        },
        bind:function(){

        }

    }
})