<div class="row">
    <div class="col-md-6">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark h4">Tambah Data Blok</h6>
            </div>
            <div class="card-body">
                <form action="" method="POST">
                    <div class="form-group">
                        <label for="devkey">Key</label>
                        <input class="form-control" type="text" name="devkey" id="devkey" placeholder="Key" value="<?= set_value("devkey"); ?>">
                        <?= form_error("devkey", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="devvalue">Value</label>
                        <input class="form-control" type="text" name="devvalue" id="devvalue" placeholder="Value" value="<?= set_value("devvalue"); ?>">
                        <?= form_error("devvalue", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="ket">Ket</label>
                        <input class="form-control" type="text" name="ket" id="ket" placeholder="Ket" value="<?= set_value("ket"); ?>">
                        <?= form_error("ket", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <button type="submit" class="btn btn-dark w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>