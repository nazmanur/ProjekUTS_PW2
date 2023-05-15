<?php 
include_once("database.php");

$db->query("INSERT INTO kategori_produk VALUES('','$_POST[nama]')");
header("location: list_kategori_produk.php");


?>



