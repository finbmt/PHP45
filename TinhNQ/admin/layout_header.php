<?php
	session_start();
	if (!$_SESSION['user']) {
		header('location: index.php');
	}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<title><?=$title_page;?></title>
		<link href="../css/bootstrap.min.css" rel="stylesheet">
		<style type="text/css">
			body {
				min-height: 2000px;
				padding-top: 70px;
			}
			
			th {
				padding: 5px;
				background-color: #e5e5e5;
			}
			.mauxam 
			{
				background-color: #cecfce;
			}
			.col1 
			{
				width: 180px;
			}
			input 
			{
				width: 100%;
			}

			.keywords 
			{
				width: 200px;
			}
		</style>
	</head>
	<body>
	<nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
            
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?= $_SESSION['user']['HoTen']; ?><span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Thông Tin</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="logout.php">Đăng xuất</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <div class = "container">
    	<div class="row">
    	 	<div class="col-md-9">