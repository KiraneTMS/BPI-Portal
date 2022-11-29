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
                        <label for="subtitle_carousel">Subtitle Carousel</label>
                        <input class="form-control" type="text" name="subtitle_carousel" id="subtitle_carousel" placeholder="Subtitle Carousel" value="<?= set_value("subtitle_carousel"); ?>">
                        <?= form_error("subtitle_carousel", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="title_carousel">Title Carousel</label>
                        <input class="form-control" type="text" name="title_carousel" id="title_carousel" placeholder="Title Carousel" value="<?= set_value("title_carousel"); ?>">
                        <?= form_error("title_carousel", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="image_carousel">Image Carousel</label>
                        <div class="input-group">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="image_carousel" name="image_carousel">
                                <label class="custom-file-label" for="image_carousel">Choose file</label>
                            </div>
                        </div>
                        <?= form_error("image_carousel", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="aktif_carousel" id="aktif_carousel" value="1" <?= (set_value('aktif_carousel') == '1') ? 'checked' : '' ?>>
                            <label class="form-check-label" for="aktif_carousel">
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