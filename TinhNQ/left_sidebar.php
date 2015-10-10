<?php
	include_once dirname(__file__) . '/system/csdl.php';
	$sql_lh = "SELECT * FROM `tbl_LoaiHang`";
	$list_loaihang = select_array($sql_lh);

	$sql_ncc = "SELECT * FROM `tbl_NhaCungCap`";
	$list_ncc = select_array($sql_ncc);
?>
<div class="left-sidebar">
	<h2>Loại Hàng</h2>
	<div class="panel-group category-products" id="accordian"><!--category-productsr-->
		<?php
		foreach ($list_loaihang as $item) {
		?>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title"><a href="product.php?MaLoaiHang=<?=$item['MaLoaiHang'];?>"><?=$item['TenLoaiHang'];?></a></h4>
			</div>
		</div>
		<?php
		}
		?>
	</div><!--/category-products-->

	<div class="brands_products"><!--brands_products-->
		<h2>Thương Hiệu</h2>
		<div class="brands-name">
			<ul class="nav nav-pills nav-stacked">
				<?php
				foreach ($list_ncc as $item) {
				?>
					<li><a href="product.php?MaNhaCungCap=<?=$item['MaNhaCungCap'];?>"><?=$item['TenNhaCungCap'];?></a></li>
				<?php
				}
				?>
			</ul>
		</div>
	</div><!--/brands_products-->
	
	<div class="shipping text-center"><!--shipping-->
		<img src="image/quang-cao-1.png" alt="" width="100%"/>
	</div><!--/shipping-->

</div>