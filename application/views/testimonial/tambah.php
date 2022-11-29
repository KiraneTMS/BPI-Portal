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
                        <label for="nama_testimonial">nama testimonial</label>
                        <input class="form-control" type="text" name="nama_testimonial" id="nama_testimonial" placeholder="nama testimonial" value="<?= set_value("nama_testimonial"); ?>">
                        <?= form_error("nama_testimonial", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="job_testimonial">job testimonial</label>
                        <input class="form-control" type="text" name="job_testimonial" id="job_testimonial" placeholder="job testimonial" value="<?= set_value("job_testimonial"); ?>">
                        <?= form_error("job_testimonial", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="text_testimonial">text testimonial</label>
                        <input class="form-control" type="text" name="text_testimonial" id="text_testimonial" placeholder="text testimonial" value="<?= set_value("text_testimonial"); ?>">
                        <?= form_error("text_testimonial", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="image_testimonial">Image testimonial</label>
                        <div class="input-group">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="image_testimonial" name="image_testimonial">
                                <label class="custom-file-label" for="image_testimonial">Choose file</label>
                            </div>
                        </div>
                        <?= form_error("image_testimonial", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <button type="submit" class="btn btn-dark w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>