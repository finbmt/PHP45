<?php
include_once dirname(dirname(__file__)) . '/system/csdl.php';
// xóa dữ liệu
if (!empty($_GET['xoa']) && $_GET['xoa'] == 'true' 
	&& !empty($_GET['MaLoaiHang'])) {
	
	$MaLoaiHang = $_GET['MaLoaiHang'];
	$sql_delete = "DELETE FROM `tbl_LoaiHang` where MaLoaiHang = '$MaLoaiHang'";
	$result = execute($sql_delete);
	if ($result == 'true') {
		echo "Đã Xóa thành công !!!!";
	}
}

// hiển thị dữ liệu
if (!empty($_GET['keywords'])) {
	$keywords = $_GET['keywords'];
	$where = "Where `TenLoaiHang` like '%$keywords%'";
}

$sql = "SELECT * FROM `tbl_LoaiHang` $where";
$data = select_array($sql);
?>
<?php
	$title_page = "Quản lí Loại Hàng";
	include_once 'layout_header.php';
	?>
		<table class = "table table-bordered">
			<tr>
				<td colspan="6" class="mauxam"><span>QL Loại Hàng</span></td>
			</tr>
			<tr>
				<td colspan="6" class="mauxam">
					<form action="loaihang_list.php" method="GET">
						<span>Từ khóa</span>
						<input type="text" class="keywords" name="keywords">
						<button type="submit" value="Tìm" class="btn btn-default">Tìm</button>
					</form>
				</td>
			</tr>
			<tr class="mauxanhduong">
				<th>Mã</th>
				<th>Tên Loại Hàng</th>
				<th>#</th>
			</tr>
			<?php
			foreach ($data as $item) {
			?>
				<tr class="mauxanhduong">
					<td><?=$item['MaLoaiHang'];?></td>
					<td><?=$item['TenLoaiHang'];?></td>
					<td>
						<a class="btn btn-default" href="loaihang_edit.php?MaLoaiHang=<?=$item['MaLoaiHang'];?>">Sửa</a> | <a class="btn btn-default" onclick="return confirm('Bạn có chắc là muốn xóa record này k?');
						" href="?xoa=true&MaLoaiHang=<?=$item['MaLoaiHang'];?>">Xóa</a>
					</td>
				</tr>
			<?php
			}
			?>
		</table>
		<a class="btn btn-default" href="loaihang_add.php">Thêm mới</a>
<?php
	include_once 'layout_footer.php';
?>