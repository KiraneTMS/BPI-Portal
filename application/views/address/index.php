<?= flashdata("msg"); ?>
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-dark h4">My Wallet
            <?php if (check_rule(false,"is_create")) : ?>
            <a href="<?= base_url("address/add"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-dark shadow-sm float-right">
                <i class="fas fa-plus fa-sm text-white-50"></i> Add Wallet
            </a>
            <?php endif; ?>
        </h6>

    </div>
    <div class="card-body">
            <!-- Content Row -->
            <div class="row">
            <div class="col-md-12">
            <!-- <div class="table-responsive" style="overflow-x:auto;"> -->
                <table id="tabelAddress" class="table display responsive nowrap" width="100%">
                        <thead>
                            <tr>
                                <!-- <th>No</th> -->
                                <th>Name Wallet</th>
                                <th>Address</th>
                                <th>Private Key</th>
                                <!-- <th>Stok Barang</th>
                                <th>Kategori Barang</th>
                                <th>Status Barang</th> -->
                                <!-- <th data-priority="1">Action</th> -->
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($data as $key) : ?>
                                <tr>
                                    <td><?= $key['name'] ?></td>
                                    <td><?= $key['address'] ?></td>
                                    <td>*****************</td>
                                    <!-- <td>
                                        <a href="<?= base_url("address/update/".$key['id_address']); ?>" class="badge badge-dark">
                                            <i class="mt-1 mr-1 mb-1 ml-1 fas fa-edit"></i>
                                        </a>&nbsp
                                        <a href="#" data-href="<?= base_url("address/delete/".$key['id_address']); ?>" class="badge badge-danger" data-toggle="modal" data-target="#confirm-delete">
                                            <i class="mt-1 mr-1 mb-1 ml-1 fas fa-trash"></i>
                                        </a>
                                    </td> -->
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <script>
                        $(document).ready(function(){
                            $('#tabelAddress').DataTable( {
                                "responsive": true,
                                // "processing": true,
                                // "serverSide": true,
                                // "ajax": {
                                //     "url": "<?= base_url("address/datatable"); ?>",
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

