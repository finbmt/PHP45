<?php
	session_start();
	include_once dirname(dirname(__file__)) . '/system/csdl.php';

	if (!empty($_POST)) {
		// xu ly dang nhap
		$TenTruyCap = $_POST['TenTruyCap'];
		$MatKhau = $_POST['MatKhau'];

		$sql_login = "SELECT * FROM `tbl_NguoiDung` 
		where `TenTruyCap` = '$TenTruyCap' 
		and `MatKhau` = '$MatKhau'";

		$data_login = select_array($sql_login);

		if ($data_login) {
			// login dung
			$_SESSION['user'] = $data_login[0];
			header('location: hanghoa_list.php');
		}
		else
		{
			$message = "<p class='bg-danger'>Bạn nhập sai tên truy cập or mật khẩu</p>";
		}
	}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
    	<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	    <meta name="description" content="">
	    <meta name="author" content="">
	    <title>Signin Template for Bootstrap</title>

	    <!-- Bootstrap core CSS -->
	    <link href="../css/bootstrap.min.css" rel="stylesheet">

	    <!-- Custom styles for this template -->
	    <link href="../css/signin.css" rel="stylesheet">
  </head>

  <body>

    <div class="container">
      <form class="form-signin" action="index.php" method="POST">
        <h2 class="form-signin-heading">Please sign in</h2>
        <?=$message; ?>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input name="TenTruyCap" type="text" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
        <label for="inputPassword" class="sr-only">Password</label>
        <input name="MatKhau"  type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>
    </div> <!-- /container -->
</body></html>