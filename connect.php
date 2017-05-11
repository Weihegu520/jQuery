<?php

    $servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = 'supumyin';

	// 创建连接
	$conn = new mysqli($servername, $username, $password, $dbname);

	// 检测连接
	if ($conn->connect_error) {
	    die("连接失败: " . $conn->connect_error);
	} 
	echo "连接成功";
	
//	//查询数据
//	$sql = "select * from user";
//	
//	//查询数据库获取
//	$result = $conn->query($sql);
//	
//	$row = $result->fetch_all(MYSQLI_ASSOC);
//	
//	echo json_encode($result);
//	
//	//
	
	
    
?>