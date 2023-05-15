<?php 

include_once('navbar.php'); 
include_once('sidebar.php');
include_once('database.php');
 ?>
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid px-4">
            <h1 class="mt-4"></h1>
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header"><h5>List Produk</h5></div>
                            <div class="card-body">
                                <table class="table mt-4">
                                    <thead>
                                        <tr>
                                            <th scope="col">Id</th>
                                            <th scope="col">Kode</th>
                                            <th scope="col">Nama</th>
                                            <th scope="col">Harga Beli</th>
                                            <th scope="col">Harga Jual</th>
                                            <th scope="col">Stok</th>
                                            <th scope="col">Minimal Stok</th>
                                            <th scope="col">Deskripsi</th>
                                            <th scope="col">Kategori Produk Id</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php  
                                        $data = $db->query("SELECT * FROM produk");
                                        foreach ($data as $d) :
                                        ?>
                                    <tr>
                                        <td><?= $d["id"] ?></td>                                        
                                        <td><?= $d["kode"] ?></td>                                        
                                        <td><?= $d["nama"] ?></td>                                        
                                        <td><?= $d["harga_beli"] ?></td>                                        
                                        <td><?= $d["harga_jual"] ?></td> 
                                        <td><?= $d["stok"] ?></td>   
                                        <td><?= $d["min_stok"] ?></td> 
                                        <td><?= $d["deskripsi"] ?></td>  
                                        <td><?= $d["kategori_produk_id"] ?></td>                                     
                                        <td>
                                            <a href="delete_produk.php?id=<?= $d["id"] ?>" class="btn btn-success">HAPUS</a>
                                            <a href="form_update_produk.php?id=<?= $d["id"] ?>" class="btn btn-success">EDIT</a>
                                        </td>                                        
                                    </tr>
                                        <?php 
                                        endforeach;
                                        ?>                       
                                    </tbody>
                                </table>
                                <a href="form_produk.php" class="btn btn-success mt-4">Input Baru</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>

<?php include_once('footer.php'); ?>


