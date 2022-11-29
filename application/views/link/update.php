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
                        <label for="nama_link">nama link</label>
                        <input class="form-control" type="text" name="nama_link" id="nama_link" placeholder="nama link" value="<?= $data["nama_link"]; ?>">
                        <?= form_error("nama_link", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="url_link">url link</label>
                        <input class="form-control" type="text" name="url_link" id="url_link" placeholder="url link" value="<?= $data["url_link"]; ?>">
                        <?= form_error("url_link", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="sort_link">sort link</label>
                        <input class="form-control" type="text" name="sort_link" id="sort_link" placeholder="sort link" value="<?= $data["sort_link"]; ?>">
                        <?= form_error("sort_link", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <button type="submit" class="btn btn-dark w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>