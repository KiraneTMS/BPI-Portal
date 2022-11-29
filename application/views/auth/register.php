<div class="container">
<?= flashdata("msg"); ?>

    <!-- Outer Row -->
    <div class="row justify-content-center" style="height:100vh;">

        <div class="col-lg-10 my-auto" >

            <div class="card o-hidden border-0 shadow-lg">
                <div class="card-body p-0" >
                    <!-- Nested Row within Card Body -->
                    <div class="row" style="min-height: 500px;">
                        <div class="col-lg-6 text-center my-auto d-none d-md-block">
                            <img class="mt-4 mb-4" src="<?= base_url("assets/img/logo.png"); ?>"  style="max-width: 250px;">
                        </div>
                        <?php $color = dbgetwhere("devsetting", ['devkey' => "COLOR_WEB"])->row_array()['devvalue']; ?>
                        <div class="col-lg-6" style="background-color: <?= (isset($color)) ? $color : "#2879c1" ; ?>;">
                            <div class="row h-100">
                                <div class="col-lg-12 my-auto mx-auto">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-light font-weight-bold mb-4">Register</h1>
                                        </div>
                                        <form class="user" action="" method="POST">
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-user" id="Name" name="Name" placeholder="Enter Name">
                                                <?= form_error("Name", '<small class="text-danger">', '</small>'); ?>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-user" id="Email" name="Email" placeholder="Enter Email">
                                                <?= form_error("Email", '<small class="text-danger">', '</small>'); ?>
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control form-control-user" id="Password1" name="Password1" placeholder="Enter Password">
                                                <?= form_error("Password1", '<small class="text-danger">', '</small>'); ?>
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control form-control-user" id="Password2" name="Password2" placeholder="Verify Password">
                                                <?= form_error("Password2", '<small class="text-danger">', '</small>'); ?>
                                            </div>
                                            <hr>
                                            <button type="submit" class="btn btn-user btn-block btn-light text-dark font-weight-bold">
                                                Register
                                            </button>
                                        </form>
                                        <hr class="text-light">
                                        <div class="text-center">
                                            <a class="small text-light" href="<?= base_url('auth') ?>">Already have account? Login now!</a>
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

</div>
<script>
    
</script>
