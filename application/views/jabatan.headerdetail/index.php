<?= flashdata("msg"); ?>
<div class="card shadow mb-4 col-lg-7 col-md-9 col-sm-12">
    <div class="card-header py-3">

        <h6 class="m-0 font-weight-bold text-dark h4">jabatan
            <?php if (check_rule(false, "is_create")) : ?>
                <a href="<?= base_url("jabatan/tambah"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-dark shadow-sm float-right ml-1">
                    <i class="fas fa-plus fa-sm text-white-50"></i> Tambah Data
                </a>
            <?php endif; ?>
            <?php if (check_rule(false, "is_update")) : ?>
                <a href="#" id="updatedata" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm float-right ml-1">
                    <i class="fas fa-edit fa-sm text-white-50"></i> Update Data
                </a>
            <?php endif; ?>
            <?php if (check_rule(false, "is_create")) : ?>
                <a href="#" id="deletedata" class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm float-right ml-1">
                    <i class="fas fa-trash fa-sm text-white-50"></i> Hapus Data
                </a>
            <?php endif; ?>
        </h6>


    </div>
    <div class="card-body">
        <!-- Content Row -->
        <div class="row">
            <div class="col-md-12">
                <!-- <div class="table-responsive" style="overflow-x:auto;"> -->
                <table id="datatable" class="table display responsive nowrap" width="100%">
                    <thead>
                        <tr>
                            <th></th>
                            <th>nama_jabatan</th>
                            <th>flag_status</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
                <script>
                    $(document).ready(function() {
                        var datatable = $('#datatable').DataTable({
                            "responsive": true,
                            "saveState": true,
                            "processing": true,
                            "serverSide": true,
                            lengthMenu: [3, 5, 10, 20, 50, 100, 200, 500],
                            "ajax": {
                                "url": "<?= base_url("jabatan/datatable"); ?>",
                                "type": "POST"
                            },
                            "columnDefs": [{
                                "targets": 0,
                                "orderable": false
                            }]
                        });

                        $('#datatable tbody').on('click', 'tr', function() {
                            $("#hapusdata").attr("href", "<?= base_url("jabatan/hapus/"); ?>" + datatable.row(this).data()[0]);
                            console.log(datatable.row(this).data());
                        });

                        // make delete button if data selected

                    })
                </script>
                <!-- </div> -->
            </div>
        </div>
    </div>
</div>