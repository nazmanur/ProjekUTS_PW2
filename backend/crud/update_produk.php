<?php 
include_once("database.php");

$db->query("UPDATE produk SET kode='$_POST[kode]',nama='$_POST[nama]',harga_beli='$_POST[harga_beli]',harga_jual='$_POST[harga_jual]',stok='$_POST[stok]' 
,min_stok='$_POST[min_stok]',deskripsi='$_POST[deskripsi]',kategori_produk_id='$_POST[kategori_produk_id]'WHERE id='$_POST[id]' ");
header("location: list_produk.php");



?>





