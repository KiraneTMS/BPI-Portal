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
                        <label for="nama_kelompok_master_item">nama kelompok_master_item</label>
                        <input class="form-control" type="text" name="nama_kelompok_master_item" id="nama_kelompok_master_item" placeholder="nama kelompok_master_item" value="<?= $data["nama_kelompok_master_item"]; ?>">
                        <?= form_error("nama_kelompok_master_item", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="status_kelompok_master_item" id="status_kelompok_master_item" value="1" <?= ($data['status_kelompok_master_item'] == '1') ? 'checked' : '' ?>>
                            <label class="form-check-label" for="status_kelompok_master_item">
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