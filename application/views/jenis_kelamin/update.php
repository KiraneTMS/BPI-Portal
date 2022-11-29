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
                        <label for="nama_jenis_kelamin">nama jenis_kelamin</label>
                        <input class="form-control" type="text" name="nama_jenis_kelamin" id="nama_jenis_kelamin" placeholder="nama jenis_kelamin" value="<?= $data["nama_jenis_kelamin"]; ?>">
                        <?= form_error("nama_jenis_kelamin", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="status_jenis_kelamin" id="status_jenis_kelamin" value="1" <?= ($data['status_jenis_kelamin'] == '1') ? 'checked' : '' ?>>
                            <label class="form-check-label" for="status_jenis_kelamin">
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