<?php
	include_once 'layout_header.php';
	include_once dirname(__file__) . '/system/csdl.php';

	$list = array();
	if (!empty($_SESSION['cart'])) {
		$list = $_SESSION['cart'];

		$TongTien = 0;
		foreach ($list as $item) {
			$TongTien += $item['ThanhTien'];
		}
	}

	if (!empty($_POST) && $list) {
		$HoTen = $_POST['HoTen'];
		$DiaChi = $_POST['DiaChi'];
		$Email = $_POST['Email'];
		$DienThoai = $_POST['DienThoai'];

		// insert vao bang khach hàng
		$sql_khach = "INSERT INTO `tbl_DMKhach`(`HoTen`, `DiaChi`, `DienThoai`, `Email`) 
		VALUES (N'$HoTen',N'$DiaChi','$DienThoai','$Email')";
		$result_khach = execute($sql_khach);

		// lay mã khách vừa thêm
		$sql_MaKhach = "SELECT MaKhach FROM `tbl_DMKhach` order by MaKhach DESC limit 1 ";
		$MaKhach = select_value($sql_MaKhach, "MaKhach");

		// insert vao bang hoa don
		$NgHD = date('Y-m-d H:i:s');
		$DienGiai = $_POST['DienGiai'];
		$Duyet = '0';
		$NgDuyet = null;

		$sql_hoadon = "INSERT INTO `tbl_HoaDonBan`(`MaKhach`, `NgHD`, `DienGiai`, `Duyet`, `NgDuyet`) VALUES ('$MaKhach','$NgHD','$DienGiai','$Duyet','$NgDuyet')";
		$result_hoadon = execute($sql_hoadon);

		// lay mã hóa đơn vừa thêm
		$sql_Mahoadon = "SELECT MaHD FROM `tbl_HoaDonBan` order by MaHD DESC limit 1 ";
		$MaHD = select_value($sql_Mahoadon, "MaHD");

		// insert vao bang chi tiet hoa don
		foreach ($list as $key => $item) {
			$MaHang = $item['MaHang'];
			$SoLuong = $item['SoLuong'];
			$DonGia = $item['DonGia'];

			$sql_chitiet = "INSERT INTO `tbl_ChiTietHoaDon`(`MaHD`, `MaHang`, `SoLuong`, `DonGia`) VALUES ('$MaHD','$MaHang','$SoLuong','$DonGia')";

			$result_chitiet = execute($sql_chitiet);
		}

		$_SESSION['cart'] = null;

		header('location: success.php');
	}
?>
	<section id="advertisement">
		<div class="container">
			<img src="images/shop/advertisement.jpg" alt="" />
		</div>
	</section>

	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<?php
						include_once 'left_sidebar.php';
					?>
				</div>
				
				<div class="col-sm-9 padding-right">
					<form action="checkout.php" method="POST">
					<div class="features_items">
						<h2 class="title text-center">Thanh toán</h2>
						<h3>Thông tin khách hàng</h3>
						<table class = "table table-bordered">
							<tr>
								<th class="col-sm-3">Họ Tên</th>
								<td class="col-sm-9">
									<input type="text" required class="col-sm-12 form-control" name="HoTen" >
								</td>
							</tr>
							<tr>
								<th>Địa Chỉ</th>
								<td>
									<input type="text" required class="col-sm-12 form-control" name="DiaChi">
								</td>
							</tr>
							<tr>
								<th>Điện Thoại</th>
								<td>
									<input type="tel" required class="col-sm-12 form-control" name="DienThoai">
								</td>
							</tr>
							<tr>
								<th>Email</th>
								<td>
									<input type="email" required class="col-sm-12 form-control" name="Email">
								</td>
							</tr>
							<tr>
								<th>Ghi Chú</th>
								<td>
									<textarea name="DienGiai" class="col-sm-12 form-control" rows="5"></textarea>
								</td>
							</tr>
						</table>

						<h3>Danh sách sản phẩm </h3>
						<table class = "table table-bordered">
							<tr class="mauxanhduong">
								<th>Hình Ảnh</th>
								<th>Tên Hàng</th>
								<th>Đơn Giá</th>
								<th>Số lượng</th>
								<th>Thành Tiền</th>
							</tr>
							<?php
							if (!empty($list)) {
								foreach ($list as $item) {
								?>
									<tr class="mauxanhduong">
										<td><img width="80px" height="100px" src="image/<?=$item['HinhAnh'];?>"></td>
										<td><?=$item['TenHang'];?></td>
										<td><?=$item['DonGia'];?></td>
										<td>
											<?=$item['SoLuong'];?>
										</td>
										<td><?=$item['ThanhTien'];?></td>
									</tr>
								<?php
								}
							}
							else
							{
								echo "<tr><td colspan='7'>Không tìm thấy dữ liệu</td></tr>";
							}
							?>
						</table>
						<h3 style="text-align:right">
							Tổng tiền cần thanh toán : <?=$TongTien;?> VND
						</h3>
						<button class="btn btn-success" type="submit" value="Thanh Toán">Thanh Toán</button>
	  					<a class="btn btn-default" href="cart.php">Quay Lại</a>
	  					<br></br/>
					</div>
					</form>
				</div>
			</div>
		</div>
	</section>
<?php
	include_once 'layout_footer.php';
?>