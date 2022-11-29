    <div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
        <div class="carousel-inner">
            <?php foreach ($carousel as $key) : ?>
                <div class="carousel-item active">
                    <!-- <img class="w-100" src="<?= base_url('assets/web/'); ?>img/carousel-1.jpg" alt="Image"> -->
                    <img class="w-100" src="<?= base_url('uploads/' . $key['image_carousel']); ?>" alt="Image">
                    <div id="kepala-carousel" class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 900px;">
                            <h5 class="text-white text-uppercase mb-3 animated slideInDown"><?= $key['subtitle_carousel'] ?></h5>
                            <h1 class="display-1 text-white mb-md-4 animated zoomIn"><?= $key['title_carousel'] ?></h1>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#header-carousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>
<!-- Navbar & Carousel End -->


<!-- Full Screen Search Start -->
<div class="modal fade" id="searchModal" tabindex="-1">
    <div class="modal-dialog modal-fullscreen">
        <div class="modal-content" style="background: rgba(9, 30, 62, .7);">
            <div class="modal-header border-0">
                <button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body d-flex align-items-center justify-content-center">
                <div class="input-group" style="max-width: 600px;">
                    <input type="text" class="form-control bg-transparent border-primary p-3" placeholder="Type search keyword">
                    <button class="btn btn-primary px-4"><i class="bi bi-search"></i></button>
                </div>
            </div>
        </div>
    </div>
</div>


<?= flashdata('msg') ?>


<!-- Blog Start -->
<!-- <div class="row">
        <div class="col-md-7 col-sm-12">
            
        </div>
        <div class="col-md-5 col-sm-12">
            
        </div>
    </div> -->
<div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s" id="about">
    <div class="container py-5">
        <div class="row">
            <?php foreach ($menutengah as $key) : ?>
                <?php if ($key['posisi'] == "1") : ?>
                    <div class="col-md-6 col-sm-12">
                        <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                            <h1 class="mb-0"><?= $key['title_halaman'] ?></h1>
                        </div>
                        <div class="row g-5">
                            <img src="<?= base_url('uploads/' . $key['image_halaman']) ?>" alt="">
                            <div class="row mb-5 mt-3">
                                <div class="col-12 text-center">
                                    <?= $key['content_halaman'] ?>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php elseif ($key['posisi'] == "2") : ?>
                    <div class="col-md-6 col-sm-12 float-right">
                        <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                            <h1 class="mb-0"><?= $key['title_halaman'] ?></h1>
                        </div>
                        <div class="row g-5">
                            <img src="<?= base_url('uploads/' . $key['image_halaman']) ?>" alt="">
                            <div class="row mb-5 mt-3">
                                <div class="col-12 text-center">
                                    <?= $key['content_halaman'] ?>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php elseif ($key['posisi'] == "3") : ?>
                    <div class="col-md-12 col-sm-12">
                        <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                            <h1 class="mb-0"><?= $key['title_halaman'] ?></h1>
                        </div>
                        <div class="row g-5">
                            <img src="<?= base_url('uploads/' . $key['image_halaman']) ?>" alt="">
                            <div class="row mb-5 mt-3">
                                <div class="col-12 text-center">
                                    <?= $key['content_halaman'] ?>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php elseif ($key['posisi'] == "4") : ?>
                    <div class="col-md-6 col-sm-12">
                        <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                            <h1 class="mb-0"><?= $key['title_halaman'] ?></h1>
                        </div>
                        <div class="row g-5">
                            <img src="<?= base_url('uploads/' . $key['image_halaman']) ?>" alt="">
                            <div class="row mb-5 mt-3">
                                <div class="col-12 text-center">
                                    <?= $key['content_halaman'] ?>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php elseif ($key['posisi'] == "5") : ?>
                    <div class="col-md-6 col-sm-12 float-right">
                        <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                            <h1 class="mb-0"><?= $key['title_halaman'] ?></h1>
                        </div>
                        <div class="row g-5">
                            <img src="<?= base_url('uploads/' . $key['image_halaman']) ?>" alt="">
                            <div class="row mb-5 mt-3">
                                <div class="col-12 text-center">
                                    <?= $key['content_halaman'] ?>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
            <?php endforeach; ?>
        </div>
    </div>
</div>
<div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s" id="services">
    <div class="container py-5">
        <div class="row">
            <div class="col-md-7 col-sm-12 mb-3">
                <!-- Service Start -->
                <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                    <h5 class="fw-bold text-primary text-uppercase">Faqs</h5>
                    <h1 class="mb-0">Frequently Asked Questions</h1>
                </div>
                <div class="row g-5">

                    <?php foreach ($faqs as $key) : ?>
                        <div class="col-lg-6 col-md-6 wow zoomIn" data-wow-delay="0.6s">
                            <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                                <h4 class="mb-3"><?= $key['text_faqs'] ?></h4>
                                <p class="m-0"><?= $key['answer_faqs'] ?></p>
                                <a class="btn btn-lg btn-primary rounded" href="">
                                    <i class="bi bi-arrow-right"></i>
                                </a>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="col-md-5 col-sm-12 mb-3">
                <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                    <h5 class="fw-bold text-primary text-uppercase">Articles</h5>
                    <h1 class="mb-0">Articles That Are Frequently Read</h1>
                </div>
                <div class="row g-5">

                    <?php foreach ($articles as $key) : ?>
                        <div class="col-lg-6 wow slideInUp" data-wow-delay="0.9s">
                            <div class="blog-item bg-light rounded overflow-hidden">
                                <div class="blog-img position-relative overflow-hidden">
                                    <img class="img-fluid" src="<?= base_url('uploads/' . $key['image_articles']); ?>" alt="">
                                </div>
                                <div class="p-4">
                                    <div class="d-flex mb-3">
                                        <small><i class="far fa-calendar-alt text-primary me-2"></i><?= dateformat("d-m-Y", "Y-m-d", explode(' ', $key['created_at_articles'])[0]) ?></small>
                                    </div>
                                    <h4 class="mb-3"><?= $key['title_articles'] ?></h4>
                                    <p><?= $key['content_articles'] ?></p>
                                    <a class="text-uppercase" href="#">Read More <i class="bi bi-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>

                </div>
            </div>
        </div>

    </div>
</div>
<!-- Blog Start -->

<!-- Testimonial Start -->
<div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
    <div class="container py-5">
        <div class="section-title text-center position-relative pb-3 mb-4 mx-auto" style="max-width: 600px;">
            <h5 class="fw-bold text-primary text-uppercase">Testimonial</h5>
            <h1 class="mb-0">What Our Clients Say About Our Digital Services</h1>
        </div>
        <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.6s">
            <?php foreach ($testimonials as $key) : ?>
                <div class="testimonial-item bg-light my-4">
                    <div class="d-flex align-items-center border-bottom pt-5 pb-4 px-5">
                        <img class="img-fluid rounded" src="<?= base_url('uploads/' . $key['image_testimonial']); ?>" style="width: 60px; height: 60px;">
                        <div class="ps-4">
                            <h4 class="text-primary mb-1"><?= $key['nama_testimonial'] ?></h4>
                            <small class="text-uppercase"><?= $key['job_testimonial'] ?></small>
                        </div>
                    </div>
                    <div class="pt-4 pb-5 px-5">
                        <?= $key['text_testimonial'] ?>
                    </div>
                </div>
            <?php endforeach; ?>

        </div>
    </div>
</div>
<!-- Testimonial End -->

<div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s" id="leavemsg">
    <div class="container py-5">
        <div class="row g-5">
            <div class="col-lg-7">
                <div class="section-title position-relative pb-3 mb-5">
                    <h5 class="fw-bold text-primary text-uppercase">Request A Quote</h5>
                    <h1 class="mb-0">Need A Free Quote? Please Feel Free to Contact Us</h1>
                </div>
                <div class="row gx-3">
                    <div class="col-sm-6 wow zoomIn" data-wow-delay="0.2s">
                        <h5 class="mb-4"><i class="fa fa-reply text-primary me-3"></i>Reply within 24 hours</h5>
                    </div>
                    <div class="col-sm-6 wow zoomIn" data-wow-delay="0.4s">
                        <h5 class="mb-4"><i class="fa fa-phone-alt text-primary me-3"></i>24 hrs telephone support</h5>
                    </div>
                </div>
                <p class="mb-4">Eirmod sed tempor lorem ut dolores. Aliquyam sit sadipscing kasd ipsum. Dolor ea et dolore et at sea ea at dolor, justo ipsum duo rebum sea invidunt voluptua. Eos vero eos vero ea et dolore eirmod et. Dolores diam duo invidunt lorem. Elitr ut dolores magna sit. Sea dolore sanctus sed et. Takimata takimata sanctus sed.</p>
                <div class="d-flex align-items-center mt-2 wow zoomIn" data-wow-delay="0.6s">
                    <div class="bg-primary d-flex align-items-center justify-content-center rounded" style="width: 60px; height: 60px;">
                        <i class="fa fa-phone-alt text-white"></i>
                    </div>
                    <div class="ps-4">
                        <h5 class="mb-2">Call to ask any question</h5>
                        <h4 class="text-primary mb-0">+628-9898-4321-4</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="bg-primary rounded h-100 d-flex align-items-center p-5 wow zoomIn" data-wow-delay="0.9s">
                    <form action="<?= base_url('leavemsg/tambah') ?>" method="POST">
                        <div class="row g-3">
                            <div class="col-xl-12">
                                <input name="nama_leavemsg" type="text" class="form-control bg-light border-0" placeholder="Your Name" style="height: 55px;" value="<?= set_value('nama_leavemsg') ?>">
                                <?= form_error('nama_leavemsg', '<small class="text-danger">', '</small>') ?>
                            </div>
                            <div class="col-xl-12">
                                <input name="email_leavemsg" type="text" class="form-control bg-light border-0" placeholder="Your Email" style="height: 55px;" value="<?= set_value('email_leavemsg') ?>">
                                <?= form_error('email_leavemsg', '<small class="text-danger">', '</small>') ?>
                            </div>
                            <div class="col-xl-12">
                                <input name="no_leavemsg" type="number" class="form-control bg-light border-0" placeholder="Your Phone" style="height: 55px;" value="<?= set_value('no_leavemsg') ?>">
                                <?= form_error('no_leavemsg', '<small class="text-danger">', '</small>') ?>
                            </div>
                            <div class="col-12">
                                <textarea name="msg_leavemsg" class="form-control bg-light border-0" rows="3" placeholder="Message"><?= set_value('msg_leavemsg') ?></textarea>
                                <?= form_error('msg_leavemsg', '<small class="text-danger">', '</small>') ?>
                            </div>
                            <div class="col-12">
                                <button class="btn btn-dark w-100 py-3" type="submit">Request A Quote</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Vendor Start -->
<div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
    <div class="container py-5 mb-5">
        <div class="bg-white">
            <div class="owl-carousel vendor-carousel">
                <?php foreach ($ourclients as $key) : ?>
                    <img src="<?= base_url('uploads/' . $key['image_ourclient']); ?>" alt="">
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</div>
<!-- Vendor End -->