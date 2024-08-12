<?= flashdata("msg"); ?>
<?php if (check_rule(false, "is_create") && userdata('role_id') == '1') : ?>
    <!-- <div class="row">
        <div class="col-md-4 col-sm-12 col-lg-4">
            <div class="card shadow mb-4 ">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-dark h4">Import Data Excel</h6>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-12">
                            <form action="<?= base_url('bankdata_customer/import') ?>" method="POST" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="import_excel">Import Excel</label>
                                    <div class="input-group">
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="import_excel" name="import_excel">
                                            <label class="custom-file-label" for="import_excel">Choose file</label>
                                        </div>
                                    </div>
                                    <?= form_error("import_excel", '<small class="text-danger">', '</small>'); ?>
                                    <button class="mt-3 btn btn-outline-secondary" type="submit">Upload</button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
<?php endif; ?>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-dark h4">Pengeluaran Kelompok Non-Makanan
            <a href="<?= base_url("pengeluarankelompoknonmakanan/downloadsql"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm float-right ml-1">
                <i class="fas fa-download fa-sm text-white-50"></i> Unduh SQL
            </a>
            <?php if (check_rule(false, "is_create")) : ?>
                <!-- <a href="<?= base_url("bankdata_customer/tambah"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-dark shadow-sm float-right ml-1">
                    <i class="fas fa-plus fa-sm text-white-50"></i> Tambah Data
                </a> -->
            <?php endif; ?>
            <?php if (check_rule(false, "is_delete")) : ?>
                <!-- <a id="deleteselected" data-href="<?= base_url("bankdata_customer/tambah"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm float-right">
                    <i class="fas fa-trash fa-sm text-white-50"></i> Hapus Selected Data
                </a> -->
            <?php endif; ?>

        </h6>
    </div>
    <div class="card-body">
        <!-- Content Row -->
        <div class="row">
            <div class="col-md-12">
                <!-- <div class="col-md-12">
                    <div class="form-group d-none d-sm-inline-block ml-1">
                        <div class="input-group">
                            <select class="custom-select filter" name="id_status_bantuan_hukum" id="id_status_bantuan_hukum" style="font-size: 0.8rem;">
                                <option value="" selected>-- Status --</option>
                                <?php
                                $allow_id_status_bantuan_hukum = [];
                                foreach ($tb_status_bantuan_hukum as $key) :
                                ?>
                                    <?php if (!in_array($key['id_status_bantuan_hukum'], $allow_id_status_bantuan_hukum)) : ?>
                                        <option value="<?= $key['id_status_bantuan_hukum'] ?>"><?= $key['nama_status_bantuan_hukum'] ?></option>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                </div> -->
                <div class="table-responsive" style="overflow-x:auto;">
                    <table id="datatable" class="table display responsive nowrap" width="100%">
                        <thead>
                            <tr>
                                <th data-priority="1">No</th>
                                <!-- <th data-priority="1">
                                    <?php if (check_rule(false, "is_delete")) : ?>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="selectall">
                                            <label class="form-check-label" for="selectall">

                                            </label>
                                        </div>
                                    <?php endif; ?>
                                </th>
                                <th></th> -->
                                <!-- <th>id</th> -->
                                <th>kelompok</th>
                                <th>kota</th>
                                <th>desa</th>
                                <th>jumlah</th>
                                <?php if (userdata('role_id') == '4') : ?>
                                    <!-- <th data-priority="1">Detail</th> -->
                                <?php else : ?>
                                    <!-- <th data-priority="1">Action</th> -->
                                <?php endif; ?>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                    <script>
                        $(document).ready(function() {
                            table = $('#datatable').DataTable({
                                "responsive": true,
                                "saveState": true,
                                "processing": true,
                                "serverSide": true,
                                "lengthMenu": [5, 10, 20, 50, 100, 200],
                                "ajax": {
                                    "url": "<?= base_url("pengeluarankelompoknonmakanan/datatable"); ?>",
                                    "type": "POST",
                                    // "data": function(data){
                                    //     data.id_kelompok_pertanyaan = $("#id_kelompok_pertanyaan").find(":selected").val();
                                    // }
                                },
                                'columnDefs': [{
                                        'targets': [1],
                                        /* column index */
                                        'orderable': false,
                                        /* true or false */
                                    },
                                    // {
                                    //     targets: [4, 7, 8],
                                    //     visible: false,
                                    // },
                                ]
                            });

                            // hide collumn


                            $('#selectall').on('click', function() {
                                if (this.checked) {
                                    $('.checkbox').each(function() {
                                        this.checked = true;
                                    });
                                } else {
                                    $('.checkbox').each(function() {
                                        this.checked = false;
                                    });
                                }
                            });

                            $('#deleteselected').on('click', function() {
                                var id = [];
                                // if (confirm("Are you sure you want to delete this?")) {
                                $('.checkbox:checked').each(function(i) {
                                    id[i] = $(this).data('id');
                                });
                                if (id.length === 0) {
                                    Swal.fire('error', "Please Select atleast one checkbox", 'error');
                                } else {
                                    console.log(id);
                                    $.ajax({
                                        url: '<?= base_url("bankdata_customer/delete_selected"); ?>',
                                        method: 'POST',
                                        data: {
                                            id: id
                                        },
                                        success: function(data) {
                                            if (data == '200') {
                                                $('#selectall').prop('checked', false);
                                                Swal.fire('success', "Data Yang Terpilih Berhasil Dihapus", 'success');
                                            }
                                            table.draw()
                                        }
                                    });
                                }
                                // } else {
                                //     return false;
                                // }
                            });
                        })
                    </script>
                </div>
            </div>
        </div>
    </div>
</div>