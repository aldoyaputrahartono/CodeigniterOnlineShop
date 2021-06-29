<div class="container-fluid">
    <h4>Detail Order<div class="btn btn-sm btn-success">No. Invoice : <?php echo $invoice->id?></div></h4>

    <table class="table table-bordered table-hover table-striped">
        <tr>
            <th>Id product</th>
            <th>Product name</th>
            <th>Amount</th>
            <th>Price for each</th>
            <th>Sub-total</th>
        </tr>

        <?php $total=0;
        foreach($pesanan as $psn) : 
            $subtotal = $psn->jumlah * $psn->harga;
            $total += $subtotal;
        ?>

        <tr>
            <th><?php echo $psn->id_brg?></th>
            <th><?php echo $psn->nama_brg?></th>
            <th><?php echo $psn->jumlah?></th>
            <th><?php echo number_format($psn->harga, 0, ',', '.')?></th>
            <th><?php echo number_format($subtotal, 0, ',', '.')?></th>
        </tr>
        
        <?php endforeach;?>

        <tr>
            <td colspan="4" align="right"> Total</td>
            <td>Rp. <?php echo number_format($total, 0, ',', ".")?></td>
        </tr>
 
    </table>
    <a href="<?php echo base_url('admin/invoice/index')?>"><div class="btn btn-sm btn-primary">Kembali</div></a>
</div>