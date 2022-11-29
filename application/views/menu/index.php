<?= flashdata("msg"); ?>
<div class="card shadow mb-4">
    <div class="card-header py-3">

    <!-- <ul class="nav nav-tabs mb-3">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="./index">Blok</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="../unit/index">Unit</a>
        </li>   
    </ul> -->

        <h6 class="m-0 font-weight-bold text-dark h4">Menu
            <?php if (check_rule(false,"is_create")) : ?>
            <a href="<?= base_url("menu/tambah"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-dark shadow-sm float-right">
                <i class="fas fa-plus fa-sm text-white-50"></i> Tambah Menu
            </a>
            <?php endif; ?>
        </h6>
        

    </div>
    <div class="card-body">
            <!-- Content Row -->
            <div class="row">
            <div class="col-md-12">
            <!-- <div class="table-responsive" style="overflow-x:auto;"> -->
                <table id="tabelMenu" class="table display responsive nowrap" width="100%">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th data-priority="1">Nama</th>
                                <th>Icon</th>
                                <th>URL</th>
                                <th>Level Menu</th>
                                <th>Head</th>
                                <th>Active</th>
                                <th>Sort</th>
                                <th data-priority="1">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1; foreach($data as $key) : ?>
                                <tr>
                                    <td><?= $i++; ?></td>
                                    <td><?= $key['namamenu']; ?></td>
                                    <td>
                                        <i class="<?= $key['icon_menu']; ?>"></i></td>
                                    <td><?= $key['url_menu']; ?></td>
                                    <td>
                                        <div class="badge badge-<?= ($key['level_menu'] == "1") ? "primary" : "danger" ; ?>"><?= ($key['level_menu'] == "1") ? "First Menu" : "Second Menu" ; ?></div>
                                    </td>
                                    <td><?= ($key['is_head'] == '1') ? '<i class="text-success fas fa-check"></i>' : '<i class="text-danger fas fa-times"></i>'; ?></td>
                                    <td><?= ($key['is_active'] == '1') ? '<i class="text-success fas fa-check"></i>' : '<i class="text-danger fas fa-times"></i>'; ?></td>
                                    <td><?= $key['sort']; ?></td>
                                    <td>
                                        <?php if (check_rule(false,"is_update")) : ?>
                                        <a href="<?= base_url("menu/update/".$key['IDMenu'])?>" class="badge badge-dark">
                                            <i class="mt-1 mr-1 mb-1 ml-1 fas fa-edit"></i>
                                        </a>&nbsp
                                        <?php endif; ?>
                                        <?php  if (check_rule(false,"is_delete")) : ?>
                                        <a href="#" data-href="<?= base_url("menu/delete/".$key['IDMenu'])?>" class="badge badge-danger" data-toggle="modal" data-target="#confirm-delete">
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
                            $('#tabelMenu').DataTable(
                                {
                                    stateSave: true
                                //     "responsive": true,
                                //     "processing": true,
                                //     "serverSide": true,
                                //     "ajax": {
                                //         "url": "<?= base_url("blok/ajax_blok"); ?>",
                                //         "type": "POST"
                                //     }
                                }
                            );
                        })
                    </script>
                <!-- </div> -->
            </div>
        </div>
    </div>
</div>

