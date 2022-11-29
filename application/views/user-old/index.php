<?= flashdata("msg"); ?>
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-dark h4">Data User
            <?php if (check_rule(false,"is_create")) : ?>
            <a href="<?= base_url("user/tambah"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-dark shadow-sm float-right">
                <i class="fas fa-plus fa-sm text-white-50"></i> Tambah User
            </a>
            <?php endif; ?>
        </h6>

    </div>
    <div class="card-body">
            <!-- Content Row -->
            <div class="row">
            <div class="col-md-12">
            <div class="table-responsive">
                <table id="tabelUser" class="table display responsive nowrap" width="100%">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Role</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1; foreach($data as $key) : ?>
                                <tr>
                                    <td><?= $i++; ?></td>
                                    <td><?= $key['Name']; ?></td>
                                    <td><?= $key['Email']; ?></td>
                                    <td><?= $key['NamaRole']; ?></td>
                                    <td>
                                        <?php if (check_rule(false,"is_update")) : ?>
                                        <a href="<?= base_url("user/update/".$key['IDUser'])?>" class="badge badge-dark">
                                            <i class="mt-1 mr-1 mb-1 ml-1 fas fa-edit"></i>
                                        </a>&nbsp
                                        <?php endif; ?>
                                        <?php if (check_rule(false,"is_delete")) : ?>
                                        <a href="#" data-href="<?= base_url("user/delete/".$key['IDUser'])?>" class="badge badge-danger" data-toggle="modal" data-target="#confirm-delete">
                                            <i class="mt-1 mr-1 mb-1 ml-1 fas fa-trash"></i>
                                        </a>                                    
                                        <?php endif; ?>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <script>
                        $(document).ready(function(){
                            $('#tabelUser').DataTable( {
                                saveState: true
                                // "processing": true,
                                // "serverSide": true,
                                // "ajax": {
                                //     "url": "<?= base_url("user/ajax_user"); ?>",
                                //     "type": "POST"
                                // }
                            });
                        })
                    </script>
                </div>
            </div>
        </div>
    </div>
</div>

