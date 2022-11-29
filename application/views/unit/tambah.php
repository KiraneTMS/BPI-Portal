<?= flashdata("msg"); ?>
<div class="row">
    <div class="col-md-6">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark h4">Tambah Data Unit</h6>
            </div>
            <div class="card-body">
                <form action="" method="POST">
                    <div class="form-group">
                        <label for="IDBlok">Pilih Blok</label>
                        <div class="input-group mb-3">
                            <select name="IDBlok" class="custom-select" id="IDBlok">
                                <option>-- Pilih Blok --</option>
                                <?php foreach ($blok as $key) : ?>
                                    <?php if (set_value("IDBlok") == $key['IDBlok']) : ?>
                                        <option value="<?= $key['IDBlok'] ?>" selected><?= $key['NamaBlok'] ?></option>
                                    <?php else: ?>
                                        <option value="<?= $key['IDBlok'] ?>"><?= $key['NamaBlok'] ?></option>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <?= form_error("IDBlok", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="KodeUnit">Pilih Huruf Unit</label>
                        <input class="form-control" type="text" name="KodeUnit" id="KodeUnit" placeholder="Masukan Huruf Unit" value="<?= set_value("KodeUnit"); ?>">
                        <?= form_error("KodeUnit", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="LuasUnitKotor">Masukan Total Luas Unit Kotor</label>
                        <input class="form-control" type="number" name="LuasUnitKotor" id="LuasUnitKotor" placeholder="Masukan Luas Unit Kotor" value="<?= set_value("LuasUnitKotor"); ?>">
                        <?= form_error("LuasUnitKotor", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="LuasUnit">Masukan Luas Unit</label>
                        <input class="form-control" type="number" name="LuasUnit" id="LuasUnit" placeholder="Masukan Luas Unit" value="<?= set_value("LuasUnit"); ?>">
                        <?= form_error("LuasUnit", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="SisaLuasUnitKotor">Sisa Luas Unit Kotor</label>
                        <input class="form-control" type="number" name="SisaLuasUnitKotor" id="SisaLuasUnitKotor" placeholder="Masukan Luas Unit" value="<?= set_value("SisaLuasUnitKotor"); ?>">
                        <?= form_error("SisaLuasUnitKotor", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <script>
                        function sisa(){
                            $('#SisaLuasUnitKotor').val($('#LuasUnitKotor').val() - $('#LuasUnit').val());
                        }
                        $('#LuasUnitKotor').on('change', function(){
                            sisa();
                        })
                        $('#LuasUnit').on('change', function(){
                            sisa()
                        })
                        sisa();
                    </script>
                    <div class="form-group">
                        <label for="KordinatMaps">Masukan Kordinat Maps</label>
                        <input class="form-control" type="text" name="KordinatMaps" id="KordinatMaps" placeholder="Masukan Kordinat Maps" value="<?= set_value("KordinatMaps"); ?>">
                        <?= form_error("KordinatMaps", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="IsAktifUnit" name="IsAktifUnit" <?= (set_rules('IsAktifUnit') == "1") ? "checked" : "" ?>>
                            <label class="custom-control-label" for="IsAktifUnit">Active</label>
                        </div>
                        <?= form_error("IsAktifUnit", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <!-- <div class="form-group">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="IsAktifUnitMaps" name="IsAktifUnitMaps" <?= (set_rules('IsAktifUnitMaps') == "1") ? "checked" : "" ?>>
                            <label class="custom-control-label" for="IsAktifUnitMaps">Active</label>
                        </div>
                        <?= form_error("IsAktifUnitMaps", '<small class="text-danger">', '</small>'); ?>
                    </div> -->
                    <button type="submit" class="btn btn-dark w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>