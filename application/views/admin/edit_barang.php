<div class="container-fluid">
    <h3><i class="fas fa-edit"></i>Edit Item's Data</h3>

    <?php foreach($barang as $brg) : ?>
        <form method="post" action="<?php echo base_url().'admin/data_barang/update'?>" enctype="multipart/form-data">
            <div class="form-group">
                <label>Name</label>
                <input type="hidden" name="id_brg" class="form-control" value="<?php echo $brg->id_brg?>">
                <input type="text" name="nama_brg" class="form-control" value="<?php echo $brg->nama_brg?>">
            </div>
            <div class="form-group">
                <label>Description</label>
                <input type="text" name="keterangan" class="form-control" value="<?php echo $brg->keterangan?>">
            </div>
            <div class="form-group">
                <label>Category</label>
                <select class="form-control" name="kategori">
                    <option <?php echo ($brg->kategori=='Action')? 'selected':'' ?> >Action</option>
                    <option <?php echo ($brg->kategori=='Adventure')? 'selected':'' ?> >Adventure</option>
                    <option <?php echo ($brg->kategori=='Sports')? 'selected':'' ?> >Sports</option>
                    <option <?php echo ($brg->kategori=='Role Playing Game')? 'selected':'' ?> >Role Playing Game</option>
                    <option <?php echo ($brg->kategori=='Racing Game')? 'selected':'' ?> >Racing Game</option>
                </select>
            </div>
            <div class="form-group">
                <label>Price</label>
                <input type="text" name="harga" class="form-control" value="<?php echo $brg->harga?>">
            </div>
            <div class="form-group">
                <label>Stock</label>
                <input type="text" name="stok" class="form-control" value="<?php echo $brg->stok?>">
            </div>
            <div class="form-group">
                <label>Image</label>
                <input type="file" name="gambar" class="form-control">
            </div>

            <button type="submit" class="btn btn-primary btn-sm mt-3">Save</button>
        </form>
    <?php endforeach;?>

</div>