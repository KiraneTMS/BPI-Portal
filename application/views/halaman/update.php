<?= flashdata('msg') ?>
<div class="row">
    <div class="col-12">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark h4">Ubah Data</h6>
            </div>
            <div class="card-body">
                <form action="" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="title_halaman">Title halaman</label>
                        <input class="form-control" type="text" name="title_halaman" id="title_halaman" placeholder="Title halaman" value="<?= $data["title_halaman"]; ?>">
                        <?= form_error("title_halaman", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="short_halaman">short halaman</label>
                        <input class="form-control" type="text" name="short_halaman" id="short_halaman" placeholder="short halaman" value="<?= $data["short_halaman"]; ?>">
                        <?= form_error("short_halaman", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="content_halaman">content halaman</label>
                        <textarea name="content_halaman" id="content_halaman" class="summernote"><?= $data["content_halaman"]; ?></textarea>
                        <?= form_error("content_halaman", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="meta_keyword_halaman">Meta keyword halaman</label>
                        <input class="form-control" type="text" name="meta_keyword_halaman" id="meta_keyword_halaman" placeholder="Meta Keyword halaman" value="<?= $data["meta_keyword_halaman"]; ?>">
                        <?= form_error("meta_keyword_halaman", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="meta_desc_halaman">Meta desc halaman</label>
                        <input class="form-control" type="text" name="meta_desc_halaman" id="meta_desc_halaman" placeholder="Meta desc halaman" value="<?= $data["meta_desc_halaman"]; ?>">
                        <?= form_error("meta_desc_halaman", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="image_halaman">Image halaman</label><br>
                        <div class="row">
                            <div class="col-lg-3 col-md-4 co-sm-12">
                                <img src="<?= base_url('uploads/') . $data['image_halaman']; ?>" alt="" width="100%">
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="image_halaman" name="image_halaman">
                                <label class="custom-file-label" for="image_halaman">Choose file</label>
                            </div>
                        </div>
                        <?= form_error("image_halaman", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="aktif_halaman" id="aktif_halaman" value="1" <?= ($data['aktif_halaman'] == '1') ? 'checked' : '' ?>>
                            <label class="form-check-label" for="aktif_halaman">
                                Aktif
                            </label>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-dark w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>