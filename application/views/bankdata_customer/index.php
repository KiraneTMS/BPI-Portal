<?= flashdata("msg"); ?>
<div class="card shadow mb-4">
    <div class="card-header py-3">

        <h6 class="m-0 font-weight-bold text-dark h4">Bank Data Customer
            <?php if (check_rule(false, "is_create")) : ?>
                <a href="<?= base_url("divisi/tambah"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-dark shadow-sm float-right">
                    <i class="fas fa-plus fa-sm text-white-50"></i> Tambah Data
                </a>
            <?php endif; ?>
            <?php if (check_rule(false, "is_create")) : ?>
                <a href="<?= base_url("divisi/tambah"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-dark shadow-sm float-right">
                    <i class="fas fa-plus fa-sm text-white-50"></i> Tambah Data
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
                            "ajax": {
                                "url": "<?= base_url("bankdata_customer/datatable"); ?>",
                                "type": "POST",
                                // "data": function(data){
                                //     data.id_kelompok_pertanyaan = $("#id_kelompok_pertanyaan").find(":selected").val();
                                // }
                            },
                            // 'columnDefs': [{
                                // 'targets': [10],
                                /* column index */
                                // 'orderable': false,
                                /* true or false */
                            // }]
                        });
                        
                        // $('.filter').on('change', function(){
                        //     table.draw()
                        // })

                    })

                    </script>
                </div>
            </div>
        </div>
    </div>
</div>