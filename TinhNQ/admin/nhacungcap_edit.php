<?php
	include_once dirname(dirname(__file__)) . '/system/csdl.php';
	if (!empty($_GET['MaNhaCungCap'])) {
		$MaNhaCungCap = $_GET['MaNhaCungCap'];
		$sql = "select * FROM `tbl_NhaCungCap` where MaNhaCungCap = '$MaNhaCungCap'";
		$data = select_array($sql);
		$item = $data[0];
	}
	else{
	header('location: nhacungcap_list.php');
	};
	if (!empty($_POST)) {
		$_MaNhaCungCap = $_POST['MaNhaCungCap'];
		$TenNhaCungCap = $_POST['TenNhaCungCap'];
		$DiaChi = $_POST['DiaChi'];
		$Email = $_POST['Email'];
		$DienThoai = $_POST['DienThoai'];
		//$sql_insert = "INSERT INTO `tbl_NhaCungCap`(`TenNhaCungCap`, `DiaChi`, `DienThoai`, `Email`) 
		//VALUES (N'$TenNhaCungCap',N'$DiaChi','$DienThoai','$Email')";
		
		
		//echo $sql_insert;
		$sql_update = "UPDATE `tbl_NhaCungCap` SET `TenNhaCungCap`='$TenNhaCungCap',
		`DiaChi`='$DiaChi',
		`DienThoai`='$DienThoai',
		`Email`='$Email' 
		WHERE MaNhaCungCap = '$_MaNhaCungCap'";
		//echo $sql_update;
		$result = execute($sql_update);
		//var_dump($result);
	}
?>
<?php
	$title_page = "Sửa Nhà Cung Cấp";
	include_once 'layout_header.php';
	?>
		<form action="nhacungcap_edit.php" method="POST">
			<table class = "table table-bordered">
				<tr>
					<td colspan="2" class="mauxam"><span>THÊM MỚI NHÀ CUNG CẤP</span></td>
				</tr>
				<tr class="mauxanhduong">
					<td>Mã Nhà Cung Cấp</td>
					<td>
						<?= $MaNhaCungCap;?>
						<input type="hidden" name="MaNhaCungCap" value="<?= $item['MaNhaCungCap'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Tên Nhà Cung Cấp</td>
					<td>
						<input type="text" name="TenNhaCungCap" value="<?= $item['TenNhaCungCap'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Địa Chỉ</td>
					<td>
						<input type="text" name="DiaChi" value="<?= $item['DiaChi'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Điện Thoại</td>
					<td>
						<input type="text" name="DienThoai" value="<?= $item['DienThoai'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Email</td>
					<td>
						<input type="text" name="Email" value="<?= $item['Email'];?>">
					</td>
				</tr>
				<tr>
					<td colspan="2" class="mauxam">
						<button class="btn btn-default" type="submit" value="Lưu">Lưu</button>
	  					<button class="btn btn-default" type="reset " value="Làm Lại">Làm Lại</button>
	  					<a class="btn btn-default" href="nhacungcap_list.php">Quay về</a>
					</td>
				</tr>
			</table>
		</form>
<?php
	include_once 'layout_footer.php';
?>