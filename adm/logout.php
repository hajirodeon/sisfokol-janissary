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
require("../inc/config.php");
require("../inc/fungsi.php");

nocache;

//hapus session
session_unset($hajirobe_session);
session_unset($kd3_session);
session_unset($adm_session);
session_unset($username3_session);
session_unset($pass3_session);
session_unset();
session_destroy();

//re-direct
xloc($sumber);
exit();
?>