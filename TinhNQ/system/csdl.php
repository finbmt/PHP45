<?php
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
	function execute($sql)
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
	function select_array($sql)
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
	function select_count($sql)
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