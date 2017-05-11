


define(['jquery'],function($){

    return {
        init:function(){
			$('body').append('<div id="denglu">');
			$('#denglu').load('../html/denglu.html',function(){
				    var oName = document.getElementById('username');
		            var oPsw = document.getElementById('password');
		            var oAge = document.getElementById('age');
		            var oBtn = document.getElementById('btn');
	                console.log(oBtn);
	
		            oBtn.onclick = function(){
		                var name = oName.value;
		                var psw = oPsw.value;
		                var age = oAge.value;
		               $.post("../../php/reg2.php", {  
		               	"username":name,
                        "password":psw,
                        "age":age},
						 function(data){
						    alert(data);
						    window.location = "../../app/index/index.html";
						 });
		            }
				
			});
            return this;
        },
        bind:function(){

        }

    }
})