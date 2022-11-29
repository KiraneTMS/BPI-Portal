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
                        <label for="id_halaman">Halaman</label>
                        <div class="input-group">
                            <select class="custom-select" id="id_halaman" name="id_halaman">
                                <option value="">-- Pilih Halaman --</option>
                                <?php foreach ($halaman as $key) : ?>
                                    <?php if ($key['id_halaman'] == set_value('id_halaman')) : ?>
                                        <option value="<?= $key['id_halaman'] ?>" selected><?= $key['title_halaman'] ?></option>
                                    <?php else : ?>
                                        <option value="<?= $key['id_halaman'] ?>"><?= $key['title_halaman'] ?></option>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <?= form_error('id_halaman', '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="posisi">Posisi</label>
                        <div class="input-group">
                            <select class="custom-select" id="posisi" name="posisi">
                                <option value="" <?= (set_value('posisi') == "") ? "selected" : "" ?>>-- Pilih Posisi --</option>
                                <option value="1" <?= (set_value('posisi') == "1") ? "selected" : "" ?>>Posisi Atas Kiri</option>
                                <option value="2" <?= (set_value('posisi') == "2") ? "selected" : "" ?>>Posisi Atas Kanan</option>
                                <option value="3" <?= (set_value('posisi') == "3") ? "selected" : "" ?>>Posisi Tengah</option>
                                <option value="4" <?= (set_value('posisi') == "4") ? "selected" : "" ?>>Posisi Bawah Kiri</option>
                                <option value="5" <?= (set_value('posisi') == "5") ? "selected" : "" ?>>Posisi Bawah Kanan</option>
                            </select>
                        </div>
                        <?= form_error('posisi', '<small class="text-danger">', '</small>'); ?>
                    </div>

                    <button type="submit" class="btn btn-dark w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>