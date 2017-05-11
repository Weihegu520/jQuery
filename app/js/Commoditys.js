


//购物车的实例
define(['jquery','top','Cods','foot'],function($,top,Cods,foot){

    return {
        init:function(){
			top.init();
			Cods.init();
			foot.init();
            return this;
        },
        bind:function(){

        }

    }
})