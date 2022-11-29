<div class="row">
    <div class="col-md-12">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark h4">Tambah Menu</h6>
            </div>
            <div class="card-body">
                <form action="" method="POST">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name_menulanding">Nama menu</label>
                                <input class="form-control" type="text" name="name_menulanding" id="name_menulanding" placeholder="Masukan Nama menu" value="<?= set_value("name_menulanding"); ?>">
                                <?= form_error("name_menulanding", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="parent_menulanding">Menu Parent</label>
                                <div class="input-group">
                                    <select class="custom-select" id="parent_menulanding" name="parent_menulanding">
                                        <option selected value="">-- Pilih Menu --</option>
                                        <?php foreach ($menu as $key) : ?>
                                            <?php if (set_value("parent_menulanding") == $key['id_menulanding']) : ?>
                                                <option value="<?= $key['id_menulanding'] ?>" selected><?= $key['name_menulanding'] ?></option>
                                            <?php else : ?>
                                                <option value="<?= $key['id_menulanding'] ?>"><?= $key['name_menulanding'] ?></option>
                                            <?php endif; ?>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                                <?= form_error("parent_menulanding", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="jenis_menulanding">Type menu</label>
                                <select class="form-control" name="jenis_menulanding" id="jenis_menulanding">
                                    <option value="1" <?= (set_value('jenis_menulanding') == "1") ? "selected" : "" ?>>External</option>
                                    <option value="2" <?= (set_value('jenis_menulanding') == "2") ? "selected" : "" ?>>Internal</option>
                                </select>
                                <?= form_error("jenis_menulanding", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="row">
                                <div class="col-auto">
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="status_menulanding" name="status_menulanding" <?= (set_value("status_menulanding") == "on") ? "checked" : ""; ?>>
                                            <label class="custom-control-label" for="status_menulanding">Is Active</label>
                                        </div>
                                        <?= form_error("status_menulanding", '<small class="text-danger">', '</small>'); ?>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="head_menulanding" name="head_menulanding" <?= (set_value("head_menulanding") == "on") ? "checked" : ""; ?>>
                                            <label class="custom-control-label" for="head_menulanding">Is Head</label>
                                        </div>
                                        <?= form_error("head_menulanding", '<small class="text-danger">', '</small>'); ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group" id="box_href_menulanding">
                                <label for="href_menulanding">Link menu</label>
                                <input class="form-control" type="text" name="href_menulanding" id="href_menulanding" placeholder="Masukan Link menu" value="<?= set_value("href_menulanding"); ?>">
                                <?= form_error("href_menulanding", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group" id="box_id_halaman">
                                <label for="id_halaman">Halaman Parent</label>
                                <div class="input-group">
                                    <select class="custom-select" id="id_halaman" name="id_halaman">
                                        <option selected value="">-- Pilih halaman --</option>
                                        <?php foreach ($halaman as $key) : ?>
                                            <?php if (set_value("id_halaman") == $key['id_halaman']) : ?>
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
                                <label for="level_menulanding">Level Menu</label>
                                <div class="input-group">
                                    <select class="custom-select" id="level_menulanding" name="level_menulanding">
                                        <option value="1" <?= (set_value('level_menulanding') == "1") ? "selected" : "" ?>>Menu Pertama</option>
                                        <option value="2" <?= (set_value('level_menulanding') == "2") ? "selected" : "" ?>>Menu Kedua</option>
                                        <option value="3" <?= (set_value('level_menulanding') == "3") ? "selected" : "" ?>>Menu Ketiga</option>
                                    </select>
                                </div>
                                <?= form_error("id_halaman", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="sort_menulanding">sort menu</label>
                                <input class="form-control" type="number" name="sort_menulanding" id="sort_menulanding" placeholder="Masukan sort menu" value="<?= set_value("sort_menulanding"); ?>">
                                <?= form_error("sort_menulanding", '<small class="text-danger">', '</small>'); ?>
                            </div>

                        </div>
                    </div>
                    <button type="submit" class="btn btn-dark w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {

        const typemenu = () => {
            if ($("#jenis_menulanding").find(":selected").val() == 1) {
                $('#box_href_menulanding').css("display", "");
                $('#box_id_halaman').css('display', 'none');
            } else {
                $('#box_href_menulanding').css('display', 'none');
                $('#box_id_halaman').css("display", "");
            }
        }

        $('#jenis_menulanding').on("change", function() {
            typemenu()
        });
        typemenu()
    });
</script>