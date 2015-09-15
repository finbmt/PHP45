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
	include 'oop_phanso.php';

	$ps1 = new PhanSo();
	// 1/2
	$ps1->input(1, 2);

	$ps2 = new PhanSo();
	// 1/2
	$ps2->input(3, 5);

	$ps3 = new PhanSo();
	
	$dau = '+';

	// xử lý
	if ($dau == '+')
	{
		$ps3 = $ps1->cong($ps2);
		$ps3->pheptinh($ps1, $ps2, $dau);
	} 
	elseif ($dau == '-')
	{
		$ps3 = $ps1->tru($ps2);
	} 
	elseif ($dau == '*')
	{
		$ps3 = $ps1->nhan($ps2);
	} 
	elseif ($dau == ':') 
	{
		$ps3 = $ps1->chia($ps2);
	}
?>