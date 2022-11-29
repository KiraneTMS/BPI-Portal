<div class="row">
    <div class="col-md-6">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark h4">Tambah Data User</h6>
            </div>
            <div class="card-body">
                <form action="" method="POST">
                    <div class="form-group">
                        <label for="Name">Name</label>
                        <input class="form-control" type="text" name="Name" id="Name" placeholder="Masukan Name" value="<?= set_value("Name"); ?>">
                        <?= form_error("Name", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="Email">Email</label>
                        <input class="form-control" type="text" name="Email" id="Email" placeholder="Masukan Email" value="<?= set_value("Email"); ?>">
                        <?= form_error("Email", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="Password">Password</label>
                        <input class="form-control" type="password" name="Password" id="Password" placeholder="Masukan Password" value="<?= set_value("Password"); ?>">
                        <?= form_error("Password", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="IDRole">ID Role</label>
                        <div class="input-group">
                            <select class="custom-select" name="IDRole" id="IDRole">
                                <option value="" selected>Pilih Role</option>
                                <?php foreach ($role as $key) : ?>
                                    <?php if (set_value("IDRole") == $key['IDRole']) : ?>
                                        <option value="<?= $key['IDRole'] ?>" selected><?= $key['NamaRole'] ?></option>
                                    <?php else: ?>
                                        <option value="<?= $key['IDRole'] ?>"><?= $key['NamaRole'] ?></option>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <?= form_error("IDRole", '<small class="text-danger">','</small>'); ?>
                    </div>
                    <button type="submit" class="btn btn-dark w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>