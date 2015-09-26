<?php
	if (!empty($_POST)) {
		$TenNhaCungCap = $_POST['TenNhaCungCap'];
		$DiaChi = $_POST['DiaChi'];
		$Email = $_POST['Email'];
		$DienThoai = $_POST['DienThoai'];

		include_once dirname(dirname(__file__)) . '/system/csdl.php';
		$sql_insert = "INSERT INTO `tbl_NhaCungCap`(`TenNhaCungCap`, `DiaChi`, `DienThoai`, `Email`) 
		VALUES (N'$TenNhaCungCap',N'$DiaChi','$DienThoai','$Email')";
		
		//echo $sql_insert;
		$result = execute($sql_insert);
		var_dump($result);
	}
?>
<html>
	<head>
		<meta charset="UTF-8"> 
		<title>Bang nhieu hang</title>
		<style type="text/css">
			table, td {
			   border: 1px solid #000;
			}

			td {
				padding: 5px;
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
		</style>
	</head>
	<body>
		<form action="nhacungcap_add.php" method="POST">
			<table width="600px" cellspacing="0">
				<tr>
					<td colspan="2" class="mauxam"><span>THÊM MỚI NHÀ CUNG CẤP</span></td>
				</tr>
				<tr class="mauxanhduong">
					<td>Tên Nhà Cung Cấp</td>
					<td>
						<input type="text" name="TenNhaCungCap">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Địa Chỉ</td>
					<td>
						<input type="text" name="DiaChi">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Điện Thoại</td>
					<td>
						<input type="text" name="DienThoai">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Email</td>
					<td>
						<input type="text" name="Email">
					</td>
				</tr>
				<tr>
					<td colspan="2" class="mauxam">
						<button type="submit" value="Lưu">Lưu</button>
	  					<button type="reset" value="Làm Lại">Làm Lại</button>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>