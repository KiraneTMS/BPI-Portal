<?= flashdata('msg') ?>
<div class="row">
    <div class="col-md-6">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark h4">Ubah Data</h6>
            </div>
            <div class="card-body">
                <form action="" method="POST" enctype="multipart/form-data">
                    <input type="hidden" name="validation" value="agar gak error">
                    <?= form_error("validation", '<small class="text-danger">', '</small>'); ?>
                    
                    <div class="form-group">
                        <label for="image_ourclient">Image ourclient</label>
                        <div class="input-group">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="image_ourclient" name="image_ourclient">
                                <label class="custom-file-label" for="image_ourclient">Choose file</label>
                            </div>
                        </div>
                        <?= form_error("image_ourclient", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <button type="submit" class="btn btn-dark w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>