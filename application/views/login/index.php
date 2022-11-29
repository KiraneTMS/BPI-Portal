<div class="container">
<?= flashdata("msg"); ?>

    <!-- Outer Row -->
    <div class="row justify-content-center" style="height:100vh;">

        <div class="col-lg-6 my-auto" >

            <div class="card o-hidden border-0 shadow-lg">
                <div class="card-body p-0" >
                    <!-- Nested Row within Card Body -->
                    <!-- <div class="row" style=""> -->
                        <div class="col-lg-12 mx-auto my-auto" style="background-color: #82ae46;">
                            <div class="row h-100">
                                <div class="col-lg-12 my-auto">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-light font-weight-bold mb-4">Halaman Login</h1>
                                        </div>
                                        <form class="user" action="" method="POST">
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-user" id="email_users_customer" name="email_users_customer" placeholder="Enter Email">
                                                <?= form_error("email_users_customer", '<small class="text-danger">', '</small>'); ?>
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control form-control-user" id="password_users_customer" name="password_users_customer" placeholder="Enter Password">
                                                <?= form_error("password_users_customer", '<small class="text-danger">', '</small>'); ?>
                                            </div>
                                            <hr>
                                            <button type="submit" class="btn btn-user btn-block btn-light text-dark font-weight-bold">
                                                Login
                                            </button>
                                            <hr>
                                            <!-- <a href="">Forgot Password?</a> -->
                                            <div class="text-center">
                                                <a class="text-light small" href="<?= base_url('login/register') ?>">Create an Account!</a>
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
