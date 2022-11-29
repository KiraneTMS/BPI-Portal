<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title><?= (isset($title)) ? $title : "ShipGo - Startup Software" ?></title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="<?= base_url('assets/img/logo.png'); ?>" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&family=Rubik:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="<?= base_url('assets/web/'); ?>lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="<?= base_url('assets/web/'); ?>lib/animate/animate.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="<?= base_url('assets/web/'); ?>css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="<?= base_url('assets/web/'); ?>css/style.css" rel="stylesheet">

    <!-- load sweet alert -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner"></div>
    </div>
    <!-- Spinner End -->


    <!-- Topbar Start -->
    <!-- <div class="container-fluid bg-dark px-5 d-none d-lg-block">
        <div class="row gx-0">
            <div class="col-lg-10 text-center text-lg-start mb-2 mb-lg-0">
                <div class="d-inline-flex align-items-center" style="height: 45px;">
                    <small class="me-3 text-light"><i class="fa fa-map-marker-alt me-2"></i>Jl. Ir. H. Juanda No.84, Lebakgede, Kecamatan Coblong,
                        Kota Bandung, Jawa Barat 40132</small>
                    <small class="me-3 text-light"><i class="fa fa-phone-alt me-2"></i>+628-9898-4321-4</small>
                    <small class="text-light"><i class="fa fa-envelope-open me-2"></i>strongpapazola@gmail.com</small>
                </div>
            </div>
            <div class="col-lg-2 text-center text-lg-end">
                <div class="d-inline-flex align-items-center" style="height: 45px;">
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-twitter fw-normal"></i></a>
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-facebook-f fw-normal"></i></a>
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-linkedin-in fw-normal"></i></a>
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-instagram fw-normal"></i></a>
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle" href=""><i class="fab fa-youtube fw-normal"></i></a>
                </div>
            </div>
        </div>
    </div> -->
    <!-- Topbar End -->


    <!-- Navbar & Carousel Start -->
    <div class="container-fluid position-relative p-0">
        <!-- template hutang 1 div -->
        <!-- <nav class="navbar navbar-expand-lg navbar-dark px-5 py-3 py-lg-0 "> -->
        <nav id="navbaratas" class="navbar navbar-expand-lg navbar-dark px-5 py-3 py-lg-0 sticky-top shadow-sm">
            <a href="<?= base_url() ?>" class="navbar-brand p-0">
                <h1 class="m-0">
                    <!-- <i class="fa fa-user-tie me-2"></i> -->
                    <img src="<?= base_url('assets/web/img/logo.png') ?>" alt="" style="max-height: 100px;">
                </h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="fa fa-bars"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto py-0">
                    <!-- <a href="#header-carousel" class="nav-item nav-link active">Home</a> -->
                    <!-- make php foreach -->
                    <?php $i = 0;
                    foreach ($menu as $m) : ?>
                        <?php if ($m['level_menulanding'] == "1") : ?>
                            <?php if ($m['head_menulanding'] == "1") : ?>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link <?= ($i == 0) ? "active" : "" ?> dropdown-toggle" data-bs-toggle="dropdown"><?= $m['name_menulanding']; ?></a>
                                    <div class="dropdown-menu m-0">
                                        <?php
                                        $menu2 = dbgetwhere("menulanding", [
                                            "parent_menulanding" => $m['id_menulanding'],
                                            "level_menulanding" => "2",
                                            "status_menulanding" => "1"
                                        ])->result_array();
                                        ?>
                                        <?php foreach ($menu2 as $n) : ?>
                                            <?php if ($n['head_menulanding'] == "1") : ?>
                                                <a href="#" class="dropdown-item"><b><?= $n['name_menulanding']; ?></b></a>
                                                <?php
                                                $menu3 = dbgetwhere("menulanding", [
                                                    "parent_menulanding" => $n['id_menulanding'],
                                                    "level_menulanding" => "3",
                                                    "status_menulanding" => "1"
                                                ])->result_array();
                                                ?>
                                                <?php foreach ($menu3 as $o) : ?>
                                                    <a href="<?= ($o['jenis_menulanding'] == 1) ? base_url('landing/' . $o['href_menulanding']) : base_url('halaman/detail/' . $o['id_halaman']); ?>" class="dropdown-item">&nbsp;&nbsp;&nbsp;<?= $o['name_menulanding']; ?></a>
                                                <?php endforeach; ?>
                                            <?php else : ?>
                                                <a href="<?= ($n['jenis_menulanding'] == 1) ? base_url('landing/' . $n['href_menulanding']) : base_url('halaman/detail/' . $n['id_halaman']); ?>" class="dropdown-item"><?= $n['name_menulanding']; ?></a>
                                            <?php endif; ?>

                                        <?php endforeach; ?>
                                    </div>
                                </div>
                            <?php else : ?>
                                <a href="<?= ($m['jenis_menulanding'] == 1) ? base_url('landing/' . $m['href_menulanding']) : base_url('halaman/detail/' . $m['id_halaman']); ?>" class="nav-item nav-link <?= ($i == 0) ? "active" : "" ?>"><?= $m['name_menulanding']; ?></a>
                            <?php endif; ?>
                        <?php endif; ?>
                    <?php $i++;
                    endforeach; ?>

                </div>
            </div>
        </nav>

        <?= $content; ?>


        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-light mt-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="row gx-5">
                    <div class="col-lg-12 col-md-6">
                        <div class="row gx-5">

                            <div class="col-lg-3 col-md-6 col-sm-12 pt-5 mb-5">
                                <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                    <h3 class="text-light mb-0">Informasi</h3>
                                </div>
                                <?php dborderby('posisi', 'ASC'); foreach (dbget('menubawah')->result_array() as $key) : ?>
                                    <div class="d-flex mb-2">
                                        <p class="mb-0">
                                            <a href="<?= base_url('halaman/detail/'.$key['id_halaman']) ?>" target="_blank">
                                                <?= $key['name_menubawah'] ?>
                                            </a>
                                        </p>
                                    </div>
                                <?php endforeach; ?>
                            </div>

                            <div class="col-lg-3 col-md-6 col-sm-12 pt-5 mb-5">
                                <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                    <h3 class="text-light mb-0">Links</h3>
                                </div>
                                <?php foreach ($link as $key) : ?>
                                    <div class="d-flex mb-2">
                                        <p class="mb-0">
                                            <a href="<?= $key['url_link'] ?>" target="_blank">
                                                <?= $key['nama_link'] ?>
                                            </a>
                                        </p>
                                    </div>
                                <?php endforeach; ?>
                            </div>

                            <?php $compro = dbgetwhere("company_profile", ['id' => 1])->row_array(); ?>
                            <div class="col-lg-3 col-md-6 col-sm-12 pt-5 mb-5">
                                <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                    <h3 class="text-light mb-0">Get In Touch</h3>
                                </div>
                                <div class="d-flex mb-2">
                                    <i class="bi bi-geo-alt text-primary me-2"></i>
                                    <p class="mb-0"><?= $compro['alamat'] ?></p>
                                </div>
                                <div class="d-flex mb-2">
                                    <i class="bi bi-envelope-open text-primary me-2"></i>
                                    <p class="mb-0"><?= $compro['email'] ?></p>
                                </div>
                                <div class="d-flex mb-2">
                                    <i class="bi bi-telephone text-primary me-2"></i>
                                    <p class="mb-0"><?= $compro['nomor_telepon'] ?></p>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-6 col-sm-12 pt-5 mb-5">
                                <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                    <h3 class="text-light mb-0">Social Media</h3>
                                </div>

                                <?php foreach ($sosmed as $key) : ?>
                                    <div class="d-flex mt-4">
                                        <a class="btn btn-primary btn-square me-2" href="<?= $key['link_sosmed'] ?>">
                                            <i class="<?= $key['logo_sosmed'] ?>"></i>
                                        </a>
                                        <p class="mt-1"><?= $key['nama_sosmed'] ?></p>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i class="bi bi-arrow-up"></i></a>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script>
            $(document).ready(function() {
                $('#submit').on('click', function() {
                    const nama = $('input[name="name"]').val();
                    const message = $('textarea[name="message"]').val();
                    window.location.href = 'https://wa.me/628989843214?text=Saya ' + nama + ', ' + message;
                });
            });
        </script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="<?= base_url('assets/web/'); ?>lib/wow/wow.min.js"></script>
        <script src="<?= base_url('assets/web/'); ?>lib/easing/easing.min.js"></script>
        <script src="<?= base_url('assets/web/'); ?>lib/waypoints/waypoints.min.js"></script>
        <script src="<?= base_url('assets/web/'); ?>lib/counterup/counterup.min.js"></script>
        <script src="<?= base_url('assets/web/'); ?>lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="<?= base_url('assets/web/'); ?>js/main.js"></script>

        <script>
            $(document).ready(function() {
                if ($(window).width() >= 992) {
                    $('#header-carousel').css("margin-top", $("#navbaratas").height());
                }
                console.log($(window).width() >= 992)
            });
        </script>
</body>

</html>