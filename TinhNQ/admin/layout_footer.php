		</div>
		<div class="col-md-3">
			<ul class="list-group">
			  <li class="list-group-item active">Menu</li>
			  <li class="list-group-item">
				<a href="hanghoa_list.php">Hàng Hóa</a>
			  </li>
			   <li class="list-group-item">
				<a href="loaihang_list.php">Loại Hàng</a>
			  </li>
			   <li class="list-group-item">
				<a href="nhacungcap_list.php">Nhà Cung Cấp</a>
			  </li>
			   <li class="list-group-item">
				<a href="nguoidung_list.php">Người Dùng</a>
			  </li>
			</ul>
		</div>
	</div>
</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>
    <script>
	function readURL(input) {
	    var url = input.value;
	    var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();
	    if (input.files && input.files[0]&& (ext == "gif" || ext == "png" || ext == "jpeg" || ext == "jpg")) {
	        var reader = new FileReader();

	        reader.onload = function (e) {
	            $('#imgTag').attr('src', e.target.result).width(200).height(150);
	        }

	        reader.readAsDataURL(input.files[0]);
	    }
	}
</script>
</body>
</html>