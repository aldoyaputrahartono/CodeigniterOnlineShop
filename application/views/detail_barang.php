<div class="container-fluid">

    <div class="card">
        <div class="card-header">Product Detail</div>
        <div class="card-body">
            <?php foreach($barang as $brg) : ?>
                <div class="row">
                    <div class="col-md-4">
                        <img src="<?php echo base_url().'/uploads/'.$brg->gambar?>" class="card-img-top">
                    </div>
                    <div class="col-md-8">
                        <table class="table">
                            <tr>
                                <td>Product's Name</td>
                                <td><strong><?php echo $brg->nama_brg?></strong></td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td><strong><?php echo $brg->keterangan?></strong></td>
                            </tr>
                            <tr>
                                <td>Category</td>
                                <td><strong><?php echo $brg->kategori?></strong></td>
                            </tr>
                            <tr>
                                <td>Stock</td>
                                <td><strong><?php echo $brg->stok?></strong></td>
                            </tr>
                            <tr>
                                <td>Price</td>
                                <td><strong><div class="btn btn-sm btn-success">Rp. <?php echo number_format($brg->harga, 0, ',', '.')?></div></strong></td>
                            </tr>
                        </table>

                        <?php echo anchor('dashboard/tambah_ke_keranjang/'.$brg->id_brg, '<div class="btn btn-sm btn-primary">Add to Cart</div>')?>
                        <?php echo anchor('welcome', '<div class="btn btn-sm btn-danger">Back</div>')?>
                    </div>
                </div>
            <?php endforeach;?>
        </div>
    </div>
</div>