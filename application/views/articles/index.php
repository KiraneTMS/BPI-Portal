<?= flashdata("msg"); ?>
<div class="card shadow mb-4">
    <div class="card-header py-3">

        <h6 class="m-0 font-weight-bold text-dark h4">Articles
            <?php if (check_rule(false, "is_create")) : ?>
                <a href="<?= base_url("articles/tambah"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-dark shadow-sm float-right">
                    <i class="fas fa-plus fa-sm text-white-50"></i> Tambah Data
                </a>
            <?php endif; ?>
        </h6>


    </div>
    <div class="card-body">
        <!-- Content Row -->
        <div class="row">
            <div class="col-md-12">
                <!-- <div class="table-responsive" style="overflow-x:auto;"> -->
                <table id="tabelBlok" class="table display responsive nowrap" width="100%">
                    <thead>
                        <tr>
                            <th>Title articles</th>
                            <th>Image articles</th>
                            <th>Tanggal articles</th>
                            <th>Keyword articles</th>
                            <th>Aktif articles</th>
                            <th data-priority="1">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i = 1;
                        foreach ($data as $key) : ?>
                            <tr>
                                <td><?= $key['title_articles'] ?></td>
                                <td>
                                    <img src="<?= base_url('uploads/' . $key['image_articles']) ?>" alt="" style="height: 100px;">
                                </td>
                                <td><?= $key['tanggal_articles'] ?></td>
                                <td><?= $key['keyword_articles'] ?></td>
                                <td><?= ($key['aktif_articles'] == '1') ? badge('Aktif') : badge('Tidak Aktif', 'danger'); ?></td>
                                <td data-priority="1">
                                    <a href="<?= base_url("articles/update/" . $key['id_articles']) ?>" class="badge badge-dark">
                                        <i class="mt-1 mr-1 mb-1 ml-1 fas fa-edit"></i>
                                    </a>&nbsp
                                    <a data-href="<?= base_url("articles/delete/" . $key['id_articles']) ?>" class="badge badge-danger" data-toggle="modal" data-target="#confirm-delete">
                                        <i class="mt-1 mr-1 mb-1 ml-1 fas fa-trash"></i>
                                    </a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <script>
                    $(document).ready(function() {
                        $('#tabelBlok').DataTable({
                            "responsive": true,
                            "saveState": true
                            // "processing": true,
                            // "serverSide": true,
                            // "ajax": {
                            //     "url": "<?= base_url("articles/ajax_blok"); ?>",
                            //     "type": "POST"
                            // }
                        });
                    })
                </script>
                <!-- </div> -->
            </div>
        </div>
    </div>
</div>