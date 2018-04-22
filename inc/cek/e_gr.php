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


//cek user GURU
$qsur = mysql_query("SELECT guru_mapel.*, guru_mapel.kd AS gmkd, ".
			"m_user.* ".
			"FROM guru_mapel, m_user ".
			"WHERE guru_mapel.kd_user = m_user.kd ".
			"AND guru_mapel.kd_user = '$kd1_session' ".
			"AND m_user.tipe = 'GURU'");
$rsur = mysql_fetch_assoc($qsur);
$tsur = mysql_num_rows($qsur);

//jika bukan guru
if ($tsur == 0)
	{
	//re-direct
	$pesan = "Anda Bukan Seorang Guru Terima Kasih.";
	$ke = "$sumber/janissari/index.php";
	pekem($pesan,$ke);
	exit();
	}
?>