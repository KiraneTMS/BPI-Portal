<?= flashdata("msg"); ?>
<div class="card shadow mb-4">
    <div class="card-header py-3">

        <h6 class="m-0 font-weight-bold text-dark h4">Leave Message
            
        </h6>


    </div>
    <div class="card-body">
        <!-- Content Row -->
        <div class="row">
            <div class="col-md-12">
                <!-- <div class="table-responsive" style="overflow-x:auto;"> -->
                <table id="tabelBlok" class="table display responsive nowrap" width="100%">
                    <thead>
                        <tr>
                            <th>nama</th>
                            <th>email</th>
                            <th>no</th>
                            <th>msg</th>
                            <th>created at</th>
                            <th>approved</th>
                            <th data-priority="1">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i = 1;
                        foreach ($data as $key) : ?>
                            <tr>
                                <td><?= $key['nama_leavemsg'] ?></td>
                                <td><?= $key['email_leavemsg'] ?></td>
                                <td><?= $key['no_leavemsg'] ?></td>
                                <td><?= $key['msg_leavemsg'] ?></td>
                                <td><?= $key['created_at_leavemsg'] ?></td>
                                <td><?= ($key['approve_leavemsg'] == '1') ? badge('reviewed',"warning") : badge("approved", "success"); ?></td>
                                <td data-priority="1">
                                    <?php if ($key['approve_leavemsg'] == '1') : ?>
                                    <a href="<?= base_url("leavemsg/approve/" . $key['id_leavemsg']) ?>" class="btn btn-success" title="Approve ?">
                                        <!-- <i class="mt-1 mr-1 mb-1 ml-1 fas fa-check"></i> -->
                                        Draft
                                    </a>
                                    <?php else : ?>
                                    <a href="<?= base_url("leavemsg/reject/" . $key['id_leavemsg']) ?>" class="btn btn-danger" title="Reject ?">
                                        <!-- <i class="mt-1 mr-1 mb-1 ml-1 fas fa-times"></i> -->
                                        Approved
                                    </a>
                                    <?php endif; ?>
                                    <!-- <a data-href="<?= base_url("leavemsg/delete/" . $key['id_leavemsg']) ?>" class="badge badge-danger" data-toggle="modal" data-target="#confirm-delete">
                                        <i class="mt-1 mr-1 mb-1 ml-1 fas fa-trash"></i>
                                    </a> -->
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <script>
                    $(document).ready(function() {
                        $('#tabelBlok').DataTable({
                            "responsive": true,
                            "saveState": true
                            // "processing": true,
                            // "serverSide": true,
                            // "ajax": {
                            //     "url": "<?= base_url("leavemsg/ajax_blok"); ?>",
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