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
                                <label for="namamenu">Nama Menu</label>
                                <input class="form-control" type="text" name="namamenu" id="namamenu" placeholder="Masukan Nama Menu" value="<?= $data["namamenu"]; ?>">
                                <?= form_error("namamenu", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="url_menu">URL Menu</label>
                                <input class="form-control" type="text" name="url_menu" id="url_menu" placeholder="Masukan URL Menu" value="<?= $data["url_menu"]; ?>">
                                <?= form_error("url_menu", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="icon_menu">Icon Menu</label>
                                <input class="form-control" type="text" name="icon_menu" id="icon_menu" placeholder="Masukan Icon Menu" value="<?= $data["icon_menu"]; ?>">
                                <?= form_error("icon_menu", '<small class="text-danger">', '</small>'); ?>
                            </div>                            
                            <div class="form-group">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="is_head" name="is_head" <?= ($data["is_head"] == "1") ? "checked" : ""; ?>>
                                    <label class="custom-control-label" for="is_head">Is Head</label>
                                </div>
                                <?= form_error("is_head", '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="level_menu">Level Menu</label>
                                <div class="input-group">
                                    <select class="custom-select" id="level_menu" name="level_menu">
                                        <option value="1" <?= ($data["level_menu"] == "1") ? "selected" : ""; ?>>Menu Pertama</option>
                                        <option value="2" <?= ($data["level_menu"] == "2") ? "selected" : ""; ?>>Menu Kedua</option>
                                    </select>
                                </div>
                                <?= form_error("level_menu", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="menu_head">Menu</label>
                                <div class="input-group">
                                    <select class="custom-select" id="menu_head" name="menu_head">
                                        <option selected>-- Select Menu --</option>
                                        <?php foreach ($menu_head as $key) : ?>
                                            <?php if ($data["menu_head"] == $key['IDMenu']) : ?>
                                                <option value="<?= $key['IDMenu'] ?>" selected><?= $key['namamenu'] ?></option>
                                            <?php else: ?>
                                                <option value="<?= $key['IDMenu'] ?>"><?= $key['namamenu'] ?></option>
                                            <?php endif; ?>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                                <?= form_error("menu_head", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="sort">Sort</label>
                                <input class="form-control" type="number" name="sort" id="sort" placeholder="Masukan Sort" value="<?= $data["sort"]; ?>">
                                <?= form_error("sort", '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="is_active" name="is_active" <?= ($data["is_active"] == "1") ? "checked" : ""; ?>>
                                    <label class="custom-control-label" for="is_active">Is Active</label>
                                </div>
                                <?= form_error("is_active", '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-dark w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>