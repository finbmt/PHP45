<?php
include_once dirname(dirname(__file__)) . '/system/csdl.php';

// hiển thị dữ liệu
if (!empty($_GET['keywords'])) {
	$keywords = $_GET['keywords'];
	$where = "Where khach.HoTen like '%$keywords%' or khach.DiaChi like '%$keywords%' or `MaHD` = '$keywords'";
}

$sql = "SELECT hd.*, khach.HoTen, khach.DiaChi, khach.DienThoai FROM `tbl_DMKhach` khach Inner join tbl_HoaDonBan hd on hd.MaKhach = khach.MaKhach  $where order by MaHD DESC";
$data = select_array($sql);
?>
<?php
	$title_page = "Quản lí Hóa đơn bán";
	include_once 'layout_header.php';
	?>
		<table class = "table table-bordered">
			<tr>
				<td colspan="7" class="mauxam"><span>QL HÓA ĐƠN BÁN</span></td>
			</tr>
			<tr>
				<td colspan="7" class="mauxam">
					<form action="hoadonban_list.php" method="GET">
						<span>Từ khóa</span>
						<input type="text" class="keywords" name="keywords">
						<button type="submit" value="Tìm" class="btn btn-default">Tìm</button>
					</form>
				</td>
			</tr>
			<tr class="mauxanhduong">
				<th>Mã HD</th>
				<th>Họ Tên Khách</th>
				<th>Địa Chỉ</th>
				<th>Điện Thoại</th>
				<th>Ngày Mua</th>
				<th>Giao Hàng</th>
				<th>#</th>
			</tr>
			<?php
			foreach ($data as $item) {
			?>
				<tr class="mauxanhduong">
					<td><?=$item['MaHD'];?></td>
					<td><?=$item['HoTen'];?></td>
					<td><?=$item['DiaChi'];?></td>
					<td><?=$item['DienThoai'];?></td>
					<td><?=$item['NgHD'];?></td>
					<td>
						<?php
						if ($item['Duyet'] == '1') {
							echo "Đã Giao";
						}
						else
						{
							echo "Chưa giao";
						}
						?>

					</td>
					<td>
						<a class="btn btn-default" href="hoadonban_detail.php?MaHD=<?=$item['MaHD'];?>">Xem chi tiết</a>
					</td>
				</tr>
			<?php
			}
			?>
		</table>
		<a class="btn btn-default" href="nhacungcap_add.php">Thêm mới</a>
<?php
	include_once 'layout_footer.php';
?>