<?php
	include_once dirname(dirname(__file__)) . '/system/csdl.php';
	if (!empty($_GET['MaLoaiHang'])) {
		$MaLoaiHang = $_GET['MaLoaiHang'];
		$sql = "select * FROM `tbl_LoaiHang` where MaLoaiHang = '$MaLoaiHang'";
		$data = select_array($sql);
		$item = $data[0];
	}
	else{
	header('location: loaihang_list.php');
	};
	if (!empty($_POST)) {
		$_MaLoaiHang = $_POST['MaLoaiHang'];
		$TenLoaiHang = $_POST['TenLoaiHang'];

		//echo $sql_insert;
		$sql_update = "UPDATE `tbl_LoaiHang` SET `TenLoaiHang`='$TenLoaiHang'
		WHERE MaLoaiHang = '$_MaLoaiHang'";

		//echo $sql_update;
		$result = execute($sql_update);
		header('location: loaihang_list.php');
	}
?>
<?php
	$title_page = "Sửa Loại Hàng";
	include_once 'layout_header.php';
	?>
		<form action="loaihang_edit.php" method="POST">
			<table class = "table table-bordered">
				<tr>
					<td colspan="2" class="mauxam"><span>Sửa Loại Hàng</span></td>
				</tr>
				<tr class="mauxanhduong">
					<td>Mã Loại Hàng</td>
					<td>
						<?= $MaLoaiHang;?>
						<input type="hidden" name="MaLoaiHang" value="<?= $item['MaLoaiHang'];?>">
					</td>
				</tr>
				<tr class="mauxanhduong">
					<td>Tên Loại Hàng</td>
					<td>
						<input type="text" name="TenLoaiHang" value="<?= $item['TenLoaiHang'];?>">
					</td>
				</tr>
				<tr>
					<td colspan="2" class="mauxam">
						<button class="btn btn-default" type="submit" value="Lưu">Lưu</button>
	  					<button class="btn btn-default" type="reset " value="Làm Lại">Làm Lại</button>
	  					<a class="btn btn-default" href="loaihang_list.php">Quay về</a>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>