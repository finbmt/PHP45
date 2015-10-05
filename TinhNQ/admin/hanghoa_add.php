<?php
include_once dirname(dirname(__file__)) . '/system/csdl.php';

	if (!empty($_POST)) {
		//$HinhAnh = $_POST['HinhAnh'];
		$HinhAnh = 'default.png';

		// kiểm tra xem người dùng có chọn hình ảnh k
		if ($_FILES['HinhAnhUpload']['name']) {
			if ($_FILES['HinhAnhUpload']['error'] != 0) {
				die("file update bi lỗi");
			}
			
			$HinhAnh = $_FILES['HinhAnhUpload']['name'];
			move_uploaded_file($_FILES['HinhAnhUpload']['tmp_name'] , dirname(dirname(__file__)) . "/image/" . $HinhAnh);
		}

		$TenHang = $_POST['TenHang'];
		$DVT = $_POST['DVT'];
		$DonGia = $_POST['DonGia'];
		$MaNhaCungCap = $_POST['MaNhaCungCap'];
		$MaLoaiHang = $_POST['MaLoaiHang'];
		$MoTa = $_POST['MoTa'];

		$sql_insert = "INSERT INTO `tbl_DMHang`(`TenHang`, `HinhAnh`, `DVT`, `DonGia`, `MaNhaCungCap`, `MaLoaiHang`, `MoTa`) 
		VALUES (N'$TenHang',N'$HinhAnh',N'$DVT',N'$DonGia',N'$MaNhaCungCap',N'$MaLoaiHang',N'$MoTa')";
		
		//echo $sql_insert;
		$result = execute($sql_insert);
	}

	$sql_loaihang = "SELECT * FROM `tbl_LoaiHang`";
	$list_loaihang = select_array($sql_loaihang);

	$sql_ncc = "SELECT * FROM `tbl_NhaCungCap`";
	$list_ncc = select_array($sql_ncc);
?>
<?php
	$title_page = "Thêm Hàng Hóa";
	include_once 'layout_header.php';
	?>
		<form action="hanghoa_add.php" method="POST" enctype="multipart/form-data">
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
						<input type="file" onchange="readURL(this)" name="HinhAnhUpload" id="HinhAnhUpload">
						<br>
						<img id="imgTag" width="200" height="150" src="../image/default.png"/>
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
					<td>Nhà Cung Cấp</td>
					<td>
						<select name="MaNhaCungCap">
							<option value="">--- Vui lòng chọn --</option>
							<?php
							foreach ($list_ncc as $item) {
								echo "<option value='". $item['MaNhaCungCap']. "'>". $item['TenNhaCungCap']. "</option>";
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
								echo "<option value='". $item['MaLoaiHang']. "'>". $item['TenLoaiHang']. "</option>";
							}
							?>
						</select>
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Mô Tả</td>
					<td>
						<textarea name="MoTa" rows="10" cols="70"></textarea>
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