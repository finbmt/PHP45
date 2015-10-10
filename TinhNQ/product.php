<?php
	include_once dirname(__file__) . '/system/csdl.php';
	include_once 'layout_header.php';

	// Tong record/page 
	$record_page = 3;//12

	$where = "WHERE 1=1";
	$param = "";
	if (!empty($_GET['MaLoaiHang'])) {
		$MaLoaiHang = $_GET['MaLoaiHang'];
		$where .= " and MaLoaiHang= '$MaLoaiHang'";
		$param .= "MaLoaiHang=$MaLoaiHang";
	}

	if (!empty($_GET['MaNhaCungCap'])) {
		$MaNhaCungCap = $_GET['MaNhaCungCap'];
		$where .= " and MaNhaCungCap= '$MaNhaCungCap'";
		$param .= "MaNhaCungCap=$MaNhaCungCap";
	}

	// cau lenh lay tong so record
	$sql_total = "select count(1) from tbl_DMHang $where";
	$total = select_count($sql_total);

	// page hien tai
	$page_current = 1;
	if (!empty($_GET['page']) && $_GET['page'] > 1) {
		$page_current = $_GET['page'];
	}

	$limit = " Limit $record_page";
	if ($total > $record_page) {
		$page_total = ceil($total / $record_page);
		$start = ($page_current - 1) * $record_page;
		$limit = " Limit $start, $record_page ";
	}

	$sql_sanpham = "select * from tbl_DMHang $where 
	order by MaHang DESC $limit";

	$list_sanpham = select_array($sql_sanpham);
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
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Sản phẩm</h2>
						<?php
						if ($list_sanpham) {
							foreach ($list_sanpham as $item) {
						?>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
												<div class="productinfo text-center">
													<img src="image/<?=$item['HinhAnh'];?>" alt="" />
													<h2><?=$item['DonGia'];?></h2>
													<p><a href="detail.php?MaHang=<?=$item['MaHang'];?>"><a href="detail.php?MaHang=<?=$item['MaHang'];?>"><?=$item['TenHang'];?></a></a></p>
													<a href="cart.php?add=true&MaHang=<?=$item['MaHang'];?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												<div class="product-overlay">
													<div class="overlay-content">
														<h2><?=$item['DonGia'];?></h2>
														<p><a href="detail.php?MaHang=<?=$item['MaHang'];?>"><?=$item['TenHang'];?></a></p>
														<a href="cart.php?add=true&MaHang=<?=$item['MaHang'];?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
													</div>
												</div>
										</div>
									</div>
								</div>
						<?php
							}
						} else
						{
							echo "<p>Không tìm thấy sản phẩm phù hợp</p>";
						}
						?>
					</div><!--features_items-->
					<?php
					if ($page_total > 1) {
						echo "<ul class='pagination'>";
						for ($i=1; $i <= $page_total; $i++) {
							if ($page_current == $i) {
								echo "<li class='active'><a href='?$param&page=$i'>$i</a></li>";
							}
							else
							{
								echo "<li><a href='?$param&page=$i'>$i</a></li>";
							}
						}
						//class="active"
						echo "</ul>";
					}
					?>
				</div>
			</div>
		</div>
	</section>
<?php
	include_once 'layout_footer.php';
?>