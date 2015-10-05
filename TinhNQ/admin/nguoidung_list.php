<?php
include_once dirname(dirname(__file__)) . '/system/csdl.php';
// xóa dữ liệu
if (!empty($_GET['xoa']) && $_GET['xoa'] == 'true' 
	&& !empty($_GET['MaNguoiDung'])) {
	
	$MaNguoiDung = $_GET['MaNguoiDung'];
	$sql_delete = "DELETE FROM `tbl_nguoidung` where MaNguoiDung = '$MaNguoiDung'";
	$result = execute($sql_delete);
	if ($result == 'true') {
		echo "Đã Xóa thành công !!!!";
	}
}

// hiển thị dữ liệu
if (!empty($_GET['keywords'])) {
	$keywords = $_GET['keywords'];
	$where = "Where `TenTruyCap` like '%$keywords%' or `MaNguoiDung` = '$keywords'  or `HoTen` = '$keywords'";
}

$sql = "SELECT * FROM `tbl_NguoiDung` $where";
$data = select_array($sql);
?>
<?php
	$title_page = "Quản lí Người Dùng";
	include_once 'layout_header.php';
	?>
		<table class = "table table-bordered">
			<tr>
				<td colspan="6" class="mauxam"><span>QL Người Dùng</span></td>
			</tr>
			<tr>
				<td colspan="6" class="mauxam">
					<form action="nguoidung_list.php" method="GET">
						<span>Từ khóa</span>
						<input type="text" class="keywords" name="keywords">
						<button type="submit" value="Tìm" class="btn btn-default">Tìm</button>
					</form>
				</td>
			</tr>
			<tr class="mauxanhduong">
				<th>Mã</th>
				<th>Tên Truy Cập</th>
				<th>Mật khẩu</th>
				<th>Họ Tên</th>
				<th>#</th>
			</tr>
			<?php
			foreach ($data as $item) {
			?>
				<tr class="mauxanhduong">
					<td><?=$item['MaNguoiDung'];?></td>
					<td><?=$item['TenTruyCap'];?></td>
					<td>*******</td>
					<td><?=$item['HoTen'];?></td>
					<td>
						<a class="btn btn-default" href="nguoidung_edit.php?MaNguoiDung=<?=$item['MaNguoiDung'];?>">Sửa</a> | <a class="btn btn-default" onclick="return confirm('Bạn có chắc là muốn xóa record này k?');
						" href="?xoa=true&MaNguoiDung=<?=$item['MaNguoiDung'];?>">Xóa</a>
					</td>
				</tr>
			<?php
			}
			?>
		</table>
		<a class="btn btn-default" href="nguoidung_add.php">Thêm mới</a>
<?php
	include_once 'layout_footer.php';
?>