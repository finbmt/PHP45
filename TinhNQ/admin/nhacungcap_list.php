<?php
include_once dirname(dirname(__file__)) . '/system/csdl.php';

$sql = "SELECT * FROM `tbl_NhaCungCap`";
$data = select_array($sql);
?>
<html>
	<head>
		<meta charset="UTF-8"> 
		<title>Bang nhieu hang</title>
		<style type="text/css">
			table, td, th {
			   border: 1px solid #000;
			}
			
			th {
				padding: 5px;
				background-color: #e5e5e5;
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
		<table width="600px" cellspacing="0">
			<tr>
				<td colspan="6" class="mauxam"><span>QL NHÀ CUNG CẤP</span></td>
			</tr>
			<tr class="mauxanhduong">
				<th>Mã</th>
				<th>Tên NCC</th>
				<th>Địa Chỉ</th>
				<th>Điện Thoại</th>
				<th>Email</th>
				<th>#</th>
			</tr>
			<?php
			foreach ($data as $item) {
			?>
				<tr class="mauxanhduong">
					<td><?=$item['MaNhaCungCap'];?></td>
					<td><?=$item['TenNhaCungCap'];?></td>
					<td><?=$item['DiaChi'];?></td>
					<td><?=$item['DienThoai'];?></td>
					<td><?=$item['Email'];?></td>
					<td>
						<a href="#">Sửa</a> | <a href="#">Xóa</a>
					</td>
				</tr>
			<?php
			}
			?>
		</table>
		<a href="nhacungcap_add.php">Thêm mới</a>
	</body>
</html>