<?= flashdata("msg"); ?>
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-dark h4">Data Config
            <?php if (check_rule(false,"is_create")) : ?>
            <a href="<?= base_url("jsonconfig/add"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-dark shadow-sm float-right">
                <i class="fas fa-plus fa-sm text-white-50"></i> Add Config
            </a>
            <?php endif; ?>
        </h6>

    </div>
    <div class="card-body">
            <!-- Content Row -->
            <div class="row">
            <div class="col-md-12">
            <!-- <div class="table-responsive" style="overflow-x:auto;"> -->
                <table id="tabelBarang" class="table display responsive nowrap" width="100%">
                        <thead>
                            <tr>
                                <th>Wallet Name</th>
                                <th>Token Name</th>
                                <th>Trigger Value</th>
                                <th>Reward Low</th>
                                <th>Reward High</th>
                                <th>Gas Price</th>
                                <th>Gas Limit</th>
                                <th>Slipage</th>
                                <th data-priority="1">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($data as $key) : ?>
                            <tr>
                                <td><?= $key['name']; ?></td>
                                <td><?= $key['token_address']; ?></td>
                                <td><?= $key['trigger_value']; ?></td>
                                <td><?= $key['reward_low']; ?></td>
                                <td><?= $key['reward_high']; ?></td>
                                <td><?= $key['gas_price']; ?></td>
                                <td><?= $key['gas_limit']; ?></td>
                                <td><?= $key['slipage']; ?></td>
                                <td>
                                    <a href="<?= base_url("jsonconfig/update/".$key['id_config_order']); ?>" class="btn btn-dark btn-circle btn-sm">
                                        <i class="fas fa-edit"></i>
                                    </a>
                                    <a href="<?= base_url("jsonconfig/delete/".$key['id_config_order']); ?>" class="btn btn-danger btn-circle btn-sm">
                                        <i class="fas fa-trash"></i>
                                    </a>
                                </td>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <script>
                        $(document).ready(function(){
                            $('#tabelBarang').DataTable( {
                                "responsive": true,
                                // "processing": true,
                                // "serverSide": true,
                                // "ajax": {
                                //     "url": "<?= base_url("barang/ajax_barang"); ?>",
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

