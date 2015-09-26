<html>
	<head>
		<title>Bang nhieu hang</title>
		<style type="text/css">
			table, td {
			   border: 1px solid #000;
			}

			td {
				padding: 5px;
			}

			.mauxam 
			{
				background-color: #cecfce;
			}
			.mauxanhduong
			{
				background-color: #9ccfff;
			}
			.mauxanhdatroi
			{
				background-color: #639ace;
			}
			.mauxam2
			{
				background-color: #949694;
			}
			.mauxanhdam
			{
				background-color: #31659c;
			}

			span {
				font-size: 20px;
				text-transform: uppercase;
				font-weight: bold;
			}
		</style>
	</head>
	<body>
		<table width="600px" cellspacing="0">
			<tr>
				<td colspan="5" class="mauxam"><span>Flight Schedule</span></td>
			</tr>
			<tr class="mauxanhduong">
				<td><b>Flight Number</b></td>
				<td><b>From:</b></td>
				<td><b>To:</b></td>
				<td><b>Departure:</b></td>
				<td><b>Arrival:</b></td>
			</tr>
			<tr class="mauxam">
				<td class="mauxanhdatroi"><b>BA 3451</b></td>
				<td>Heathrow</td>
				<td>Nuremberg</td>
				<td>19:20</td>
				<td>19:50</td>
			</tr>
			<tr>
				<td class="mauxanhdatroi"><b>BA 1254</b></td>
				<td>Luton</td>
				<td>Alicante</td>
				<td>19:40</td>
				<td>20:50</td>
			</tr>
			<tr class="mauxam">
				<td class="mauxanhdatroi"><b>LH 331</td>
				<td>Heathrow</td>
				<td>Hamburg</td>
				<td>20:00</td>
				<td>20:20</td>
			</tr>
			<tr class="mauxanhdam">
				<td colspan="5" align="right"><b>Total: flights</b></td>
			</tr>
		</table>
	</body>
</html>
<?php
	include_once 'csdl.php';

	//$sql_insert = "INSERT INTO tbl_LoaiHang (TenLoaiHang) VALUES ('vi du')";
	//$object1 = mysqli_query($link, $sql_insert);

	// them, xoa, sua
	//$sql_insert = "INSERT INTO tbl_LoaiHang (TenLoaiHang) VALUES ('vi du')";
	//execute($link, $sql_insert);

	// lay du lieu -> mang
	//$sql_select = "SELECT * FROM `tbl_LoaiHang`";
	//$data = select_array($link, $sql_select);

	// lay du lieu -> so record
	$sql_select = "SELECT count(1) as count FROM `tbl_LoaiHang`";
	$tongso = select_count($link, $sql_select);

	var_dump($tongso);
?>