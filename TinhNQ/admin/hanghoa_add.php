<?php
	if (!empty($_POST)) {
		$TenHang = $_POST['TenHang'];
		$HinhAnh = $_POST['HinhAnh'];
		$DVT = $_POST['DVT'];
		$DonGia = $_POST['DonGia'];
		$MaNhaCungCap = $_POST['MaNhaCungCap'];
		$MaLoaiHang = $_POST['MaLoaiHang'];
		$MoTa = $_POST['MoTa'];

		include_once dirname(dirname(__file__)) . '/system/csdl.php';
		$sql_insert = "INSERT INTO `tbl_DMHang`(`TenHang`, `HinhAnh`, `DVT`, `DonGia`, `MaNhaCungCap`, `MaLoaiHang`, `MoTa`) 
		VALUES (N'$TenHang',N'$HinhAnh',N'$DVT',N'$DonGia',N'$MaNhaCungCap',N'$MaLoaiHang',N'$MoTa')";
		
		//echo $sql_insert;
		$result = execute($sql_insert);
		var_dump($result);
	}
?>
<?php
	$title_page = "Thêm Hàng Hóa";
	include_once 'layout_header.php';
	?>
		<form action="hanghoa_add.php" method="POST">
			<table class = "table table-bordered">
				<tr>
					<td colspan="2" class="mauxam"><span>THÊM MỚI Hàng Hóa</span></td>
				</tr>
				<tr class="mauxanhduong">
					<td>Tên Hàng</td>
					<td>
						<input type="text" name="TenHang">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Hình Ảnh</td>
					<td>
						<input type="text" name="HinhAnh">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>DVT</td>
					<td>
						<input type="text" name="DVT">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Đơn Giá</td>
					<td>
						<input type="text" name="DonGia">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Mã Nhà Cung Cấp</td>
					<td>
						<input type="text" name="MaNhaCungCap">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Mã Loại Hàng</td>
					<td>
						<input type="text" name="MaLoaiHang">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Mô Tả</td>
					<td>
						<input type="text" name="MoTa">
					</td>
				</tr>
				<tr>
					<td colspan="2" class="mauxam">
						<button class="btn btn-default" type="submit" value="Lưu"> <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>Lưu</button>
	  					<button class="btn btn-default" type="reset" value="Làm Lại">Làm Lại</button>
	  					<a class="btn btn-default" href="hanghoa_list.php">Quay về</a>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>