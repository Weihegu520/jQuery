<?php

       $name = $_POST['username'];
       $psw = $_POST['password'];
       $age = $_POST['age'];

       //连接数据库操作
       $con = new mysqli('127.0.0.1','root','','supumyin');
 
       //获取当前所有用户的信息
       $sql = 'select * from dome';
       $res = $con->query($sql);
       
       
       $bool = true;
       
       if($res->num_rows>0){
       	     while($row = $res->fetch_assoc()){
       	     	 if($row['username'] == $name){
       	     	 	   $bool = false;
       	     	 }
       	     }
       }
       
       
       if($bool){
       	    $sql = 'insert into dome (username,password,age) values("'.$name.'","'.$psw.'","'.$age.'")';
       	    if($con->query($sql)){
       	    	  echo "注册成功";
       	    }else{
       	    	  echo "注册失败";
       	    }
       }else{
       	   echo "用户已经注册";
       }
       
       $con->close();
?>