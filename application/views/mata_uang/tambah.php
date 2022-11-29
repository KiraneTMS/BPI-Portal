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
                        <label for="nama_mata_uang">nama mata_uang</label>
                        <input class="form-control" type="text" name="nama_mata_uang" id="nama_mata_uang" placeholder="nama mata_uang" value="<?= set_value("nama_mata_uang"); ?>">
                        <?= form_error("nama_mata_uang", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="simbol_mata_uang">simbol mata_uang</label>
                        <input class="form-control" type="text" name="simbol_mata_uang" id="simbol_mata_uang" placeholder="simbol mata_uang" value="<?= set_value("simbol_mata_uang"); ?>">
                        <?= form_error("simbol_mata_uang", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="status_mata_uang" id="status_mata_uang" value="1" <?= (set_value('status_mata_uang') == '1') ? 'checked' : '' ?>>
                            <label class="form-check-label" for="status_mata_uang">
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