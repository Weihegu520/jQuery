<?php
    include 'Supu.php';
	// 查询数据
	$sql = 'select * from goods';

    //设置字符集为UTF-8
    $result = $conn->query('set names utf8');

	// 查询数据库获取数据
	$result = $conn->query($sql);

	//使用查询结果集
	$row = $result->fetch_all(MYSQLI_ASSOC);
	
	echo json_encode($row,JSON_UNESCAPED_UNICODE);

?>