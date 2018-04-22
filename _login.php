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



//ambil nilai
require("inc/config.php");
require("inc/fungsi.php");
require("inc/koneksi.php");
require("inc/class/paging.php");
$tpl = LoadTpl("template/login.html");


nocache;

//nilai
$filenya = "login.php";
$judul = $versi;
$pesan = "PASSWORD SALAH. HARAP DIULANGI...!!!";
$k = nosql($_REQUEST['k']);
$s = nosql($_REQUEST['s']);
$a = nosql($_REQUEST['a']);
$j = nosql($_REQUEST['j']);
$artkd = nosql($_REQUEST['artkd']);
$jurkd = nosql($_REQUEST['jurkd']);


//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if ($_POST['btnOK'])
	{
	//ambil nilai
	$tipe = nosql($_POST["tipe"]);
	$username = nosql($_POST["usernamex"]);
	$password = md5(nosql($_POST["passwordx"]));

	//cek null
	if ((empty($tipe)) OR (empty($username)) OR (empty($password)))
		{
		//diskonek
		xclose($koneksi);

		//re-direct
		$pesan = "Input Tidak Lengkap. Harap Diulangi...!!";
		pekem($pesan,$filenya);
		exit();
		}
	else
		{
		//jika tp01 --> GURU ............................................................................................................
		if ($tipe == "tp01")
			{
			//query
			$q = mysql_query("SELECT * FROM m_user ".
						"WHERE usernamex = '$username' ".
						"AND passwordx = '$password' ".
						"AND tipe = 'GURU'");
			$row = mysql_fetch_assoc($q);
			$total = mysql_num_rows($q);

			//cek login
			if ($total != 0)
				{
				session_start();

				//nilai
				$_SESSION['kd1_session'] = nosql($row['kd']);
				$_SESSION['no1_session'] = nosql($row['nomor']);
				$_SESSION['nm1_session'] = balikin($row['nama']);
				$_SESSION['username1_session'] = $username;
				$_SESSION['pass1_session'] = $password;
				$_SESSION['tipe_session'] = "GURU";
				$_SESSION['hajirobe_session'] = $hajirobe;

				//diskonek
				xfree($q);
				xclose($koneksi);

				//re-direct
				$ke = "janissari/index.php";
				xloc($ke);
				exit();
				}
			else
				{
				//diskonek
				xfree($q);
				xclose($koneksi);

				//re-direct
				pekem($pesan,$filenya);
				exit();
				}
			}
		//...............................................................................................................................





		//jika tp02 --> SISWA ...........................................................................................................
		if ($tipe == "tp02")
			{
			//query
			$q = mysql_query("SELECT * FROM m_user ".
						"WHERE usernamex = '$username' ".
						"AND passwordx = '$password' ".
						"AND tipe = 'SISWA'");
			$row = mysql_fetch_assoc($q);
			$total = mysql_num_rows($q);

			//cek login
			if ($total != 0)
				{
				session_start();

				//nilai
				$_SESSION['kd1_session'] = nosql($row['kd']);
				$_SESSION['no1_session'] = nosql($row['nomor']);
				$_SESSION['nm1_session'] = balikin($row['nama']);
				$_SESSION['username1_session'] = $username;
				$_SESSION['pass1_session'] = $password;
				$_SESSION['tipe_session'] = "SISWA";
				$_SESSION['hajirobe_session'] = $hajirobe;

				//diskonek
				xfree($q);
				xclose($koneksi);

				//re-direct
				$ke = "janissari/index.php";
				xloc($ke);
				exit();
				}
			else
				{
				//diskonek
				xfree($q);
				xclose($koneksi);

				//re-direct
				pekem($pesan,$filenya);
				exit();
				}
			}
		//................................................................................................................................





		//jika tp03 --> Administrator ....................................................................................................
		if ($tipe == "tp03")
			{
			//query
			$q = mysql_query("SELECT * FROM adminx ".
						"WHERE usernamex = '$username' ".
						"AND passwordx = '$password'");
			$row = mysql_fetch_assoc($q);
			$total = mysql_num_rows($q);

			//cek login
			if ($total != 0)
				{
				session_start();

				//nilai
				$_SESSION['kd3_session'] = nosql($row['kd']);
				$_SESSION['username3_session'] = $username;
				$_SESSION['pass3_session'] = $password;
				$_SESSION['adm_session'] = "Administrator";
				$_SESSION['hajirobe_session'] = $hajirobe;

				//diskonek
				xfree($q);
				xclose($koneksi);

				//re-direct
				$ke = "adm/index.php";
				xloc($ke);
				exit();
				}
			else
				{
				//diskonek
				xfree($q);
				xclose($koneksi);

				//re-direct
				pekem($pesan,$filenya);
				exit();
				}
			}
		//................................................................................................................................
		}
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



//isi *START
ob_start();


?>



<script src="<?php echo $sumber;?>/inc/js/jquery-1.10.2.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	$('#loading').ajaxStart(function(){
			$(this).show();
		}).ajaxStop(function(){
			$(this).hide();
		});



jQuery.noConflict();
	
});
</script>




<script type="text/javascript">
$(document).ready(function() {

   $("#p-ttg").click(function(){
	$("#dialog-p-ttg").dialog({
		width: 1000,
		height: 400,
		resizable: false,
		modal: true
	});

   return false;
   });


   $("#p-beli").click(function(){
	$("#dialog-p-beli").dialog({
		width: 1000,
		height: 500,
		resizable: false,
		modal: true
	});

   return false;
   });

});
</script>



<?php
//view //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
echo '<table cellpadding="0" border="0" cellspacing="0">
  <tr>
    <td><img alt=" " src="img/login_0_0.png" style="width: 37px;  height: 37px; border-width: 0px;"></td>
    <td><img alt=" " src="img/login_0_1.png" style="width: 477px;  height: 37px; border-width: 0px;"></td>
    <td><img alt=" " src="img/login_0_2.png" style="width: 249px;  height: 37px; border-width: 0px;"></td>
    <td><img alt=" " src="img/login_0_3.png" style="width: 28px;  height: 37px; border-width: 0px;"></td>
</tr>

  <tr>
    <td><img alt=" " src="img/login_1_0.png" style="width: 37px;  height: 230px; border-width: 0px;"></td>
    <td background="img/login_1_1.png">
	<font color="white">
    <h1>
	'.$sek_nama.'
	</h1>
	<em>
	'.$sek_alamat.'
	<br>
	'.$sek_kontak.'
	</em>
	</font>
    </td>
    <td background="img/login_1_2.png" align="right">
    <font color="yellow">
    <p>
	Tipe :
	<select name="tipe">
	<option value="" selected></option>
	<option value="tp01">Guru</option>
	<option value="tp02">Siswa</option>
	<option value="tp03">Administrator</option>
	</select>
	<br>
	Username :
	<input name="usernamex" type="text" size="10" maxlength="15">
	<br>
	Password :
	<input name="passwordx" type="password" size="10" maxlength="15">
	<br>
	<input name="btnBTL" type="reset" value="BATAL">
	<input name="btnOK" type="submit" value="OK &gt;&gt;&gt;">
    </p>
    </font>
    <br>
    
    
    <font color="brown">
	<p>
	&copy;2015. {versi}
	</p>
	
	</font>
	
	[<a href="#" id="p-ttg">TENTANG INI</a>]. 
	[<a href="#" id="p-beli">BELI LISENSI</a>]. 
    </td>
    <td><img alt=" " src="img/login_1_3.png" style="width: 28px;  height: 230px; border-width: 0px;"></td>
</tr>

  <tr>
    <td><img alt=" " src="img/login_2_0.png" style="width: 37px;  height: 33px; border-width: 0px;"></td>
    <td><img alt=" " src="img/login_2_1.png" style="width: 477px;  height: 33px; border-width: 0px;"></td>
    <td><img alt=" " src="img/login_2_2.png" style="width: 249px;  height: 33px; border-width: 0px;"></td>
    <td><img alt=" " src="img/login_2_3.png" style="width: 28px;  height: 33px; border-width: 0px;"></td>
</tr>

</table>

<br>
<br>




<div id="dialog-p-ttg" title="Tentang SISFOKOL-JANISSARY v2.0" style="display:none;">
<p>
SISFOKOL-JANISSARY adalah Aplikasi basis web, yang menggunakan WebServer, PHP, dan Mysql.

Untuk keperluan E-Learning Guru dan Siswa, serta Jejaring Sosial di Sekolah. 

Sehingga memudahkan dalam komunikasi Interaktif dan Pembelajaran Materi, antara Guru dan Siswa.
</p>

<p>
<b>
Dikembangkan oleh Agus Muhajir. Sejak Tahun 2011 (v1.0), Tahun 2015 (v2.0).
</b>
</p>

<p>
E-Mail : 
<br>
<b>
hajirodeon@yahoo.com; hajirodeon@gmail.com
</b> 
</p>

<p>
FB :
<br>
<b>
facebook.com/hajirodeon
</b>
</p>


<p>
SMS/WA/Telegram : 
<br>
<b>
081-829-88-54.
</b>
</p>

<p>
Web : 
<br>
<b>
*omahbiasawae.com
<br>
*sisfokol.wordpress.com
<br>
*yahoogroup.com/groups/sisfokol
<br>
*Facebook Group : SISFOKOL
</b>
</p>
</div>





<div id="dialog-p-beli" title="Beli Lisensi SISFOKOL-JANISSARY v2.0" style="display:none;">
<p>
Lisensi disini adalah Hanya berlaku Lisensi lebih kepada Penggunaan SISFOKOL-JANISSARY 
untuk Instalasi dan Penggunaan dalam ruang lingkup Intern Sekolah dengan menggunakan Server Lokal maupun Server Luar maupun Server Internet.
</p>

<p>
Untuk penggunaan keperluan riset dan belajar coding, tidak diwajibkan membeli Lisensi.
</p>

<p>
Besarnya pembelian lisensi, berdasarkan Donasi atau sumbangan, yang besarnya berkisar Rp. 100.000,00 (SERATUS RIBU RUPIAH) sampai dengan Rp.1.000.000,00 (SATU JUTA RUPIAH).
</p>

<p>
Pembelian Lisensi juga tetap harus dilakukan, saat adanya rilis baru Update Rilis dari SISFOKOL-JANISSARY ini.
</p>

<p>
Setiap pembelian Lisensi, akan mendapatkan Paket CD SISFOKOL-JANISSARY, 
yang berisi source code SISFOKOL-JANISSARY, yang bebas dari IklanBaris. 
Dan juga E-Book File PDF Penggunaan SISFOKOL-JANISSARY.
</p>

<p>
Begitu juga untuk pembelian Lisensi Update Baru yang Rilis, akan mendapatkan Paket CD SISFOKOL-JANISSARY.
</p>

<p>
Transfer Donasi Pembelian Lisensi SISFOKOL-JANISSARY, bisa ke :
<br>
<b>
Bank Mandiri Cab.Pemuda Semarang.
<br>
A/N. Agus Muhajir.
<br>
135-00-040-3665-1.
</b>
<br>
<br>
Setelah melakukan transfer, segeralah konfirmasi ya.
</p>



<p>
Informasi Lebih Lanjut, Saran dan Kritik, Silahkan hubungi :
<br>
<b>
Agus Muhajir.
<br>
SMS/WA/Telegram : 081-829-88-54.
<br>
E-Mail : hajirodeon@yahoo.com; hajirodeon@gmail.com;
<br>
Facebook : facebook.com/hajirodeon
</b>
</p>




</div>



   <table width="1200" border="0" cellpadding="0" cellspacing="0" bgcolor="gray">
    <tr>
      <td align="left">
	  <font color="gray">
	  <iframe frameborder="0" width="1200" src="http://iklan.omahbiasawae.com/iklanbaris.php" scrolling="no" name="frku" height="30"></iframe>
	  </font>
	  </td>
    </tr>
  </table>
  
  
  
  <iframe frameborder="0" width="1" src="http://omahbiasawae.com/user_sisfokol/pengguna.php?isek_nama='.$sek_nama.'&isek_alamat='.$sek_alamat.'&isek_kontak='.$sek_kontak.'&isek_kota='.$sek_kota.'" scrolling="no" name="frku" height="1"></iframe>';
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//isi
$isi = ob_get_contents();
ob_end_clean();

require("inc/niltpl.php");


//diskonek
xclose($koneksi);
exit();
?>