<?php
	// input
	$tu1 = 1;
	$mau1 = 2;
	$tu2 = 3;
	$mau2 = 5;
	$dau = '-';// - or * or :

	// xử lý
	if ($dau == '+') {
		cong($tu1, $mau1, $tu2, $mau2);
	} elseif ($dau == '-') {
		tru($tu1, $mau1, $tu2, $mau2);
	} elseif ($dau == '*') {
		nhan($tu1, $mau1, $tu2, $mau2);
	} elseif ($dau == ':') {
		chia($tu1, $mau1, $tu2, $mau2);
	}

	function cong($tu1, $mau1, $tu2, $mau2)
	{
		// xu ly cong
		$tu3 = $tu1 * $mau2 + $mau1 * $tu2;
		$mau3 = $mau1 * $mau2;
		
		in($tu1, $mau1, $tu2, $mau2, $tu3, $mau3);
	}

	function tru($tu1, $mau1, $tu2, $mau2)
	{
		// xu ly tru
		$tu3 = $tu1 * $mau2 - $mau1 * $tu2;
		$mau3 = $mau1 * $mau2;
		
		in($tu1, $mau1, $tu2, $mau2, $tu3, $mau3);
	}

	function nhan($tu1, $mau1, $tu2, $mau2)
	{
		// xu ly nhan
		$tu3 = $tu1 * $tu2;
		$mau3 = $mau1 * $mau2;
		
		in($tu1, $mau1, $tu2, $mau2, $tu3, $mau3);
	}

	function chia($tu1, $mau1, $tu2, $mau2)
	{
		// xu ly chia
		$tu3 = $tu1 * $mau2;
		$mau3 = $mau1 * $tu2;
		
		in($tu1, $mau1, $tu2, $mau2, $tu3, $mau3);
	}

	function in($tu1, $mau1, $tu2, $mau2, $tu3, $mau3)
	{
		// in ra
		echo "$tu1/$mau1 $dau $tu2/$mau2 = $tu3/$mau3";
	}
?>