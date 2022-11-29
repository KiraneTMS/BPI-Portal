<div class="container">
<?= flashdata("msg"); ?>

    <!-- Outer Row -->
    <div class="row justify-content-center" style="height:100vh;">

        <div class="col-lg-10 my-auto" >

            <div class="card o-hidden border-0 shadow-lg">
                <div class="card-body p-0" >
                    <!-- Nested Row within Card Body -->
                    <div class="row" style="min-height: 500px;">
                        <div class="col-lg-6 text-center my-auto">
                            <img class="mt-4 mb-4" src="<?= base_url("assets/img/farmerbytelogo.png"); ?>"  style="max-width: 250px;">
                        </div>
                        <?php $color = dbgetwhere("devsetting", ['devkey' => "COLOR_WEB"])->row_array()['devvalue']; ?>
                        <div class="col-lg-6" style="background-color: <?= (isset($color)) ? $color : "#2879c1" ; ?>;">
                            <div class="row h-100">
                                <div class="col-lg-12 my-auto">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-light font-weight-bold mb-4">Selamat Datang</h1>
                                        </div>
                                        <form class="user" action="" method="POST">
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-user" id="Username" name="Username" placeholder="Enter Username">
                                                <?= form_error("Username", '<small class="text-danger">', '</small>'); ?>
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control form-control-user" id="Password" name="Password" placeholder="Enter Password">
                                                <?= form_error("Password", '<small class="text-danger">', '</small>'); ?>
                                            </div>
                                            <hr>
                                            <button type="submit" class="btn btn-user btn-block btn-light text-dark font-weight-bold">
                                                Login
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>
<script>
    
</script>