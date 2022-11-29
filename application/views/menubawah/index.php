<?= flashdata("msg"); ?>
<div class="card shadow mb-4">
    <div class="card-header py-3">

        <h6 class="m-0 font-weight-bold text-dark h4">menu bawah
            <?php if (check_rule(false,"is_create")) : ?>
            <a href="<?= base_url("menubawah/tambah"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-dark shadow-sm float-right">
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
                                <th>nama</th>
                                <th>halaman</th>
                                <th>posisi</th>
                                <th data-priority="1">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1; foreach ($data as $key) : ?>
                                <tr>
                                    <td><?= $key['name_menubawah'] ?></td>
                                    <td><?= $key['title_halaman'] ?></td>
                                    <td><?= $key['posisi'] ?></td>
                                    <td data-priority="1">
                                        <a href="<?= base_url("menubawah/update/".$key['id_menubawah']) ?>" class="badge badge-dark">
                                            <i class="mt-1 mr-1 mb-1 ml-1 fas fa-edit"></i>
                                        </a>&nbsp
                                        <a data-href="<?= base_url("menubawah/delete/".$key['id_menubawah']) ?>" class="badge badge-danger"  data-toggle="modal" data-target="#confirm-delete">
                                            <i class="mt-1 mr-1 mb-1 ml-1 fas fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <script>
                        $(document).ready(function(){
                            $('#tabelBlok').DataTable( {
                                "responsive": true,
                                "saveState": true
                                // "processing": true,
                                // "serverSide": true,
                                // "ajax": {
                                //     "url": "<?= base_url("menubawah/ajax_blok"); ?>",
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

