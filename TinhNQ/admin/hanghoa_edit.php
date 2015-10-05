<?php
	include_once dirname(dirname(__file__)) . '/system/csdl.php';
	if (!empty($_GET['MaHang'])) {
		$MaHang = $_GET['MaHang'];
		$sql = "select * FROM `tbl_DMHang` where MaHang = '$MaHang'";
		$data = select_array($sql);
		$item_hang = $data[0];
	}

	if (!empty($_POST)) {
		//$HinhAnh = $_POST['HinhAnh'];
		$HinhAnh = $_POST['HinhAnh'];

		// kiểm tra xem người dùng có chọn hình ảnh k
		if ($_FILES['HinhAnhUpload']['name']) {
			if ($_FILES['HinhAnhUpload']['error'] != 0) {
				die("file update bi lỗi");
			}
			
			$HinhAnh = $_FILES['HinhAnhUpload']['name'];
			move_uploaded_file($_FILES['HinhAnhUpload']['tmp_name'] , dirname(dirname(__file__)) . "/image/" . $HinhAnh);
		}
		

		$_MaHang = $_POST['MaHang'];
		$TenHang = $_POST['TenHang'];
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

	$sql_loaihang = "SELECT * FROM `tbl_LoaiHang`";
	$list_loaihang = select_array($sql_loaihang);

	$sql_ncc = "SELECT * FROM `tbl_NhaCungCap`";
	$list_ncc = select_array($sql_ncc);
?>
<?php
	$title_page = "Sửa Hàng Hóa";
	include_once 'layout_header.php';
	?>
		<form action="hanghoa_edit.php" method="POST" enctype="multipart/form-data">
			<table class = "table table-bordered">
				<tr>
					<td colspan="2" class="mauxam"><span>Sửa Hàng Hóa</span></td>
				</tr>
				<tr class="mauxanhduong">
					<td>Mã Hàng Hóa</td>
					<td>
						<?= $MaHang;?>
						<input type="hidden" name="MaHang" value="<?= $item_hang['MaHang'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Tên Hàng</td>
					<td>
						<input type="text" name="TenHang" value="<?= $item_hang['TenHang'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Hình Ảnh</td>
					<td>
						<input type="hidden" name="HinhAnh" value="<?= $item_hang['HinhAnh'];?>">
						<input type="file" onchange="readURL(this)" name="HinhAnhUpload" id="HinhAnhUpload">
						<br>
						<img id="imgTag" width="200" height="150" src="../image/<?= $item_hang['HinhAnh'];?>"/>
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>DVT</td>
					<td>
						<input type="text" name="DVT" value="<?= $item_hang['DVT'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Đơn Giá</td>
					<td>
						<input type="text" name="DonGia" value="<?= $item_hang['DonGia'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Nhà Cung Cấp</td>
					<td>
						<select name="MaNhaCungCap">
							<option value="">--- Vui lòng chọn --</option>
							<?php
							foreach ($list_ncc as $item) {
								$active = "";
								if ($item['MaNhaCungCap'] == $item_hang['MaNhaCungCap']) {
									$active = "selected";
								}
								echo "<option value='". $item['MaNhaCungCap']. "' $active>". $item['TenNhaCungCap']. "</option>";
							}
							?>
						</select>
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Loại Hàng</td>
					<td>
						<select name="MaLoaiHang">
							<option value="">--- Vui lòng chọn --</option>
							<?php
							foreach ($list_loaihang as $item) {
								$active = "";
								if ($item['MaLoaiHang'] == $item_hang['MaLoaiHang']) {
									$active = "selected";
								}
								echo "<option value='". $item['MaLoaiHang']. "' $active>". $item['TenLoaiHang']. "</option>";
							}
							?>
						</select>
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Mô Tả</td>
					<td>
						<textarea name="MoTa" rows="10" cols="70"><?= $item_hang['MoTa'];?></textarea>
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
<?php
	include_once 'layout_footer.php';
?>