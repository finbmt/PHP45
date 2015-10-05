<?php
	if (!empty($_POST)) {
		$TenTruyCap = $_POST['TenTruyCap'];
		$MatKhau = $_POST['MatKhau'];
		$HoTen = $_POST['HoTen'];

		include_once dirname(dirname(__file__)) . '/system/csdl.php';
		$sql_insert = "INSERT INTO `tbl_NguoiDung`(`TenTruyCap`, `MatKhau`, `HoTen`) 
		VALUES (N'$TenTruyCap',N'$MatKhau','$HoTen')";
		
		//echo $sql_insert;
		$result = execute($sql_insert);
		var_dump($result);
	}
?>
<?php
	$title_page = "Thêm Người Dùng";
	include_once 'layout_header.php';
	?>
		<form action="nguoidung_add.php" method="POST">
			<table class = "table table-bordered">
				<tr>
					<td colspan="2" class="mauxam"><span>THÊM MỚI Người Dùng</span></td>
				</tr>
				<tr class="mauxanhduong">
					<td>Tên Truy Cập</td>
					<td>
						<input type="text" name="TenTruyCap">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Mật khẩu</td>
					<td>
						<input type="password" name="MatKhau">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Họ Tên</td>
					<td>
						<input type="text" name="HoTen">
					</td>
				</tr>
				<tr>
					<td colspan="2" class="mauxam">
						<button class="btn btn-default" type="submit" value="Lưu"> <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>Lưu</button>
	  					<button class="btn btn-default" type="reset" value="Làm Lại">Làm Lại</button>
	  					<a class="btn btn-default" href="nguoidung_list.php">Quay về</a>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>