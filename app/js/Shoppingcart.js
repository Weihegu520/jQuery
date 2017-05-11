



           //
define(['jquery','top','Sp','foot'],function($,top,Sp,foot){

    return {
        init:function(){
			top.init();
			Sp.init();
			foot.init();
            return this;
        },
        bind:function(){

        }

    }
})