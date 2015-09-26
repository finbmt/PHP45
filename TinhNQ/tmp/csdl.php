<?php
	// server : localhost
	// user name : root
	// password : mysql
	// database : inet_php45
	/*
	$link = mysqli_connect("localhost", "root", "mysql", "inet_php45");

	// kiểm tra kết nối
	if (mysqli_connect_errno()) {
		echo "ket noi khong thanh cong";
		exit;
	}

	echo "ket noi csdl thanh cong";
	*/

	
	/*$sql_insert = "INSERT INTO tbl_LoaiHang (TenLoaiHang) VALUES ('vi du')";
	$object1 = mysqli_query($link, $sql_insert);
	
	$sql_update = "UPDATE tbl_LoaiHang SET TenLoaiHang='demo' 
	WHERE MaLoaiHang='11'";

	$object2 = mysqli_query($link, $sql_update);

	$sql_delete = "DELETE FROM `tbl_LoaiHang` WHERE `MaLoaiHang`='10'";
	$object3 = mysqli_query($link, $sql_delete);*/

	//var_dump($object);

	// lấy nhiều dữ liệu --> output mảng dữ liệu
	/*$sql_select = "SELECT * FROM `tbl_LoaiHang`";
	$object_select = mysqli_query($link, $sql_select);

	while($row = $object_select->fetch_array())
	{
		$data[] = $row;
	}
*/
	// lấy 1 giá trị --> output 1 số
	/*$sql_select = "SELECT count(1) as count FROM `tbl_LoaiHang`";
	$object_select = mysqli_query($link, $sql_select);
	$data = $object_select->fetch_array();
	$tongso = $data[0]['count'];

	var_dump($tongso);

	// đóng kết nối
	mysqli_close($link);*/

	$link = null;

	/**
	* Ham mo ket noi
	*/
	function connect_server()
	{
		// server : localhost
		// user name : root
		// password : mysql
		// database : inet_php45
		$link = mysqli_connect("localhost", "root", "mysql", "inet_php45");

		// kiểm tra kết nối
		if (mysqli_connect_errno()) {
			echo "ket noi khong thanh cong";
			exit;
		}

		return $link;
	}

	/**
	* Ham dong ket noi
	*/
	function close_server($link)
	{
		mysqli_close($link);
	}

	/**
	* Ham thuc thi : them, xoa, sua
	*/
	function execute($link, $sql)
	{
		// mo ket noi
		$link = connect_server();
		// xu ly
		$obj = mysqli_query($link, $sql);
		// dong ket noi
		close_server($link);
		return $obj;
	}

	/**
	* Ham lay du lieu 
	* output : mang
	*/
	function select_array($link, $sql)
	{
		// mo ket noi
		$link = connect_server();
		$obj = mysqli_query($link, $sql);
		while($row = $obj->fetch_array())
		{
			$data[] = $row;
		}

		// dong ket noi
		close_server($link);

		return $data;
	}

	/**
	* Ham lay du lieu 
	* output : so
	*/
	function select_count($link, $sql)
	{
		// mo ket noi
		$link = connect_server();
		
		$obj = mysqli_query($link, $sql);
		$data = $obj->fetch_array();

		// dong ket noi
		close_server($link);

		return $data[0]['count'];
	}


?>