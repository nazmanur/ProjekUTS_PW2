<?php 
include_once("database.php");

$db->query("UPDATE kategori_produk SET nama='$_POST[nama]' WHERE id='$_POST[id]' ");
header("location: list_kategori_produk.php");



?>





