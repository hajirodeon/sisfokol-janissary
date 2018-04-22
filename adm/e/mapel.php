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

require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");
require("../../inc/class/paging2.php");
require("../../inc/cek/adm.php");
$tpl = LoadTpl("../../template/index.html");

nocache;

//nilai
$filenya = "mapel.php";
$judul = "Guru Mata Pelajaran";
$judulku = "[$adm_session] ==> $judul";
$judulx = $judul;
$s = nosql($_REQUEST['s']);
$page = nosql($_REQUEST['page']);
if ((empty($page)) OR ($page == "0"))
	{
	$page = "1";
	}

$ke = "$filenya?page=$page";







//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//jika simpan
if ($_POST['btnSMP'])
	{
	//nilai
	$pelkd = nosql($_POST['pelkd']);
	$gurkd = nosql($_POST['gurkd']);

	//nek null
	if ((empty($pelkd)) OR (empty($gurkd)))
		{
		//diskonek
		xfree($qbw);
		xclose($koneksi);

		//re-direct
		$pesan = "Input Tidak Lengkap. Harap Diulangi...!!";
		pekem($pesan,$ke);
		exit();
		}
	else
		{
		//cek
		$qc = mysql_query("SELECT * FROM guru_mapel ".
							"WHERE guru_mapel.kd_mapel = '$pelkd' ".
							"AND guru_mapel.kd_user = '$gurkd'");
		$rc = mysql_fetch_assoc($qc);
		$tc = mysql_num_rows($qc);

		//nek ada, msg
		if ($tc != 0)
			{
			//diskonek
			xfree($qc);
			xfree($qbw);
			xclose($koneksi);

			//re-direct
			$pesan = "Guru Tersebut Telah Mengajar Mata Pelajaran Tersebut. Silahkan Ganti...!";
			pekem($pesan,$ke);
			exit();
			}
		else
			{
			//query
			mysql_query("INSERT INTO guru_mapel(kd, kd_mapel, kd_user) VALUES ".
							"('$x', '$pelkd', '$gurkd')");

			//diskonek
			xfree($qc);
			xfree($qbw);
			xclose($koneksi);

			//re-direct
			xloc($ke);
			exit();
			}
		}
	}



//jika hapus
if ($s == "hapus")
	{
	//nilai
	$pelkd = nosql($_POST['pelkd']);
	$gurkd = nosql($_POST['gurkd']);
	$gkd = nosql($_REQUEST['gkd']);

	//query
	mysql_query("DELETE FROM guru_mapel ".
					"WHERE kd = '$gkd'");

	//diskonek
	xfree($qbw);
	xclose($koneksi);

	//re-direct
	xloc($ke);
	exit();
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



//isi *START
ob_start();

//js
require("../../inc/js/jumpmenu.js");
require("../../inc/js/checkall.js");
require("../../inc/js/swap.js");
require("../../inc/menu/adm.php");
xheadline($judul);

//VIEW //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
echo '<form name="formx" method="post" action="'.$ke.'">
<table width="100%" height="300" border="0" cellspacing="3" cellpadding="0">
<tr valign="top">
<td>

TAMBAH --> <select name="gurkd">
<option value="" selected>-GURU-</option>';

//daftar guru
$qg = mysql_query("SELECT * FROM m_user ".
					"WHERE tipe = 'GURU' ".
					"ORDER BY round(nomor) ASC");
$rg = mysql_fetch_assoc($qg);

do
	{
	$gkd = nosql($rg['kd']);
	$gnip = nosql($rg['nomor']);
	$gnama = balikin2($rg['nama']);

	echo '<option value="'.$gkd.'">'.$gnip.'. '.$gnama.'</option>';
	}
while ($rg = mysql_fetch_assoc($qg));

echo '</select>,
<select name="pelkd">
<option value="" selected>-MATA PELAJARAN-</option>';
//daftar mapel
$qbs = mysql_query("SELECT * FROM m_mapel ".
						"ORDER BY mapel ASC");
$rbs = mysql_fetch_assoc($qbs);

do
	{
	$bskd = nosql($rbs['kd']);
	$bspel = balikin2($rbs['mapel']);

	echo '<option value="'.$bskd.'">'.$bspel.'</option>';
	}
while ($rbs = mysql_fetch_assoc($qbs));

echo '</select>
<input name="page" type="hidden" value="'.$page.'">
<input name="btnSMP" type="submit" value="SIMPAN">
</p>';

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


if ($count != 0)
	{
	echo '<table width="700" border="1" cellpadding="3" cellspacing="0">
	<tr bgcolor="'.$warnaheader.'" valign="top">
	<td width="100" valign="top"><strong>NIP</strong></td>
	<td valign="top"><strong><font color="'.$warnatext.'">Guru</font></strong></td>
	<td width="300" valign="top"><strong><font color="'.$warnatext.'">Mata Pelajaran</font></strong></td>
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

		$kd = nosql($data['kd']);
		$nip = nosql($data['nomor']);
		$nama = balikin2($data['nama']);

		//nek null
		if (empty($nip))
			{
			$nip = "-";
			}

		echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
		echo '<td valign="top">'.$nip.'</td>
		<td valign="top">'.$nama.'</td>
		<td valign="top">';

		//pel-nya
		$quru = mysql_query("SELECT guru_mapel.*, guru_mapel.kd AS gmkd, m_mapel.*  ".
								"FROM guru_mapel, m_mapel ".
								"WHERE guru_mapel.kd_mapel = m_mapel.kd ".
								"AND guru_mapel.kd_user = '$kd' ".
								"ORDER BY mapel ASC");
		$ruru = mysql_fetch_assoc($quru);

		do
			{
			$gkd = nosql($ruru['gmkd']);
			$gpel = balikin2($ruru['mapel']);

			//nek null
			if (empty($gkd))
				{
				echo "-";
				}
			else
				{
				echo '<p>
				<strong>*</strong>'.$gpel.'
				[<a href="'.$ke.'&s=hapus&gkd='.$gkd.'" title="HAPUS --> '.$gpel.'">HAPUS</a>]
				</p>';
				}
			}
		while ($ruru = mysql_fetch_assoc($quru));

		echo '</td>
   		</tr>';
		}
	while ($data = mysql_fetch_assoc($result));

	echo '</table>
	<table width="700" border="0" cellspacing="0" cellpadding="3">
    <tr>
    <td align="right">Total : <strong><font color="#FF0000">'.$count.'</font></strong> Data. '.$pagelist.'</td>
    </tr>
  	</table>';
	}
else
	{
	echo '<font color="red"><strong>TIDAK ADA DATA. Silahkan Entry Dahulu...!!</strong></font>';
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