<div class="container-fluid">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="btn btn-success btn-sm">
                <?php $grandtotal=0;
                    if($keranjang = $this->cart->contents()){
                        foreach($keranjang as $item) $grandtotal += $item['subtotal']; 
                        echo "<h4>Total of your shopping list : Rp. ".number_format($grandtotal, 0, ',', '.');
                    
                ?>
            </div>
            <br><br>

            <h3>Shipping Address & Payment</h3>

            <form action="<?php echo base_url('dashboard/proses_pesanan')?> " method="post">
                <div class="form-group">
                    <label>Full name</label>
                    <input type="text" name="nama" placeholder="Your full name" class="form-control">
                </div>

                <div class="form-group">
                    <label>Address</label>
                    <input type="text" name="alamat" placeholder="Your address" class="form-control">
                </div>

                <div class="form-group">
                    <label>Phone number</label>
                    <input type="text" name="no_telp" placeholder="Your phone number" class="form-control">
                </div>

                <div class="form-group">
                    <label>Shipping method</label>
                    <select class="form-control">
                        <option>JNE</option>
                        <option>TIKI</option>
                        <option>POS INDONESIA</option>
                        <option>GOJEK</option>
                        <option>GRAB</option>
                    </select> 
                </div>

                <div class="form-group">
                    <label>Bank</label>
                    <select class="form-control">
                        <option>BCA</option>
                        <option>BNI</option>
                        <option>BRI</option>
                        <option>MANDIRI</option>
                    </select>   
                </div>

                <button type="submit" class="btn btn-primary btn-sm mb-3">Order</button>
            </form>

            <?php 
            }
            else {
                echo "<h4>Your shopping chart still empty</h4>";
            }
            ?>

        </div>
        <div class="col-md-2"></div>
    </div>
</div>