<?= flashdata("msg"); ?>
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-dark h4">Data Role
            <?php if (check_rule(false,"is_create")) : ?>
            <a href="<?= base_url("role/tambah"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-dark shadow-sm float-right">
                <i class="fas fa-plus fa-sm text-white-50"></i> Tambah Role
            </a>
            <?php endif; ?>
        </h6>

    </div>
    <div class="card-body">
            <!-- Content Row -->
            <div class="row">
            <div class="col-md-12">
            <div class="table-responsive">
                <table id="tabelRole" class="table display responsive nowrap" width="100%">
                        <thead>
                            <tr>
                                <!-- <th>No</th> -->
                                <th>Nama Role</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                    <script>
                        $(document).ready(function(){
                            $('#tabelRole').DataTable( {
                                "processing": true,
                                "serverSide": true,
                                "ajax": {
                                    "url": "<?= base_url("role/ajax_role"); ?>",
                                    "type": "POST"
                                }
                            });
                        })
                    </script>
                </div>
            </div>
        </div>
    </div>
</div>

