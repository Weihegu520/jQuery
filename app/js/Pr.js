


define(['jquery'],function($){

    return {
        init:function(){
			$('body').append('<div id="Product">');
			$('#Product').load('../html/Product.html',function(){
				
				 $.post("../../php/Supuli.php",{},
				      function(data){
				      	var res = data;
					    console.log(data);
				        update(data);
					 },"json");
		
                     function update(data){
                     	 console.log(data);
                     	 
                     	 for(var i=0; i<data.length; i++){
                     	 	  
                     	 	  var url = data[i].imgUrl;
                     	 	  var uid = data[i].uid;
                     	 	  var name = data[i].name; 
                     	 	  var price = data[i].price;
                     	 	  var describe = data[i].describe;
                     	 	  
                     	 	  console.log(url,uid,name,price,describe);

                              $(".btn-pp").append('<li>\
                              <div>\
                              <img src="http://localhost/'+url+'"><br>\
                              <a>'+name+'</a>\
                              <p>'+price+'</p>\
                              <sapn>'+describe+'</span>\
                              </div>\
                              <a href="../Commodity/Commodity.html?id='+uid+'"><img src="../../img/daisy_btn.png" class="mmstu"></a>\
                              </li>');
                     	 }
                     	 
                     }
				
			});
            return this;
        },
        bind:function(){

          
        },

    }
})