<?php
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
/////// SISFOKOL JANISSARI                          ///////
/////// (customization)                             ///////
///////////////////////////////////////////////////////////
/////// Dibuat oleh :                               ///////
/////// Agus Muhajir, S.Kom                         ///////
/////// URL     :                                   ///////
///////     *http://sisfokol.wordpress.com          ///////
//////      *http://hajirodeon.wordpress.com        ///////
/////// E-Mail  :                                   ///////
///////     * hajirodeon@yahoo.com                  ///////
///////     * hajirodeon@gmail.com                  ///////
/////// HP/SMS  : 081-829-88-54                     ///////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////



session_start();

//ambil nilai
require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");
require("../../inc/class/paging.php");
require("../../inc/cek/adm.php");
$tpl = LoadTpl("../../template/index.html");

nocache;

//nilai
$filenya = "reset_pass.php";
$diload = "document.formx.akses.focus();";
$judul = "Reset Password";
$judulku = "[$adm_session] ==> $judul";
$juduli = $judul;
$tpkd = nosql($_REQUEST['tpkd']);
$tipe = cegah($_REQUEST['tipe']);







//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if ($_POST['btnRST'])
	{
	$tpkd = nosql($_POST['tpkd']);
	$tipe = cegah($_POST['tipe']);
	$page = nosql($_POST['page']);
	if ((empty($page)) OR ($page == "0"))
		{
		$page = "1";
		}


	//nek siswa .........................................................................................................................
	if ($tpkd == "tp01")
		{
		$tapelkd = nosql($_POST['tapelkd']);
		$kelkd = nosql($_POST['kelkd']);
		$item = nosql($_POST['item']);
		$passbarux = md5($passbaru);
		$ke = "$filenya?tpkd=$tpkd&tipe=$tipe&tapelkd=$tapelkd&kelkd=$kelkd&page=$page";

		//cek
		//nek blm dipilih
		if (empty($item))
			{
			//diskonek
			xfree($qbw);
			xclose($koneksi);

			//re-direct
			$pesan = "Reset Password Gagal. Anda Belum Memilih Siswa.";
			pekem($pesan,$ke);
			exit();
			}
		else
			{
			//query
			$qsuk = mysql_query("SELECT * FROM m_user ".
									"WHERE kd = '$item' ".
									"AND tipe = 'SISWA'");
			$rsuk = mysql_fetch_assoc($qsuk);
			$suk_nis = nosql($rsuk['nomor']);
			$suk_nm = balikin($rsuk['nama']);
			$pesan = "NIS : $suk_nis, Nama : $suk_nm. Password Baru : $passbaru";

			//reset password
			mysql_query("UPDATE m_user SET passwordx = '$passbarux', ".
							"postdate = '$today' ".
							"WHERE kd = '$item' ".
							"AND tipe = 'SISWA'");

			//re-direct
			pekem($pesan,$ke);
			exit();
			}
		}
	//...................................................................................................................................





	//nek guru ..........................................................................................................................
	if ($tpkd == "tp02")
		{
		$item = nosql($_POST['item']);
		$passbarux = md5($passbaru);
		$ke = "$filenya?tpkd=$tpkd&tipe=$tipe&page=$page";

		//cek
		//nek null
		if (empty($item))
			{
			//diskonek
			xfree($qbw);
			xclose($koneksi);

			//re-direct
			$pesan = "Reset Password Gagal. Anda Belum Memilih Guru.";
			pekem($pesan,$ke);
			exit();
			}
		else
			{
			//query
			$qsuk = mysql_query("SELECT * FROM m_user ".
									"WHERE kd = '$item' ".
									"AND tipe = 'GURU'");
			$rsuk = mysql_fetch_assoc($qsuk);
			$suk_nip = nosql($rsuk['nomor']);
			$suk_nm = balikin($rsuk['nama']);
			$pesan = "NIP : $suk_nip, Nama : $suk_nm. Password Baru : $passbaru";

			//reset password
			mysql_query("UPDATE m_user SET passwordx = '$passbarux', ".
							"postdate = '$today' ".
							"WHERE kd = '$item' ".
							"AND tipe = 'GURU'");

			//re-direct
			pekem($pesan,$ke);
			exit();
			}
		}
	//...................................................................................................................................
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




//isi *START
ob_start();

//js
require("../../inc/js/jumpmenu.js");
require("../../inc/js/swap.js");
require("../../inc/menu/adm.php");
xheadline($judul);

//view //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
echo '<table width="100%" height="300" border="0" cellspacing="3" cellpadding="0">
<tr valign="top">
<td>

<table bgcolor="'.$warnaover.'" width="100%" border="0" cellspacing="0" cellpadding="3">
<tr>
<td>
Akses : ';
echo "<select name=\"akses\" onChange=\"MM_jumpMenu('self',this,0)\">";
echo '<option value="'.$filenya.'?tpkd='.$tpkd.'" selected>'.$tipe.'</option>
<option value="'.$filenya.'?tpkd=tp01&tipe=Siswa">-Siswa-</option>
<option value="'.$filenya.'?tpkd=tp02&tipe=Guru">-Guru-</option>
</select>
</td>
</tr>
</table>

<p>';
//nek siswa /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if ($tpkd == "tp01")
	{
	//nilai
	$page = nosql($_REQUEST['page']);
	if ((empty($page)) OR ($page == "0"))
		{
		$page = "1";
		}

	$ke = "$filenya?tpkd=$tpkd&tipe=$tipe&page=$page";



	//data ne....
	$p = new Pager();
	$start = $p->findStart($limit);

	$sqlcount = "SELECT * FROM m_user ".
					"WHERE tipe = 'SISWA' ".
					"ORDER BY nomor ASC";
	$sqlresult = $sqlcount;

	$count = mysql_num_rows(mysql_query($sqlcount));
	$pages = $p->findPages($count, $limit);
	$result = mysql_query("$sqlresult LIMIT ".$start.", ".$limit);
	$target = $ke;
	$pagelist = $p->pageList($_GET['page'], $pages, $target);
	$data = mysql_fetch_array($result);


	if ($count != 0)
		{
		echo '<table width="500" border="1" cellpadding="3" cellspacing="0">
	    <tr bgcolor="'.$warnaheader.'">
		<td width="1">&nbsp;</td>
		<td width="100" valign="top"><strong>NIS</strong></td>
		<td valign="top"><strong>Nama</strong></td>
		<td width="150" valign="top"><strong>Postdate</strong></td>
	    </tr>';

		do
	  		{
			if ($warna_set ==0)
				{
				$warna = $warna01;
				$warna_set = 1;
				}
			else
				{
				$warna = $warna02;
				$warna_set = 0;
				}

			$nomer = $nomer + 1;

			$kd = nosql($data['kd']);
			$nis = nosql($data['nomor']);
			$nama = balikin($data['nama']);
			$postdate = $data['postdate'];

			//nek null
			if ($postdate == "0000-00-00 00:00:00")
				{
				$postdate = "-";
				}

			echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
			echo '<td width="1"><input name="kd'.$nomer.'" type="hidden" value="'.$kd.'">
			<input type="radio" name="item" value="'.$kd.'">
			</td>
			<td valign="top">
			'.$nis.'
			</td>
			<td valign="top">
			'.$nama.'
			</td>
			<td valign="top">
			'.$postdate.'
			</td>
			</tr>';
	  		}
		while ($data = mysql_fetch_assoc($result));

		echo '</table>
		<table width="500" border="0" cellspacing="0" cellpadding="3">
	    <tr>
		<td width="100">
		<input name="btnRST" type="submit" value="RESET">
		<input name="jml" type="hidden" value="'.$limit.'">
		<input name="tpkd" type="hidden" value="'.$tpkd.'">
		<input name="tipe" type="hidden" value="'.$tipe.'">
		<input name="page" type="hidden" value="'.$page.'">
		<input name="total" type="hidden" value="'.$count.'">
		</td>
		<td align="right"><font color="#FF0000"><strong>'.$count.'</strong></font> Data '.$pagelist.'</td>
	    </tr>
		</table>
		<br>
		<br>';
		}
	else
		{
		echo '<font color="red"<strong>TIDAK ADA DATA SISWA. Silahkan Entry Dahulu...!!</strong></font>';
		}
	}





//nek guru //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if ($tpkd == "tp02")
	{
	//nilai
	$page = nosql($_REQUEST['page']);
	if ((empty($page)) OR ($page == "0"))
		{
		$page = "1";
		}

	$ke = "$filenya?tpkd=$tpkd&tipe=$tipe&page=$page";


	//data ne....
	$p = new Pager();
	$start = $p->findStart($limit);

	$sqlcount = "SELECT * FROM m_user ".
					"WHERE tipe = 'GURU' ".
					"ORDER BY nomor ASC";
	$sqlresult = $sqlcount;

	$count = mysql_num_rows(mysql_query($sqlcount));
	$pages = $p->findPages($count, $limit);
	$result = mysql_query("$sqlresult LIMIT ".$start.", ".$limit);
	$target = $ke;
	$pagelist = $p->pageList($_GET['page'], $pages, $target);
	$data = mysql_fetch_array($result);

	if ($count != 0)
		{
		echo '<table width="500" border="1" cellpadding="3" cellspacing="0">
	    <tr bgcolor="'.$warnaheader.'">
		<td width="1">&nbsp;</td>
		<td width="100" valign="top"><strong>NIP</strong></td>
		<td valign="top"><strong>Nama</strong></td>
		<td width="150" valign="top"><strong>Postdate</strong></td>
	    </tr>';

		do
	  		{
			if ($warna_set ==0)
				{
				$warna = $warna01;
				$warna_set = 1;
				}
			else
				{
				$warna = $warna02;
				$warna_set = 0;
				}

			$nomer = $nomer + 1;

			//nilai
			$kd = nosql($data['kd']);
			$dt_nip = nosql($data['nomor']);
			$dt_nama = balikin($data['nama']);
			$dt_postdate = $data['postdate'];

			//nek null
			if ($dt_postdate == "0000-00-00 00:00:00")
				{
				$dt_postdate = "-";
				}


			echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
			echo '<td width="1"><input name="kd'.$nomer.'" type="hidden" value="'.$kd.'">
			<input type="radio" name="item" value="'.$kd.'">
			</td>
			<td valign="top">
			'.$dt_nip.'
			</td>
			<td valign="top">
			'.$dt_nama.'
			</td>
			<td valign="top">
			'.$dt_postdate.'
			</td>
			</tr>';
	  		}
		while ($data = mysql_fetch_assoc($result));

		echo '</table>
		<table width="500" border="0" cellspacing="0" cellpadding="3">
	    <tr>
		<td width="100">
		<input name="btnRST" type="submit" value="RESET">
		<input name="jml" type="hidden" value="'.$limit.'">
		<input name="kd" type="hidden" value="'.$kd.'">
		<input name="tpkd" type="hidden" value="'.$tpkd.'">
		<input name="tipe" type="hidden" value="'.$tipe.'">
		<input name="page" type="hidden" value="'.$page.'">
		<input name="total" type="hidden" value="'.$count.'">
		</td>
		<td align="right"><font color="#FF0000"><strong>'.$count.'</strong></font> Data '.$pagelist.'</td>
	    </tr>
		</table>
		<br>
		<br>';
		}
	else
		{
		echo '<font color="red"<strong>TIDAK ADA DATA GURU. Silahkan Entry Dahulu...!!</strong></font>';
		}
	}


echo '</p>

</td>
</tr>
</table>
<br>
<br>
<br>';
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//isi
$isi = ob_get_contents();
ob_end_clean();

require("../../inc/niltpl.php");



//diskonek
xfree($qbw);
xclose($koneksi);
exit();
?>