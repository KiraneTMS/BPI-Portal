<?= flashdata("msg"); ?>
<?php if (check_rule(false, "is_create") && userdata('role_id') == '1') : ?>
    <!-- Import Data Excel Section -->
    <!--
    <div class="row">
        <div class="col-md-4 col-sm-12 col-lg-4">
            <div class="card shadow mb-4">
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
    -->
<?php endif; ?>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-dark h4">Riwayat Aktivitas Pengguna
            <a href="<?= base_url("aktivitas/download"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm float-right ml-1">
                <i class="fas fa-download fa-sm text-white-50"></i> Unduh Riwayat
            </a>
            <?php if (check_rule(false, "is_create")) : ?>
                <!--
                <a href="<?= base_url("bankdata_customer/tambah"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-dark shadow-sm float-right ml-1">
                    <i class="fas fa-plus fa-sm text-white-50"></i> Tambah Data
                </a>
                -->
            <?php endif; ?>
            <?php if (check_rule(false, "is_delete")) : ?>
                <!--
                <a id="deleteselected" data-href="<?= base_url("bankdata_customer/tambah"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm float-right">
                    <i class="fas fa-trash fa-sm text-white-50"></i> Hapus Selected Data
                </a>
                -->
            <?php endif; ?>
        </h6>
    </div>
    <div class="card-body">
        <div class="table-responsive" style="overflow-x:auto;">
            <form method="POST" action="<?= base_url('aktivitas/delete_selected'); ?>" id="dataForm">
                <table id="datatable" class="table display responsive nowrap" width="100%">
                    <thead>
                        <tr>
                            <th>nama</th>
                            <th>aktivitas</th>
                            <th>dibuat</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $i = 1;
                        foreach ($logs as $log) {
                            echo "<tr>";
                            echo "<td>{$log['name']}</td>";
                            echo "<td>{$log['aktivitas']}</td>";
                            echo "<td>" . date("d-m-Y H:i:s", strtotime($log['dibuat'])) . "</td>";
                            $i++;
                        }
                        ?>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</div>
