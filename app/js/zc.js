

define(['jquery'],function($){

    return {
        init:function(){
			$('body').append('<div id="zhuc">');
			$('#zhuc').load('../html/zhuc.html',function(){
			      
				    var oName = document.getElementById('username');
		            var oPsw = document.getElementById('password');
		            var oAge = document.getElementById('age');
		            var oBtn = document.getElementById('btn');
	                console.log(oBtn);
	
		            oBtn.onclick = function(){
		                var name = oName.value;
		                var psw = oPsw.value;
		                var age = oAge.value;
		               $.post("../../php/reg.php", {  
		               	"username":name,
                        "password":psw,
                        "age":age},
						 function(data){
						    alert(data);
						    window.location = "../../app/denglu/denglu.html";
						 });
		            }
			});
			
            return this;
        },
        bind:function(){
           
           //结束
        }

    }
})

