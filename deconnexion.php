<?php
session_start();
if (isset($_SESSION['username'])) {//si il existe une saission
	session_destroy(); // casse la saission 
	header("location:login.php");//retourner vers la page connxion

}


  ?>