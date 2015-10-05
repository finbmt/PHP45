<?php
	include_once dirname(dirname(__file__)) . '/system/csdl.php';
	if (!empty($_GET['MaHang'])) {
		$MaHang = $_GET['MaHang'];
		$sql = "select * FROM `tbl_DMHang` where MaHang = '$MaHang'";
		$data = select_array($sql);
		$item = $data[0];
	}
	else{
		header('location: hanghoa_list.php');
	};

	if (!empty($_POST)) {
		$_MaHang = $_POST['MaHang'];
		$TenHang = $_POST['TenHang'];
		$HinhAnh = $_POST['HinhAnh'];
		$DVT = $_POST['DVT'];
		$DonGia = $_POST['DonGia'];
		$MaNhaCungCap = $_POST['MaNhaCungCap'];
		$MaLoaiHang = $_POST['MaLoaiHang'];
		$MoTa = $_POST['MoTa'];

		//echo $sql_insert;
		$sql_update = "UPDATE `tbl_DMHang` SET 
		`TenHang`= N'$TenHang',
		`HinhAnh`=N'$HinhAnh',
		`DVT`=N'$DVT',
		`DonGia`=N'$DonGia',
		`MaNhaCungCap`=N'$MaNhaCungCap',
		`MaLoaiHang`=N'$MaLoaiHang',
		`MoTa`=N'$MoTa'
		WHERE MaHang = '$_MaHang'";

		//echo $sql_update;
		$result = execute($sql_update);
		
		header('location: hanghoa_list.php');
	}
?>
<?php
	$title_page = "Thêm Hàng Hóa";
	include_once 'layout_header.php';
	?>
		<form action="hanghoa_edit.php" method="POST">
			<table class = "table table-bordered">
				<tr>
					<td colspan="2" class="mauxam"><span>Sửa Hàng Hóa</span></td>
				</tr>
				<tr class="mauxanhduong">
					<td>Mã Hàng Hóa</td>
					<td>
						<?= $MaHang;?>
						<input type="hidden" name="MaHang" value="<?= $item['MaHang'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Tên Hàng</td>
					<td>
						<input type="text" name="TenHang" value="<?= $item['TenHang'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Hình Ảnh</td>
					<td>
						<input type="text" name="HinhAnh" value="<?= $item['HinhAnh'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>DVT</td>
					<td>
						<input type="text" name="DVT" value="<?= $item['DVT'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Đơn Giá</td>
					<td>
						<input type="text" name="DonGia" value="<?= $item['DonGia'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Mã Nhà Cung Cấp</td>
					<td>
						<input type="text" name="MaNhaCungCap" value="<?= $item['MaNhaCungCap'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Mã Loại Hàng</td>
					<td>
						<input type="text" name="MaLoaiHang" value="<?= $item['MaLoaiHang'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Mô Tả</td>
					<td>
						<input type="text" name="MoTa" value="<?= $item['MoTa'];?>">
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