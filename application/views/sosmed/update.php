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
                        <label for="nama_sosmed">nama sosmed</label>
                        <input class="form-control" type="nama" name="nama_sosmed" id="nama_sosmed" placeholder="nama sosmed" value="<?= $data["nama_sosmed"]; ?>">
                        <?= form_error("nama_sosmed", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="logo_sosmed">logo sosmed</label>
                        <input class="form-control" type="text" name="logo_sosmed" id="logo_sosmed" placeholder="logo sosmed" value="<?= $data["logo_sosmed"]; ?>">
                        <?= form_error("logo_sosmed", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="link_sosmed">link sosmed</label>
                        <input class="form-control" type="text" name="link_sosmed" id="link_sosmed" placeholder="link sosmed" value="<?= $data["link_sosmed"]; ?>">
                        <?= form_error("link_sosmed", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="sort_sosmed">sort sosmed</label>
                        <input class="form-control" type="text" name="sort_sosmed" id="sort_sosmed" placeholder="sort sosmed" value="<?= $data["sort_sosmed"]; ?>">
                        <?= form_error("sort_sosmed", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <button type="submit" class="btn btn-dark w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>