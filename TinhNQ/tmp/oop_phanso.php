<?php
	/**
	* doi tuong phan
	*/
	class PhanSo
	{
		private $_tuSo;
		private $_mauSo;

		public function input($tuSo, $mauSo)
		{
			$this->_tuSo = $tuSo;
			$this->_mauSo = $mauSo;
		}

		public function cong($ps2)
		{
			$ps3 = new PhanSo();
			$ps3->_tuSo = $this->_tuSo * $ps2->_mauSo + $this->_mauSo * $ps2->_tuSo;
			$ps3->_mauSo = $this->_mauSo * $ps2->_mauSo;
			
			return $ps3;
		}

		public function output()
		{
			echo "$this->_tuSo/$this->_mauSo";
		}

		public function pheptinh($ps1, $ps2, $dau)
		{
			$ps1->output();
			echo " $dau ";
			$ps2->output();
			echo " = ";
			$this->output();
		}
	}
?>