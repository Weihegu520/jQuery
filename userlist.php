<?php

   include 'connect.php';

	$page = 1;

	// 查询数据
	$sql = 'select username,email,age from user order by age desc limit '. ($page-1)*2 .',2';


	// 查询数据库获取数据
	$result = $conn->query($sql);



	//使用查询结果集
	$row = $result->fetch_all(MYSQLI_ASSOC);


	echo json_encode($row);

?>