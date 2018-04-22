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

//fungsi - fungsi
require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");
require("../../inc/class/paging2.php");
require("../../inc/cek/adm.php");
$tpl = LoadTpl("../../template/index.html");


nocache;

//nilai
$filenya = "guru.php";
$judul = "Data Guru";
$judulku = "[$adm_session] ==> $judul";
$judulx = $judul;
$s = nosql($_REQUEST['s']);
$gurkd = nosql($_REQUEST['gurkd']);
$page = nosql($_REQUEST['page']);
if ((empty($page)) OR ($page == "0"))
	{
	$page = "1";
	}

$ke = "$filenya?page=$page";







//focus...
$diload = "document.formx.nip.focus();";


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
	$gurkd = nosql($_REQUEST['gurkd']);

	//query
	$qnil = mysql_query("SELECT * FROM m_user ".
							"WHERE tipe = 'GURU' ".
							"AND kd = '$gurkd'");
	$rnil = mysql_fetch_assoc($qnil);

	$y_nip = nosql($rnil['nomor']);
	$y_nama = balikin($rnil['nama']);
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
					"WHERE tipe = 'GURU' ".
					"ORDER BY nomor ASC";
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
						"WHERE tipe = 'GURU' ".
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
	$gurkd = nosql($_POST['gurkd']);
	$nip = nosql($_POST['nip']);
	$nama = cegah($_POST['nama']);


	//nek null
	if ((empty($nip)) OR (empty($nama)))
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
									"WHERE tipe = 'GURU' ".
									"AND nomor = '$nip'");
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
				$pesan = "Ditemukan Duplikasi nip : $nip. Silahkan Diganti...!";
				pekem($pesan,$ke);
				exit();
				}
			else
				{
				//update
				mysql_query("UPDATE m_user SET nomor = '$nip', ".
								"nama = '$nama' ".
								"WHERE kd = '$gurkd' ".
								"AND tipe = 'GURU'");

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
									"WHERE tipe = 'GURU' ".
									"AND nomor = '$nip'");
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
				$pesan = "Ditemukan Duplikasi nip : $nip. Silahkan Diganti...!";
				pekem($pesan,$ke);
				exit();
				}
			else
				{
				//insert ke biodata
				$s_userx = $nip;
				$s_passx = md5($nip);
				$xx = md5($today3);

				//insert data GURU
				mysql_query("INSERT INTO m_user(kd, usernamex, passwordx, nomor, nama, tipe) VALUES ".
								"('$x', '$s_userx', '$s_passx', '$nip', '$nama', 'GURU')");

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
NIP :
<input name="nip" type="text" value="'.$y_nip.'" size="10" '.$x_enter.'>,
Nama :
<input name="nama" type="text" value="'.$y_nama.'" size="20" '.$x_enter.'>
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
				"WHERE tipe = 'GURU' ".
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
	<td width="100" valign="top"><strong>NIP</strong></td>
	<td valign="top"><strong>Nama</strong></td>
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
		$nip = nosql($data['nomor']);
		$nama = balikin($data['nama']);

		echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
		echo '<td width="1"><input name="kd'.$nomer.'" type="hidden" value="'.$kd.'">
		<input type="checkbox" name="item'.$nomer.'" value="'.$kd.'">
		</td>
		<td width="1">
		<a href="'.$filenya.'?s=edit&gurkd='.$kd.'"><img src="'.$sumber.'/img/edit.gif" width="16" height="16" border="0"></a>
		</td>
		<td valign="top">
		'.$nip.'
		</td>
		<td valign="top">
		'.$nama.'
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
	<input name="gurkd" type="hidden" value="'.$gurkd.'">
	<input name="total" type="hidden" value="'.$count.'">
	</td>
	<td align="right"><font color="#FF0000"><strong>'.$count.'</strong></font> Data '.$pagelist.'</td>
    </tr>
	</table>';
	}
else
	{
	echo '<font color="red"><strong>TIDAK ADA DATA GURU. Silahkan Entry Dahulu...!!</strong></font>';
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