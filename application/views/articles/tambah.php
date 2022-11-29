<?= flashdata('msg') ?>
<div class="row">
    <div class="col-12">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark h4">Tambah Data</h6>
            </div>
            <div class="card-body">
                <form action="" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="title_articles">Title articles</label>
                        <input class="form-control" type="text" name="title_articles" id="title_articles" placeholder="Title articles" value="<?= set_value("title_articles"); ?>">
                        <?= form_error("title_articles", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="content_articles">Content articles</label>
                        <textarea class="summernote" name="content_articles" id="content_articles" cols="30" rows="10"><?= set_value("content_articles"); ?></textarea>
                        <?= form_error("content_articles", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="tanggal_articles">Tanggal articles</label>
                        <input class="form-control" type="date" name="tanggal_articles" id="tanggal_articles" placeholder="Tanggal articles" value="<?= set_value("tanggal_articles"); ?>">
                        <?= form_error("tanggal_articles", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="keyword_articles">keyword articles</label>
                        <input class="form-control" type="text" name="keyword_articles" id="keyword_articles" placeholder="keyword articles" value="<?= set_value("keyword_articles"); ?>">
                        <?= form_error("keyword_articles", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="image_articles">Image articles</label>
                        <div class="input-group">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="image_articles" name="image_articles">
                                <label class="custom-file-label" for="image_articles">Choose file</label>
                            </div>
                        </div>
                        <?= form_error("image_articles", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="aktif_articles" id="aktif_articles" value="1" <?= (set_value('aktif_articles') == '1') ? 'checked' : '' ?>>
                            <label class="form-check-label" for="aktif_articles">
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