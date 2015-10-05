<?php
	if (!empty($_POST)) {
		$TenLoaiHang = $_POST['TenLoaiHang'];

		include_once dirname(dirname(__file__)) . '/system/csdl.php';
		$sql_insert = "INSERT INTO `tbl_LoaiHang`(`TenLoaiHang`) VALUES (N'$TenLoaiHang')";
		
		//echo $sql_insert;
		$result = execute($sql_insert);
		var_dump($result);
	}
?>
<?php
	$title_page = "Thêm Loại Hàng";
	include_once 'layout_header.php';
	?>
		<form action="loaihang_add.php" method="POST">
			<table class = "table table-bordered">
				<tr>
					<td colspan="2" class="mauxam"><span>Thêm Loại Hàng</span></td>
				</tr>
				<tr class="mauxanhduong">
					<td>Tên Loại Hàng</td>
					<td>
						<input type="text" name="TenLoaiHang">
					</td>
				</tr>
				<tr>
					<td colspan="2" class="mauxam">
						<button class="btn btn-default" type="submit" value="Lưu"> <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>Lưu</button>
	  					<button class="btn btn-default" type="reset" value="Làm Lại">Làm Lại</button>
	  					<a class="btn btn-default" href="loaihang_list.php">Quay về</a>
					</td>
				</tr>
			</table>
		</form>
<?php
	include_once 'layout_footer.php';
?>