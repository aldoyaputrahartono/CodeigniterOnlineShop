<div class="container-fluid">
    <h4>Product's Order Invoice</h4>

    <table class="table table-bordered table-striped table-hover">
        <tr>
            <th>Id Invoice</th>
            <th>Orderer's name</th>
            <th>Shipping address</th>
            <th>Order date</th>
            <th>Payment deadline</th>
            <th>Action</th>
        </tr>

        <?php foreach($invoice as $inv): ?>
            <tr>
                <td><?php echo $inv->id?></td>
                <td><?php echo $inv->nama?></td>
                <td><?php echo $inv->alamat?></td>
                <td><?php echo $inv->tgl_pesan?></td>
                <td><?php echo $inv->batas_bayar?></td>
                <td><?php echo anchor('admin/invoice/detail/'.$inv->id, '<div class="btn btn-sm btn-primary">Detail</div>')?></td>
            </tr>
        <?php endforeach; ?>
    </table>
</div>