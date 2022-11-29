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
                        <label for="text_faqs">text faqs</label>
                        <input class="form-control" type="text" name="text_faqs" id="text_faqs" placeholder="text faqs" value="<?= $data["text_faqs"]; ?>">
                        <?= form_error("text_faqs", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="answer_faqs">answer faqs</label>
                        <input class="form-control" type="text" name="answer_faqs" id="answer_faqs" placeholder="answer faqs" value="<?= $data["answer_faqs"]; ?>">
                        <?= form_error("answer_faqs", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <label for="sort_faqs">sort faqs</label>
                        <input class="form-control" type="text" name="sort_faqs" id="sort_faqs" placeholder="sort faqs" value="<?= $data["sort_faqs"]; ?>">
                        <?= form_error("sort_faqs", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="is_active" id="is_active" value="1" <?= ($data['is_active'] == '1') ? 'checked' : '' ?>>
                            <label class="form-check-label" for="is_active">
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