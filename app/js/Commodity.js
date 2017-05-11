

define(['jquery','top','Cy','foot'],function($,top,Cy,foot){

    return {
        init:function(){
			top.init();
			Cy.init();
			foot.init();
            return this;
        },
        bind:function(){
         
        }

    }
})