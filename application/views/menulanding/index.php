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
            <a href="<?= base_url("menulanding/tambah"); ?>" class="d-none d-sm-inline-block btn btn-sm btn-dark shadow-sm float-right">
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
                                <th>name</th>
                                <th>jenis</th>
                                <th>head</th>
                                <th>level</th>
                                <th>href</th>
                                <th>halaman</th>
                                <th>parent</th>
                                <th>sort</th>
                                <th>status</th>
                                <th data-priority="1">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1; foreach($data as $key) : ?>
                                <tr>
                                    <td><?= $key['name_menulanding'] ?></td>
                                    <td><?= ($key['jenis_menulanding'] == '1') ? badge("External", 'danger') : badge('Internal'); ?></td>
                                    <td><?= ($key['head_menulanding'] == '1') ? badge("Head") : badge('Not Head', 'danger'); ?></td>
                                    <td><?= (($key['level_menulanding'] == '1') ? badge("Menu Pertama") : (($key['level_menulanding'] == '2') ?  badge('Menu Kedua', 'info') : badge('Menu Ketiga', 'danger'))); ?></td>
                                    <td><?= $key['href_menulanding'] ?></td>
                                    <td><?= $key['title_halaman'] ?></td>
                                    <?php $parent = dbgetwhere('menulanding', ['id_menulanding' => $key['parent_menulanding']])->row_array(); ?>
                                    <td><?= isset($parent['name_menulanding']) ? $parent['name_menulanding'] : "None" ?></td>
                                    <td><?= $key['sort_menulanding'] ?></td>
                                    <td><?= ($key['status_menulanding'] == '1') ? badge("aktif") : badge("tidak aktif", 'danger'); ?></td>
                                    <td>
                                        <?php if (check_rule(false,"is_update")) : ?>
                                        <a href="<?= base_url("menulanding/update/".$key['id_menulanding'])?>" class="badge badge-dark">
                                            <i class="mt-1 mr-1 mb-1 ml-1 fas fa-edit"></i>
                                        </a>&nbsp
                                        <?php endif; ?>
                                        <?php  if (check_rule(false,"is_delete")) : ?>
                                        <a href="#" data-href="<?= base_url("menulanding/delete/".$key['id_menulanding'])?>" class="badge badge-danger" data-toggle="modal" data-target="#confirm-delete">
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

