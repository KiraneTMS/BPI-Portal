<?= flashdata("msg"); ?>
<?php if (check_rule(false, "is_create") && userdata('role_id') == '1') : ?>
    <div class="row">
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
    </div>
<?php endif; ?>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-dark h4">Bank Data Customer
            <?php if (check_rule(false, "is_create")) : ?>
                <a href="<?= base_url("bankdata_customer/tambah"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-dark shadow-sm float-right ml-1">
                    <i class="fas fa-plus fa-sm text-white-50"></i> Tambah Data
                </a>
            <?php endif; ?>
            <?php if (check_rule(false, "is_delete")) : ?>
                <a id="deleteselected" data-href="<?= base_url("bankdata_customer/tambah"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm float-right">
                    <i class="fas fa-trash fa-sm text-white-50"></i> Hapus Selected Data
                </a>
            <?php endif; ?>

        </h6>
    </div>
    <div class="card-body">
        <!-- Content Row -->
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive" style="overflow-x:auto;">
                    <table id="datatable" class="table display responsive nowrap" width="100%">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="selectall">
                                        <label class="form-check-label" for="selectall">

                                        </label>
                                    </div>
                                </th>
                                <th>Number Card</th>
                                <th>Bank</th>
                                <th>Type Card</th>
                                <th>Name Customer</th>
                                <th>PIC</th>
                                <th>Assignment Date</th>
                                <th>Expire Date</th>
                                <th>Date Of Birth</th>
                                <th>Open Date</th>
                                <th>WO Date</th>
                                <th>Last Pay Date</th>
                                <th>Last Transaction Date</th>
                                <th>Last Payment</th>
                                <th>Last Transaction Nominal</th>
                                <th>Limit</th>
                                <th>Principal</th>
                                <th>Min Pay</th>
                                <th>OS Balance</th>
                                <th>Address 1</th>
                                <th>Address 2</th>
                                <th>Address 3</th>
                                <th>Address 4</th>
                                <th>City</th>
                                <th>Office Name</th>
                                <th>Office Address 1</th>
                                <th>Office Address 2</th>
                                <th>Office Address 3</th>
                                <th>Office Address 4</th>
                                <th>Phone 1</th>
                                <th>Phone 2</th>
                                <th>Home Phone 1</th>
                                <th>Home Phone 2</th>
                                <th>Office Phone 1</th>
                                <th>Office Phone 2</th>
                                <th>EC Phone 1</th>
                                <th>EC Phone 2</th>
                                <th>OtherNumber</th>
                                <th>ECName</th>
                                <th>ECName2</th>
                                <th>StatusEC</th>
                                <th>StatusEC2</th>
                                <th>MotherName</th>
                                <th>Sex</th>
                                <th>Email</th>
                                <th>VirtualAccount</th>
                                <th>VirtualAccountName</th>
                                <th>Komoditi</th>
                                <th>KomoditiType</th>
                                <th>Produsen</th>
                                <th>Model</th>
                                <th>LoanTerm</th>
                                <th>InstallmentAlreadyPaid</th>
                                <th>MonthlyPaymentNominal</th>
                                <th>DPD</th>
                                <th>Bucket</th>
                                <th>BillingNoPenalty</th>
                                <th>DendaBelumDibayar</th>
                                <th>LastVisitDate</th>
                                <th>LastVisitResult</th>
                                <th>LastReport</th>
                                <th>LastVisitAddress</th>
                                <th>OTSOffer</th>
                                <th>OtherData1</th>
                                <th>OtherData2</th>
                                <th>OtherData3</th>
                                <th>OtherData4</th>
                                <th>OtherData5</th>
                                <th>PermanentMessage</th>
                                <th>Deskcoll_id</th>
                                <th>IsDeletedByAdmin</th>
                                <th>Report</th>
                                <th>Action</th>
                                <th>ReportDate</th>
                                <th>PTPDate</th>
                                <th>PTPAmount</th>
                                <th>PaidDate</th>
                                <th>PaidAmount</th>
                                <th data-priority="1">Action</th>
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
                                    "url": "<?= base_url("bankdata_customer/datatable"); ?>",
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
                                }]
                            });

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
                                    Swal.fire('error',"Please Select atleast one checkbox",'error');
                                } else {
                                    console.log(id);
                                    $.ajax({
                                        url: '<?= base_url("bankdata_customer/delete_selected"); ?>',
                                        method: 'POST',
                                        data: {id:id},
                                        success: function(data){
                                            if (data == '200') {
                                                $('#selectall').prop('checked', false);
                                                Swal.fire('success',"Data Yang Terpilih Berhasil Dihapus",'success');
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