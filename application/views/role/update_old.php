<div class="row">
    <div class="col-md-6">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark h4">Ubah Data Role</h6>
            </div>
            <div class="card-body">
                <form action="" method="POST">
                    <div class="form-group">
                        <label for="NamaRole">Nama Role</label>
                        <input class="form-control" type="text" name="NamaRole" id="NamaRole" placeholder="Masukan Nama Role" value="<?= $data["NamaRole"]; ?>">
                        <?= form_error("NamaRole", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    
                    <button type="submit" class="btn btn-dark w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>
