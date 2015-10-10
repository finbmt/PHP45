<?php
	include_once dirname(__file__) . '/system/csdl.php';
	include_once 'layout_header.php';

	$list = array();
	if ($_SESSION['cart']) {
		$list = $_SESSION['cart'];
	}

	if ($list && $_POST) {
		if ($_POST[SoLuong]) {
			foreach ($_POST[SoLuong] as $MaHang => $SoLuong) {
				$list[$MaHang]['SoLuong'] = $SoLuong;
				$list[$MaHang]['ThanhTien'] = $list[$MaHang]['SoLuong'] * $list[$MaHang]['DonGia'];
			}
		}
	}

	if (!empty($_GET['add']) && $_GET['add'] == 'true' && !empty($_GET['MaHang'])) {
		$MaHang = $_GET['MaHang'];

		if ($list[$MaHang]) {
			$list[$MaHang]['SoLuong'] += 1;
			$list[$MaHang]['ThanhTien'] = $list[$MaHang]['SoLuong'] * $list[$MaHang]['DonGia'];
		}
		else
		{
			$sql = "SELECT MaHang, TenHang, DonGia, HinhAnh FROM `tbl_DMHang` where MaHang = '$MaHang'";
			$data = select_array($sql);
			$list[$MaHang]['MaHang'] = $data[0]['MaHang'];
			$list[$MaHang]['TenHang'] = $data[0]['TenHang'];
			$list[$MaHang]['DonGia'] = $data[0]['DonGia'];
			$list[$MaHang]['HinhAnh'] = $data[0]['HinhAnh'];
			$list[$MaHang]['SoLuong'] = 1;
			$list[$MaHang]['ThanhTien'] = $list[$MaHang]['SoLuong'] * $list[$MaHang]['DonGia'];
		}
 	}

 	// xóa dữ liệu
	if (!empty($_GET['del']) && $_GET['del'] == 'true' && !empty($_GET['MaHang'])) {
		
		$MaHang = $_GET['MaHang'];
		unset($list[$MaHang]);
	}

	if ($list) {
		$TongTien = 0;
		foreach ($list as $item) {
			$TongTien += $item['ThanhTien'];
		}
	}

 	$_SESSION['cart'] = $list;
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
					<form action="cart.php" method="POST">
					<div class="features_items">
						<h2 class="title text-center">Giỏ hàng</h2>
						<table class = "table table-bordered">
							<tr class="mauxanhduong">
								<th>Hình Ảnh</th>
								<th>Tên Hàng</th>
								<th>Đơn Giá</th>
								<th>Số lượng</th>
								<th>Thành Tiền</th>
								<th>#</th>
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
											<input type="number" style="width:50px" name="SoLuong[<?=$item['MaHang'];?>]" value="<?=$item['SoLuong'];?>">
										</td>
										<td><?=$item['ThanhTien'];?></td>
										<td>
											<a class="btn btn-default" onclick="return confirm('Bạn có chắc là muốn xóa record này k?');
											" href="?del=true&MaHang=<?=$item['MaHang'];?>">Xóa</a>
										</td>
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
						<button class="btn btn-default" type="submit" value="Lưu"> <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>Cập Nhật</button>
	  					<a class="btn btn-default" href="product.php">Tiếp tục mua hàng</a>
	  					<a class="btn btn-success" href="checkout.php">Thanh Toán</a>
					</div>
					</form>
				</div>
			</div>
		</div>
	</section>
<?php
	include_once 'layout_footer.php';
?>