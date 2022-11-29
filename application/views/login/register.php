<div class="container">
<?= flashdata("msg"); ?>

    <!-- Outer Row -->
    <div class="row justify-content-center" style="height:100vh;">

        <div class="col-lg-6 my-auto" >

            <div class="card o-hidden border-0 shadow-lg">
                <div class="card-body p-0" >
                    <!-- Nested Row within Card Body -->
                    <!-- <div class="row" style="min-height: 500px;"> -->
                        <div class="col-lg-12 mx-auto" style="background-color: #82ae46;">
                            <div class="row h-100">
                                <div class="col-lg-12 my-auto">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-light font-weight-bold mb-4">Halaman Daftar</h1>
                                        </div>
                                        <form class="user" action="" method="POST">
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-user" id="name_users_customer" name="name_users_customer" placeholder="Nama"  value="<?= set_value('name_users_customer') ?>">
                                                <?= form_error("name_users_customer", '<small class="text-danger">', '</small>'); ?>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-user" id="email_users_customer" name="email_users_customer" placeholder="Email"  value="<?= set_value('email_users_customer') ?>">
                                                <?= form_error("email_users_customer", '<small class="text-danger">', '</small>'); ?>
                                            </div>
                                            <div class="form-group">
                                                <input type="tel" class="form-control form-control-user" id="hp_users_customer" name="hp_users_customer" placeholder="No HP"  value="<?= set_value('hp_users_customer') ?>">
                                                <?= form_error("hp_users_customer", '<small class="text-danger">', '</small>'); ?>
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control form-control-user" id="password_users_customer" name="password_users_customer" placeholder="Enter Password"  value="<?= set_value('password_users_customer') ?>">
                                                <?= form_error("password_users_customer", '<small class="text-danger">', '</small>'); ?>
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control form-control-user" id="password_users_customer2" name="password_users_customer2" placeholder="Verify Password"  value="<?= set_value('password_users_customer2') ?>">
                                                <?= form_error("password_users_customer2", '<small class="text-danger">', '</small>'); ?>
                                            </div>
                                            <hr>
                                            <button type="submit" class="btn btn-user btn-block btn-light text-dark font-weight-bold">
                                                Register
                                            </button>
                                            <hr>
                                            <!-- <a href="">Forgot Password?</a> -->
                                            <div class="text-center">
                                                <a class="text-light small" href="<?= base_url('login/index') ?>">Already Have an Account? Login!</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!-- </div> -->
                </div>
            </div>

        </div>

    </div>

</div>
<script>
    
</script>
