<?php
include_once dirname(dirname(__file__)) . '/system/csdl.php';
// xóa dữ liệu
if (!empty($_GET['xoa']) && $_GET['xoa'] == 'true' 
	&& !empty($_GET['MaNhaCungCap'])) {
	
	$MaNhaCungCap = $_GET['MaNhaCungCap'];
	$sql_delete = "DELETE FROM `tbl_NhaCungCap` where MaNhaCungCap = '$MaNhaCungCap'";
	$result = execute($sql_delete);
	if ($result == 'true') {
		echo "Đã Xóa thành công !!!!";
	}
}

// hiển thị dữ liệu
if (!empty($_GET['keywords'])) {
	$keywords = $_GET['keywords'];
	// SELECT * FROM `tbl_NhaCungCap` where `TenNhaCungCap` like '%tính%' or `DiaChi` like '%tính%'
	$where = "Where `TenNhaCungCap` like '%$keywords%' or `DiaChi` like '%$keywords%' or `MaNhaCungCap` = '$keywords'";
}

$sql = "SELECT * FROM `tbl_NhaCungCap` $where";
$data = select_array($sql);
?>
<?php
	$title_page = "Quản lí Nhà Cung Cấp";
	include_once 'layout_header.php';
	?>
		<table class = "table table-bordered">
			<tr>
				<td colspan="6" class="mauxam"><span>QL NHÀ CUNG CẤP</span></td>
			</tr>
			<tr>
				<td colspan="6" class="mauxam">
					<form action="nhacungcap_list.php" method="GET">
						<span>Từ khóa</span>
						<input type="text" class="keywords" name="keywords">
						<button type="submit" value="Tìm" class="btn btn-default">Tìm</button>
					</form>
				</td>
			</tr>
			<tr class="mauxanhduong">
				<th>Mã</th>
				<th>Tên NCC</th>
				<th>Địa Chỉ</th>
				<th>Điện Thoại</th>
				<th>Email</th>
				<th>#</th>
			</tr>
			<?php
			foreach ($data as $item) {
			?>
				<tr class="mauxanhduong">
					<td><?=$item['MaNhaCungCap'];?></td>
					<td><?=$item['TenNhaCungCap'];?></td>
					<td><?=$item['DiaChi'];?></td>
					<td><?=$item['DienThoai'];?></td>
					<td><?=$item['Email'];?></td>
					<td>
						<a class="btn btn-default" href="nhacungcap_edit.php?MaNhaCungCap=<?=$item['MaNhaCungCap'];?>">Sửa</a> | <a class="btn btn-default" onclick="return confirm('Bạn có chắc là muốn xóa record này k?');
						" href="?xoa=true&MaNhaCungCap=<?=$item['MaNhaCungCap'];?>">Xóa</a>
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