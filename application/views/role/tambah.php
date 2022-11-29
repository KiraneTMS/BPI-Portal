<?= flashdata("msg"); ?>
<div class="row">
    <div class="col-md-8">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark h4">Tambah Data Role</h6>
            </div>
            <div class="card-body">
                <form action="" method="POST">
                    <div class="form-group">
                        <label for="NamaRole">Nama Role</label>
                        <input class="form-control" type="text" name="NamaRole" id="NamaRole" placeholder="Masukan Nama Role" value="<?= set_value("NamaRole"); ?>">
                        <?= form_error("NamaRole", '<small class="text-danger">', '</small>'); ?>
                    </div>
                    
                    <h6 class="mb-3 mt-4 m-0 font-weight-bold text-dark h4">Hak Akses</h6>
                    <table class="table">
                        <tr class="">
                            <th scope="col">Nama Menu</th>
                            <th class="text-center" scope="col">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="readall">
                                    <label class="custom-control-label" for="readall">Lihat</label>
                                </div>
                            </th>
                            <th class="text-center" scope="col">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="createall">
                                    <label class="custom-control-label" for="createall">Tambah</label>
                                </div>
                            </th>
                            <th class="text-center" scope="col">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="updateall">
                                    <label class="custom-control-label" for="updateall">Ubah</label>
                                </div>
                            </th>
                            <th class="text-center" scope="col">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="deleteall">
                                    <label class="custom-control-label" for="deleteall">Hapus</label>
                                </div>
                            </th>
                        </tr>

<?php $this->db->order_by("sort", "ASC"); ?>
<?php $i = 0; foreach(dbgetwhere("menu", ["level_menu" => 1 ,'is_active' => 1])->result_array() as $key) : ?>
    <?php if ($key['is_head'] == '0') : ?>
        <!-- <tr class="bg-danger text-light"> -->
        <tr class="text-dark" style="background-color: #ebe6e3; font-weight: bold;">
        
            <td scope="row"><?= $key['namamenu']; ?></td>
            <input type="hidden" name="idmenu[]" value="<?= $key['IDMenu']; ?>">
            <td class="text-center">
                <div class="custom-control custom-checkbox">
                    <input type="hidden" name="read[]" id="input-read-<?= $key['IDMenu']; ?>" value="0">
                    <input type="checkbox" class="custom-control-input readall inputcheckbox" id="read<?= $key['IDMenu']; ?>">
                    <label class="custom-control-label" for="read<?= $key['IDMenu']; ?>"></label>
                </div>
            </td>
            <td class="text-center">
                <div class="custom-control custom-checkbox">
                    <input type="hidden" name="create[]" id="input-create-<?= $key['IDMenu']; ?>" value="0">
                    <input type="checkbox" class="custom-control-input createall inputcheckbox" id="create<?= $key['IDMenu']; ?>">
                    <label class="custom-control-label" for="create<?= $key['IDMenu']; ?>"></label>
                </div>
            </td>
            <td class="text-center">
                <div class="custom-control custom-checkbox">
                    <input type="hidden" name="update[]" id="input-update-<?= $key['IDMenu']; ?>" value="0">
                    <input type="checkbox" class="custom-control-input updateall inputcheckbox" id="update<?= $key['IDMenu']; ?>">
                    <label class="custom-control-label" for="update<?= $key['IDMenu']; ?>"></label>
                </div>
            </td>
            <td class="text-center">
                <div class="custom-control custom-checkbox">
                    <input type="hidden" name="delete[]" id="input-delete-<?= $key['IDMenu']; ?>" value="0">
                    <input type="checkbox" class="custom-control-input deleteall inputcheckbox" id="delete<?= $key['IDMenu']; ?>">
                    <label class="custom-control-label" for="delete<?= $key['IDMenu']; ?>"></label>
                </div>
            </td>
        </tr>

    <?php elseif ($key['is_head'] == '1') :  ?>

        <!-- <tr class="bg-danger text-light"> -->
        <tr class="text-dark" style="background-color: #ebe6e3; font-weight: bold;">
            <td scope="row"><?= $key['namamenu']; ?></td>
            <input type="hidden" name="idmenu[]" value="<?= $key['IDMenu']; ?>">
            <td class="text-center">
                <div class="custom-control custom-checkbox">
                    <input type="hidden" name="read[]" id="input-read-<?= $key['IDMenu']; ?>" value="0">
                    <input type="checkbox" class="custom-control-input readall inputcheckbox" id="read<?= $key['IDMenu']; ?>">
                    <label class="custom-control-label" for="read<?= $key['IDMenu']; ?>"></label>
                </div>
            </td>
            <td>
                <input type="hidden" name="create[]" value="0">
            </td>
            <td>
                <input type="hidden" name="update[]" value="0">
            </td>
            <td>
                <input type="hidden" name="delete[]" value="0">
            </td>
        </tr>


            <?php $this->db->order_by("sort", "ASC"); ?>
            <?php $menu2 = dbgetwhere("menu", ['level_menu' => 2, "menu_head" => $key['IDMenu'], "is_active" => 1])->result_array(); ?>
            <?php if ($menu2 != []) : ?>
                <?php foreach ($menu2 as $key2) : ?>
                    <?php if ($key2['is_head'] == 1) : ?>
                        <tr class="text-light" style="background-color: #00a170;">
                        <!-- <tr class="bg-success text-light"> -->
                            <td scope="row"><?= $key2['namamenu']; ?></td>
                            <input type="hidden" name="idmenu[]" value="<?= $key2['IDMenu']; ?>">
                            <td class="text-center">
                                <div class="custom-control custom-checkbox">
                                    <input type="hidden" name="read[]" id="input-read-<?= $key2['IDMenu']; ?>" value="0">
                                    <input type="checkbox" class="custom-control-input readall inputcheckbox" id="read<?= $key2['IDMenu']; ?>">
                                    <label class="custom-control-label" for="read<?= $key2['IDMenu']; ?>"></label>
                                </div>
                            </td>
                            <td>
                                <input type="hidden" name="create[]" value="0">
                            </td>
                            <td>
                                <input type="hidden" name="update[]" value="0">
                            </td>
                            <td>
                                <input type="hidden" name="delete[]" value="0">
                            </td>
                        </tr>
                    <?php elseif ($key2['is_head'] == 0) : ?>
                        <tr class="bg-success text-light">
                            <td scope="row"><?= $key2['namamenu']; ?></td>
                            <input type="hidden" name="idmenu[]" value="<?= $key2['IDMenu']; ?>">
                            <td class="text-center">
                                <div class="custom-control custom-checkbox">
                                    <input type="hidden" name="read[]" id="input-read-<?= $key2['IDMenu']; ?>" value="0">
                                    <input type="checkbox" class="custom-control-input readall inputcheckbox" id="read<?= $key2['IDMenu']; ?>">
                                    <label class="custom-control-label" for="read<?= $key2['IDMenu']; ?>"></label>
                                </div>
                            </td>
                            <td class="text-center">
                                <div class="custom-control custom-checkbox">
                                    <input type="hidden" name="create[]" id="input-create-<?= $key2['IDMenu']; ?>" value="0">
                                    <input type="checkbox" class="custom-control-input createall inputcheckbox" id="create<?= $key2['IDMenu']; ?>">
                                    <label class="custom-control-label" for="create<?= $key2['IDMenu']; ?>"></label>
                                </div>
                            </td>
                            <td class="text-center">
                                <div class="custom-control custom-checkbox">
                                    <input type="hidden" name="update[]" id="input-update-<?= $key2['IDMenu']; ?>" value="0">
                                    <input type="checkbox" class="custom-control-input updateall inputcheckbox" id="update<?= $key2['IDMenu']; ?>">
                                    <label class="custom-control-label" for="update<?= $key2['IDMenu']; ?>"></label>
                                </div>
                            </td>
                            <td class="text-center">
                                <div class="custom-control custom-checkbox">
                                    <input type="hidden" name="delete[]" id="input-delete-<?= $key2['IDMenu']; ?>" value="0">
                                    <input type="checkbox" class="custom-control-input deleteall inputcheckbox" id="delete<?= $key2['IDMenu']; ?>">
                                    <label class="custom-control-label" for="delete<?= $key2['IDMenu']; ?>"></label>
                                </div>
                            </td>
                        </tr>
                    <?php endif; ?>
                <?php endforeach; ?>
            <?php endif; ?>
    <?php endif; ?>
<?php endforeach; ?>

</table>

                    
                    <button type="submit" class="btn btn-dark w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function(){

        function checkInput() {
            const obj = JSON.parse('<?= $semua_menu; ?>');
            console.log("Changed")
            for (let i = 0; i < obj.length; i++) {
                // console.log(obj[i].IDMenu)
                if ($("#read"+obj[i].IDMenu).prop("checked")) {
                    $("#input-read-"+obj[i].IDMenu).val("1")
                } else {
                    $("#input-read-"+obj[i].IDMenu).val("0")
                }
                if ($("#create"+obj[i].IDMenu).prop("checked")) {
                    $("#input-create-"+obj[i].IDMenu).val("1")
                } else {
                    $("#input-create-"+obj[i].IDMenu).val("0")
                }
                if ($("#update"+obj[i].IDMenu).prop("checked")) {
                    $("#input-update-"+obj[i].IDMenu).val("1")
                } else {
                    $("#input-update-"+obj[i].IDMenu).val("0")
                }
                if ($("#delete"+obj[i].IDMenu).prop("checked")) {
                    $("#input-delete-"+obj[i].IDMenu).val("1")
                } else {
                    $("#input-delete-"+obj[i].IDMenu).val("0")
                }
            }
        }

        $("#readall").on("click", function(){
            if ($(this).prop("checked")) {
                $(".readall").prop("checked",true);
                checkInput()
            } else {
                $(".readall").prop("checked",false);
                checkInput()
            }
        })
        $("#createall").on("click", function(){
            if ($(this).prop("checked")) {
                $(".createall").prop("checked",true);
                checkInput()
            } else {
                $(".createall").prop("checked",false);
                checkInput()
            }
        })
        $("#updateall").on("click", function(){
            if ($(this).prop("checked")) {
                $(".updateall").prop("checked",true);
                checkInput()
            } else {
                $(".updateall").prop("checked",false);
                checkInput()
            }
        })
        $("#deleteall").on("click", function(){
            if ($(this).prop("checked")) {
                $(".deleteall").prop("checked",true);
                checkInput()
            } else {
                $(".deleteall").prop("checked",false);
                checkInput()
            }
        })

        checkInput()
        
        $(".inputcheckbox").on("click", function(){
            checkInput()
            // console.log($(this).prop("id"))
        })
    })
</script>