<?= flashdata('msg') ?>
<div class="row">
    <div class="col-md-6">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark h4">Ubah Data</h6>
            </div>
            <div class="card-body">
                <form action="" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="name_menubawah">Nama Menu</label>
                        <input class="form-control" type="text" name="name_menubawah" id="name_menubawah" placeholder="Nama Menu" value="<?= $data["name_menubawah"]; ?>">
                        <?= form_error("name_menubawah", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group" id="box_id_halaman">
                        <label for="id_halaman">Halaman Parent</label>
                        <div class="input-group">
                            <select class="custom-select" id="id_halaman" name="id_halaman">
                                <option selected value="">-- Pilih halaman --</option>
                                <?php foreach ($halaman as $key) : ?>
                                    <?php if ($data["id_halaman"] == $key['id_halaman']) : ?>
                                        <option value="<?= $key['id_halaman'] ?>" selected><?= $key['title_halaman'] ?></option>
                                    <?php else : ?>
                                        <option value="<?= $key['id_halaman'] ?>"><?= $key['title_halaman'] ?></option>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <?= form_error("id_halaman", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="posisi">posisi</label>
                        <input class="form-control" type="number" name="posisi" id="posisi" placeholder="posisi" value="<?= $data["posisi"]; ?>">
                        <?= form_error("posisi", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <button type="submit" class="btn btn-dark w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>