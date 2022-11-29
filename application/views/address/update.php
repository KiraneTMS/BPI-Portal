<div class="row">
    <div class="col-md-6">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark h4">Update Your Wallet</h6>
            </div>
            <div class="card-body">
                <form action="" method="POST">
                    <div class="form-group">
                        <label for="name">Name Wallet</label>
                        <input class="form-control" type="text" name="name" id="name" placeholder="Name Your Wallet" value="<?= $data["name"]; ?>">
                        <?= form_error("name", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="address">Address</label>
                        <input class="form-control" type="text" name="address" id="address" placeholder="Input Your Address" value="<?= $data["address"]; ?>">
                        <?= form_error("address", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="private_key">Private Key</label>
                        <input class="form-control" type="text" name="private_key" id="private_key" placeholder="Input Your Private Key" value="<?= $data["private_key"]; ?>">
                        <?= form_error("private_key", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <button type="submit" class="btn btn-dark w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>