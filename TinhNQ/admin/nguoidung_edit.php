<?php
	include_once dirname(dirname(__file__)) . '/system/csdl.php';
	if (!empty($_GET['MaNguoiDung'])) {
		$MaNguoiDung = $_GET['MaNguoiDung'];
		$sql = "select * FROM `tbl_NguoiDung` where MaNguoiDung = '$MaNguoiDung'";
		$data = select_array($sql);
		$item = $data[0];
	}
	else{
		header('location: nhacungcap_list.php');
	};

	if (!empty($_POST)) {
		$_MaNguoiDung = $_POST['MaNguoiDung'];
		$TenTruyCap = $_POST['TenTruyCap'];
		$MatKhau = $_POST['MatKhau'];
		$HoTen = $_POST['HoTen'];

		//echo $sql_insert;
		$sql_update = "UPDATE `tbl_NguoiDung` SET `TenTruyCap`='$TenTruyCap',
		`MatKhau`='$MatKhau',
		`HoTen`='$HoTen',
		`Email`='$Email' 
		WHERE MaNguoiDung = '$_MaNguoiDung'";

		//echo $sql_update;
		$result = execute($sql_update);
		//var_dump($result);
	}
?>
<?php
	$title_page = "Sửa Người Dùng";
	include_once 'layout_header.php';
	?>
		<form action="nhacungcap_edit.php" method="POST">
			<table class = "table table-bordered">
				<tr>
					<td colspan="2" class="mauxam"><span>THÊM MỚI Người Dùng</span></td>
				</tr>
				<tr class="mauxanhduong">
					<td>Mã Người Dùng</td>
					<td>
						<?= $MaNguoiDung;?>
						<input type="hidden" name="MaNguoiDung" value="<?= $item['MaNguoiDung'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Tên Truy Cập</td>
					<td>
						<input type="password" name="TenTruyCap" value="<?= $item['TenTruyCap'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Mật Khẩu</td>
					<td>
						<input type="text" name="MatKhau" value="<?= $item['MatKhau'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Họ Tên</td>
					<td>
						<input type="text" name="HoTen" value="<?= $item['HoTen'];?>">
					</td>
				</tr>
				<tr>
					<td colspan="2" class="mauxam">
						<button class="btn btn-default" type="submit" value="Lưu">Lưu</button>
	  					<button class="btn btn-default" type="reset " value="Làm Lại">Làm Lại</button>
	  					<a class="btn btn-default" href="nguoidung_list.php">Quay về</a>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>