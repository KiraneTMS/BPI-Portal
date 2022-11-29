<?= flashdata('msg') ?>
<div class="row">
    <div class="col-md-6">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark h4">Tambah Data</h6>
            </div>
            <div class="card-body">
                <form action="" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="nama_divisi">nama divisi</label>
                        <input class="form-control" type="text" name="nama_divisi" id="nama_divisi" placeholder="nama divisi" value="<?= set_value("nama_divisi"); ?>">
                        <?= form_error("nama_divisi", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="status_divisi" id="status_divisi" value="1" <?= (set_value('status_divisi') == '1') ? 'checked' : '' ?>>
                            <label class="form-check-label" for="status_divisi">
                                Aktif
                            </label>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-dark w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>