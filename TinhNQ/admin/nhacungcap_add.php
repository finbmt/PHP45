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
<?php
	$title_page = "Thêm Nhà Cung Cấp";
	include_once 'layout_header.php';
	?>
		<form action="nhacungcap_add.php" method="POST">
			<table class = "table table-bordered">
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
						<button class="btn btn-default" type="submit" value="Lưu"> <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>Lưu</button>
	  					<button class="btn btn-default" type="reset" value="Làm Lại">Làm Lại</button>
	  					<a class="btn btn-default" href="nhacungcap_list.php">Quay về</a>
					</td>
				</tr>
			</table>
		</form>
<?php
	include_once 'layout_footer.php';
?>