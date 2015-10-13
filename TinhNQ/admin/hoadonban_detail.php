<?php
	include_once dirname(dirname(__file__)) . '/system/csdl.php';
	if (!empty($_POST)) {
		$MaHoaDon = $_POST['MaHoaDon'];
		$Duyet = $_POST['Duyet'];
		$NgDuyet = date('Y-m-d H:i:s');
		
		$sql_update = "UPDATE `tbl_HoaDonBan` SET `Duyet`='$Duyet',
		`NgDuyet`='$NgDuyet'
		WHERE MaHD = '$MaHoaDon'";

		$result = execute($sql_update);
	}

	if (!empty($_GET['MaHD'])) {
		$MaHD = $_GET['MaHD'];
		$sql = "SELECT hd.*, khach.* FROM `tbl_DMKhach` khach Inner join tbl_HoaDonBan hd on hd.MaKhach = khach.MaKhach where MaHD = '$MaHD'";
		$data = select_array($sql);
		$item = $data[0];

		$sql_list = "SELECT ct.*, hang.TenHang, hang.HinhAnh, (ct.SoLuong * ct.DonGia) as ThanhTien FROM `tbl_HoaDonBan` hd INNER JOIN tbl_ChiTietHoaDon ct ON ct.MaHD = hd.MaHD INNER JOIN tbl_DMHang hang ON hang.MaHang = ct.MaHang where ct.MaHD = '$MaHD'";
	
		$data_list = select_array($sql_list);

		$TongTien = 0;
		if ($data_list) {
			foreach ($data_list as $sanpham) {
				$TongTien += $sanpham['ThanhTien'];
			}
		}
	}
	else{
		header('location: hoadonban_list.php');
	};
?>
<?php
	$title_page = "Chi tiết Hóa đơn bán";
	include_once 'layout_header.php';
	?>
		<form action="hoadonban_detail.php" method="POST">
			<table class = "table table-bordered">
				<tr>
					<td colspan="2" class="mauxam"><span>Chi tiết Hóa đơn bán</span></td>
				</tr>
				<tr class="mauxanhduong">
					<td class="col-sm-3">Mã Hóa đơn bán</td>
					<td class="col-sm-9">
						<?= $MaHD;?>
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Họ Tên Khách</td>
					<td>
						<?= $item['HoTen'];?>
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Địa Chỉ</td>
					<td>
						<?= $item['DiaChi'];?>
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Điện Thoại</td>
					<td>
						<?= $item['DienThoai'];?>
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Email</td>
					<td>
						<?= $item['Email'];?>
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Email</td>
					<td>
						<input type="hidden" name="MaHoaDon" value="<?= $item['MaHD'];?>">
						<?php
							if ($item['Duyet'] == 1) {
								$da_giao = "checked";
							} else
							{
								$chua_giao = "checked";
							}
						?>
						<label class="radio-outline"><input type="radio" <?= $da_giao;?> value="1" name="Duyet">
							Đã giao hàng
						</label>
						<label class="radio-outline"><input type="radio" <?= $chua_giao;?> value="0" name="Duyet">
							Chưa giao hàng
						</label>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button class="btn btn-success" type="submit" value="Lưu">Lưu</button>
					</td>
				</tr>
			</table>
			<table class = "table table-bordered">
				<tr class="mauxanhduong">
					<th>Hình Ảnh</th>
					<th>Tên Hàng</th>
					<th>Đơn Giá</th>
					<th>Số lượng</th>
					<th>Thành Tiền</th>
				</tr>
				<?php
				if (!empty($data_list)) {
					foreach ($data_list as $item) {
					?>
						<tr class="mauxanhduong">
							<td><img width="80px" height="100px" src="../image/<?=$item['HinhAnh'];?>"></td>
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
		</form>
<?php
	include_once 'layout_footer.php';
?>