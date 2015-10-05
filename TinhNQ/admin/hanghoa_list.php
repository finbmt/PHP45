<?php
include_once dirname(dirname(__file__)) . '/system/csdl.php';
// xóa dữ liệu
if (!empty($_GET['xoa']) && $_GET['xoa'] == 'true' 
	&& !empty($_GET['MaHang'])) {
	
	$MaHang = $_GET['MaHang'];
	$sql_delete = "DELETE FROM `tbl_DMHang` where MaHang = '$MaHang'";
	$result = execute($sql_delete);
	if ($result == 'true') {
		echo "Đã Xóa thành công !!!!";
	}
}

// hiển thị dữ liệu
if (!empty($_GET['keywords'])) {
	$keywords = $_GET['keywords'];
	$where = "Where `TenHang` like '%$keywords%'";
}

$sql = "SELECT * FROM `tbl_DMHang` $where";
$data = select_array($sql);
?>
<?php
	$title_page = "Quản lí Hàng Hóa";
	include_once 'layout_header.php';
	?>
		<table class = "table table-bordered">
			<tr>
				<td colspan="7" class="mauxam"><span>QL Hàng Hóa</span></td>
			</tr>
			<tr>
				<td colspan="7" class="mauxam">
					<form action="hanghoa_list.php" method="GET">
						<span>Từ khóa</span>
						<input type="text" class="keywords" name="keywords">
						<button type="submit" value="Tìm" class="btn btn-default">Tìm</button>
					</form>
				</td>
			</tr>
			<tr class="mauxanhduong">
				<th>Mã</th>
				<th>Tên Hàng</th>
				<th>Hình Ảnh</th>
				<th>Loại Hàng</th>
				<th>ĐVT</th>
				<th>Đơn Giá</th>
				<th>#</th>
			</tr>
			<?php
			if (!empty($data)) {
				foreach ($data as $item) {
				?>
					<tr class="mauxanhduong">
						<td><?=$item['MaHang'];?></td>
						<td><?=$item['TenHang'];?></td>
						<td><?=$item['HinhAnh'];?></td>
						<td><?=$item['MaLoaiHang'];?></td>
						<td><?=$item['DVT'];?></td>
						<td><?=$item['DonGia'];?></td>
						<td>
							<a class="btn btn-default" href="hanghoa_edit.php?MaHang=<?=$item['MaHang'];?>">Sửa</a> | <a class="btn btn-default" onclick="return confirm('Bạn có chắc là muốn xóa record này k?');
							" href="?xoa=true&MaHang=<?=$item['MaHang'];?>">Xóa</a>
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
		<a class="btn btn-default" href="hanghoa_add.php">Thêm mới</a>
<?php
	include_once 'layout_footer.php';
?>