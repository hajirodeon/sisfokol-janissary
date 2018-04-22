<?php
session_start();

//fungsi - fungsi
require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");
require("../../inc/class/paging2.php");
require("../../inc/cek/adm.php");
$tpl = LoadTpl("../../template/index.html");


nocache;

//nilai
$filenya = "siswa.php";
$judul = "Data Siswa";
$judulku = "[$adm_session] ==> $judul";
$judulx = $judul;
$s = nosql($_REQUEST['s']);
$swkd = nosql($_REQUEST['swkd']);
$page = nosql($_REQUEST['page']);
if ((empty($page)) OR ($page == "0"))
	{
	$page = "1";
	}

$ke = "$filenya?page=$page";







//focus...
$diload = "document.formx.nis.focus();";


//nek enter, ke simpan
$x_enter = 'onKeyDown="var keyCode = event.keyCode;
if (keyCode == 13)
	{
	document.formx.btnSMP.focus();
	}"';




//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//jika batal
if ($_POST['btnBTL'])
	{
	//diskonek
	xfree($qbw);
	xclose($koneksi);

	//re-direct
	xloc($ke);
	exit();
	}


//nek edit
if ($s == "edit")
	{
	//nilai
	$swkd = nosql($_REQUEST['swkd']);

	//query
	$qnil = mysql_query("SELECT * FROM m_user ".
				"WHERE tipe = 'SISWA' ".
				"AND kd = '$swkd'");
	$rnil = mysql_fetch_assoc($qnil);
	$y_nis = nosql($rnil['nomor']);
	$y_nama = balikin($rnil['nama']);
	$y_kelkd = balikin($rnil['kd_kelas']);


	//kelas e
	$qkel = mysql_query("SELECT * FROM m_kelas ".
				"WHERE kd = '$y_kelkd'");
	$rkel = mysql_fetch_assoc($qkel);
	$y_kelas = balikin($rkel['kelas']);
	}



//jika hapus
if ($_POST['btnHPS'])
	{
	//nilai
	$page = nosql($_REQUEST['page']);


	//query
	$p = new Pager();
	$start = $p->findStart($limit);

	$sqlcount = "SELECT * FROM m_user ".
			"WHERE tipe = 'SISWA' ".
			"ORDER BY round(nomor) ASC";
	$sqlresult = $sqlcount;

	$count = mysql_num_rows(mysql_query($sqlcount));
	$pages = $p->findPages($count, $limit);
	$result = mysql_query("$sqlresult LIMIT ".$start.", ".$limit);
	$pagelist = $p->pageList($_GET['page'], $pages, $target);
	$data = mysql_fetch_array($result);



	//ambil semua
	do
		{
		//ambil nilai
		$i = $i + 1;
		$yuk = "item";
		$yuhu = "$yuk$i";
		$kd = nosql($_POST["$yuhu"]);

		//del data
		mysql_query("DELETE FROM m_user ".
				"WHERE tipe = 'SISWA' ".
				"AND kd = '$kd'");
		}
	while ($data = mysql_fetch_assoc($result));

	//diskonek
	xfree($qbw);
	xclose($koneksi);

	//auto-kembali
	xloc($ke);
	exit();
	}


//jika simpan
if ($_POST['btnSMP'])
	{
	//nilai
	$s = nosql($_POST['s']);
	$swkd = nosql($_POST['swkd']);
	$kelas = nosql($_POST['kelas']);
	$nis = nosql($_POST['nis']);
	$nama = cegah($_POST['nama']);


	//nek null
	if ((empty($nis)) OR (empty($nama)) OR (empty($kelas)))
		{
		//diskonek
		xfree($qbw);
		xclose($koneksi);

		//re-direct
		$pesan = "Input Tidak Lengkap. Harap Diulangi...!";
		pekem($pesan,$ke);
		exit();
		}
	else
		{
		//nek edit
		if ($s == "edit")
			{
			//cek
			$qcc = mysql_query("SELECT * FROM m_user ".
						"WHERE tipe = 'SISWA' ".
						"AND nomor = '$nis'");
			$rcc = mysql_fetch_assoc($qcc);
			$tcc = mysql_num_rows($qcc);

			//nek lebih dari 1
			if ($tcc > 1)
				{
				//diskonek
				xfree($qcc);
				xfree($qbw);
				xclose($koneksi);

				//re-direct
				$pesan = "Ditemukan Duplikasi NIS : $nis. Silahkan Diganti...!";
				pekem($pesan,$ke);
				exit();
				}
			else
				{
				//update
				mysql_query("UPDATE m_user SET nomor = '$nis', ".
						"nama = '$nama', ".
						"kd_kelas = '$kelas' ".
						"WHERE kd = '$swkd' ".
						"AND tipe = 'SISWA'");

				//diskonek
				xfree($qcc);
				xfree($qbw);
				xclose($koneksi);

				//re-direct
				xloc($ke);
				exit();
				}
			}





		//nek baru
		if (empty($s))
			{
			//cek
			$qcc = mysql_query("SELECT * FROM m_user ".
						"WHERE tipe = 'SISWA' ".
						"AND nomor = '$nis'");
			$rcc = mysql_fetch_assoc($qcc);
			$tcc = mysql_num_rows($qcc);

			//nek ada
			if ($tcc != 0)
				{
				//diskonek
				xfree($qcc);
				xfree($qbw);
				xclose($koneksi);

				//re-direct
				$pesan = "Ditemukan Duplikasi NIS : $nis. Silahkan Diganti...!";
				pekem($pesan,$ke);
				exit();
				}
			else
				{
				//insert ke biodata
				$s_userx = $nis;
				$s_passx = md5($nis);
				$xx = md5($today3);

				//insert data siswa
				mysql_query("INSERT INTO m_user(kd, usernamex, passwordx, nomor, nama, tipe, kd_kelas) VALUES ".
						"('$x', '$s_userx', '$s_passx', '$nis', '$nama', 'SISWA', '$kelas')");

				//diskonek
				xfree($qcc);
				xfree($qbw);
				xclose($koneksi);

				//re-direct
				xloc($ke);
				exit();
				}
			}
		}
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




//isi *START
ob_start();


//js
require("../../inc/js/jumpmenu.js");
require("../../inc/js/swap.js");
require("../../inc/js/checkall.js");
require("../../inc/js/number.js");
require("../../inc/menu/adm.php");
xheadline($judul);

//view //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
echo '<form name="formx" method="post" action="'.$filenya.'">
<table width="100%" height="300" border="0" cellspacing="3" cellpadding="0">
<tr valign="top">
<td>

<table width="100%" border="0" cellspacing="0" cellpadding="3">
<tr valign="top">
<td>
NIS :
<input name="nis" type="text" value="'.$y_nis.'" size="10" '.$x_enter.'>,
Nama :
<input name="nama" type="text" value="'.$y_nama.'" size="20" '.$x_enter.'>,

Kelas :
<select name="kelas">
<option value="'.$y_kelkd.'" selected>'.$y_kelas.'</option>';

//daftar kelas
$qdt = mysql_query("SELECT * FROM m_kelas ".
			"ORDER BY kelas ASC");
$rdt = mysql_fetch_assoc($qdt);

do
	{
	$dt_kd = nosql($rdt['kd']);
	$dt_kelas = balikin($rdt['kelas']);

	echo '<option value="'.$dt_kd.'">'.$dt_kelas.'</option>';
	}
while ($rdt = mysql_fetch_assoc($qdt));



echo '</select>



<input name="btnSMP" type="submit" value="SIMPAN">
<input name="btnBTL" type="submit" value="BATAL">
</td>
</tr>
</table>
<br>';


//query
$p = new Pager();
$start = $p->findStart($limit);

$sqlcount = "SELECT * FROM m_user ".
		"WHERE tipe = 'SISWA' ".
		"ORDER BY round(nomor) ASC";
$sqlresult = $sqlcount;

$count = mysql_num_rows(mysql_query($sqlcount));
$pages = $p->findPages($count, $limit);
$result = mysql_query("$sqlresult LIMIT ".$start.", ".$limit);
$target = $ke;
$pagelist = $p->pageList($_GET['page'], $pages, $target);
$data = mysql_fetch_array($result);

//nek ada
if ($count != 0)
	{
	echo '<table width="500" border="1" cellpadding="3" cellspacing="0">
	<tr bgcolor="'.$warnaheader.'">
	<td width="1">&nbsp;</td>
	<td width="1">&nbsp;</td>
	<td width="100" valign="top"><strong>NIS</strong></td>
	<td valign="top"><strong>Nama</strong></td>
	<td width="100" valign="top"><strong>Kelas</strong></td>
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

		$i_kd = nosql($data['kd']);
		$i_nis = nosql($data['nomor']);
		$i_nama = balikin($data['nama']);
		$i_kelkd = nosql($data['kd_kelas']);


		//kelas e
		$qkel = mysql_query("SELECT * FROM m_kelas ".
					"WHERE kd = '$i_kelkd'");
		$rkel = mysql_fetch_assoc($qkel);
		$i_kelas = balikin($rkel['kelas']);



		echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
		echo '<td width="1"><input name="kd'.$nomer.'" type="hidden" value="'.$i_kd.'">
		<input type="checkbox" name="item'.$nomer.'" value="'.$i_kd.'">
		</td>
		<td width="1">
		<a href="'.$filenya.'?s=edit&swkd='.$i_kd.'"><img src="'.$sumber.'/img/edit.gif" width="16" height="16" border="0"></a>
		</td>
		<td valign="top">
		'.$i_nis.'
		</td>
		<td valign="top">
		'.$i_nama.'
		</td>
		<td valign="top">
		'.$i_kelas.'
		</td>
		</tr>';
  		}
	while ($data = mysql_fetch_assoc($result));

	echo '</table>
	<table width="500" border="0" cellspacing="0" cellpadding="3">
    	<tr>
	<td width="250">
	<input type="button" name="Button" value="SEMUA" onClick="checkAll('.$limit.')">
	<input name="btnBTL" type="reset" value="BATAL">
	<input name="btnHPS" type="submit" value="HAPUS">
	<input name="jml" type="hidden" value="'.$limit.'">
	<input name="s" type="hidden" value="'.$s.'">
	<input name="swkd" type="hidden" value="'.$swkd.'">
	<input name="total" type="hidden" value="'.$count.'">
	</td>
	<td align="right"><font color="#FF0000"><strong>'.$count.'</strong></font> Data '.$pagelist.'</td>
    	</tr>
	</table>';
	}
else
	{
	echo '<font color="red"><strong>TIDAK ADA DATA SISWA. Silahkan Entry Dahulu...!!</strong></font>';
	}

echo '</td>
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