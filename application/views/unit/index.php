<?= flashdata("msg"); ?>
<div class="card shadow mb-4">
    <div class="card-header py-3">

        <ul class="nav nav-tabs mb-3">
            <li class="nav-item">
                <a class="nav-link" aria-current="page" href="blok">Blok</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="unit">Unit</a>
            </li>   
        </ul>

        <h6 class="m-0 font-weight-bold text-dark h4">Informasi Unit
            <?php if (check_rule("blok","is_create")) : ?>
            <a href="<?= base_url("unit/tambah"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-dark shadow-sm float-right">
                <i class="fas fa-plus fa-sm text-white-50"></i> Tambah Unit
            </a>
            <?php endif; ?>
        </h6>
            
    </div>
    <div class="card-body">
            <!-- Content Row -->
            <div class="row">
            <div class="col-md-12">
            <!-- <div class="table-responsive" style="overflow-x:auto;"> -->
                <table id="tabelUnit" class="table display responsive nowrap" width="100%">
                        <thead>
                            <tr>
                                <!-- <th>No</th> -->
                                <!-- <th>Nama Blok</th> -->
                                <th data-priority="1">Lahan</th>
                                <th>Total Luas Unit Kotor</th>
                                <th>Luas Unit Efektif</th>
                                <th>Sisa Luas Unit Kotor</th>
                                <th>Status</th>
                                <th data-priority="1">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                    <script>
                        $(document).ready(function(){
                            $('#tabelUnit').DataTable( {
                                "responsive": true,
                                "processing": true,
                                "serverSide": true,
                                "ajax": {
                                    "url": "<?= base_url("unit/ajax_unit"); ?>",
                                    "type": "POST"
                                }
                            });
                        })
                    </script>
                <!-- </div> -->
            </div>
        </div>
    </div>
</div>

