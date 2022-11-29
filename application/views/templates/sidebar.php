<!-- Sidebar -->
<!-- <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar"> -->
<!-- <ul class="navbar-nav sidebar sidebar-dark accordion" id="accordionSidebar" style="background-color: #81c244;"> -->
<!-- <ul class="navbar-nav sidebar sidebar-dark accordion" id="accordionSidebar" style="background-color: #00A170;"> -->
<?php $color = dbgetwhere("devsetting", ['devkey' => "COLOR_WEB"])->row_array(); ?>
<?php $color = (isset($color['devvalue'])) ? $color['devvalue'] : "#2879c1"; ?>
<ul class="navbar-nav sidebar sidebar-dark accordion" id="accordionSidebar" style="background-color: <?= $color; ?>;">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url("dashboard/index"); ?>">
        <div class="sidebar-brand-icon">
            <img src="<?= base_url("assets/img/logo.png"); ?>" alt="" width="40px">
        </div>
        <?php $title = dbgetwhere("devsetting", ['devkey' => "TITLE"])->row_array(); ?>
        <?php $title = (isset($title['devvalue'])) ? $title['devvalue'] : "farmerbyte"; ?>
        <div class="sidebar-brand-text mx-3"><?= $title; ?></div>
        <!-- <div class="mx-3">FarmerByte</div> -->
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <?php $menu_allow = [];
    foreach ($this->db->get_where("role_access_menu", ['IDRole' => userdata("role_id"), "is_read" => "1"])->result_array() as $key) : ?>
        <?php array_push($menu_allow, $key['IDMenu']); ?>
    <?php endforeach; ?>

    <?php $this->db->order_by("sort", "ASC"); ?>
    <?php $i = 0;
    foreach (dbgetwhere("menu", ["level_menu" => 1, 'is_active' => 1])->result_array() as $key) : ?>
        <?php if (in_array($key['IDMenu'], $menu_allow)) : ?>
            <?php if ($key['is_head'] == '0') : ?>
                <li class="nav-item <?= ($this->uri->segment("1") == $key['url_menu']) ? "active" : ""; ?>">
                    <a class="nav-link" href="<?= base_url($key['url_menu']); ?>">
                        <i class="<?= $key['icon_menu'] ?>"></i>
                        <span><?= $key['namamenu']; ?></span></a>
                </li>
            <?php elseif ($key['is_head'] == '1') :  ?>
                <li class="nav-item">
                    <a class="nav-link collapsed" id="pencetan<?= $key['IDMenu']; ?>" href="#" data-toggle="collapse" data-target="#collapsePages<?= $key['IDMenu']; ?>" aria-expanded="true" aria-controls="collapsePages<?= $key['IDMenu']; ?>">
                        <i class="<?= $key['icon_menu'] ?>"></i>
                        <span><?= $key['namamenu']; ?></span>
                    </a>
                    <?php $this->db->order_by("sort", "ASC"); ?>
                    <?php $menu2 = dbgetwhere("menu", ['level_menu' => 2, "menu_head" => $key['IDMenu'], "is_active" => 1])->result_array(); ?>
                    <?php if ($menu2 != []) : ?>
                        <div id="collapsePages<?= $key['IDMenu']; ?>" class="collapse " aria-labelledby="headingPages" data-parent="#accordionSidebar">
                            <div class="bg-white py-2 collapse-inner rounded">
                                <?php foreach ($menu2 as $key2) : ?>
                                    <?php if (in_array($key2['IDMenu'], $menu_allow)) : ?>
                                        <?php if ($this->uri->segment('1') == $key2['url_menu']) : ?>
                                            <script>
                                                $(function() {
                                                    $("#collapsePages<?= $key['IDMenu']; ?>").addClass("show")
                                                    $("#pencetan<?= $key['IDMenu']; ?>").removeClass("collapsed")
                                                })
                                            </script>
                                        <?php endif; ?>

                                        <?php if ($key2['is_head'] == 1) : ?>
                                            <div class="collapse-divider"></div>
                                            <h6 class="collapse-header"><?= $key2['namamenu']; ?></h6>
                                        <?php elseif ($key2['is_head'] == 0) : ?>
                                            <a class="collapse-item <?= ($this->uri->segment("1") == $key2['url_menu']) ? "active\" style='color: " . $color . "'" : "\""; ?> href=" <?= base_url($key2['url_menu']); ?>">
                                                <i class="<?= $key2['icon_menu'] ?> mr-1"></i>
                                                <?= $key2['namamenu']; ?>
                                            </a>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    <?php endif; ?>
                </li>
            <?php endif; ?>
        <?php endif; ?>
    <?php endforeach; ?>

    <!-- <li class="nav-item">
    <a class="nav-link" href="<?= base_url("dashboard/index"); ?>">
        <i class="fas fa-fw fa-tachometer-alt"></i>
        <span>Dashboard</span></a>
</li> -->
    <!-- <li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages1"
        aria-expanded="true" aria-controls="collapsePages1">
        <i class="fas fa-fw fa-seedling"></i>
        <span>Budidaya</span>
    </a>
    <div id="collapsePages1" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Budidaya</h6>
            <a class="collapse-item" href="<?= base_url("penanaman/index"); ?>">
                <i class="fas fa-fw fa-seedling mr-1"></i>
                Penanaman
            </a>
            <a class="collapse-item" href="<?= base_url("aktifitas/index"); ?>">
                <i class="fas fa-fw fa-hard-hat mr-1"></i>
                Aktifitas
            </a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Panen</h6>
            <a class="collapse-item" href="<?= base_url("rencanapanen/index"); ?>">
                <i class="fas fa-fw fa-tractor mr-1"></i>
                Rencana Panen
            </a>
            <a class="collapse-item" href="<?= base_url("panen/index"); ?>">
                <i class="fas fa-fw fa-weight-hanging mr-1"></i>
                Packing House
            </a>
        </div>
    </div>
</li> -->



    <!-- <li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages3"
        aria-expanded="true" aria-controls="collapsePages3">
        <i class="fas fa-fw fa-table"></i>
        <span>Master Data</span>
    </a>
    <div id="collapsePages3" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Master Data</h6>
            <a class="collapse-item" href="<?= base_url("barang/index"); ?>">
                <i class="fas fa-fw fa-table mr-1"></i>
                Barang
            </a>
            <a class="collapse-item" href="<?= base_url("tanaman/index"); ?>">
                <i class="fas fa-fw fa-seedling mr-1"></i>
                Tanaman
            </a>
            <a class="collapse-item" href="<?= base_url("jenisaktivitas/index"); ?>">
                <i class="fas fa-fw fa-bars mr-1"></i>
                Jenis Aktivitas
            </a>
            <a class="collapse-item" href="<?= base_url("spekpacking/index"); ?>">
                <i class="fas fa-fw fa-box mr-1"></i>
                Spesifikasi Packing
            </a>
            <div class="collapse-divider"></div>
            <a class="collapse-item" href="<?= base_url("blok/index"); ?>">
                <i class="fas fa-fw fa-mountain mr-1"></i>
                Lahan
            </a>
        </div>
    </div>
</li> -->
    <!-- <li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages2"
        aria-expanded="true" aria-controls="collapsePages2">
        <i class="fas fa-fw fa-user"></i>
        <span>User</span>
    </a>
    <div id="collapsePages2" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">User</h6>
            <a class="collapse-item" href="<?= base_url("role/index"); ?>">
                <i class="fas fa-fw fa-user"></i>
                Role
            </a>
            <a class="collapse-item" href="<?= base_url("user/index"); ?>">
                <i class="fas fa-fw fa-user"></i>
                User
            </a>
        </div>
    </div>
</li>
<li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages4"
        aria-expanded="true" aria-controls="collapsePages4">
        <i class="fas fa-fw fa-users"></i>
        <span>Resource</span>
    </a>
    <div id="collapsePages4" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Employee</h6>
            <a class="collapse-item" href="<?= base_url("pegawai/index"); ?>">
                <i class="fas fa-fw fa-user-friends"></i>
                Pegawai
            </a>
            <a class="collapse-item" href="<?= base_url("absensi/index"); ?>">
                <i class="fas fa-fw fa-clock"></i>
                Absensi
            </a>
        </div>
    </div>
</li>
<li class="nav-item">
    <a class="nav-link" href="<?= base_url("menu/index"); ?>">
        <i class="fas fa-fw fa-folder-minus"></i>
        <span>Menu</span></a>
</li> -->


    <!-- <hr class="sidebar-divider">

<div class="sidebar-heading">
    Interface
</div>

<li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
        aria-expanded="true" aria-controls="collapseTwo">
        <i class="fas fa-fw fa-cog"></i>
        <span>Components</span>
    </a>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Components:</h6>
            <a class="collapse-item" href="buttons.html">Buttons</a>
            <a class="collapse-item" href="cards.html">Cards</a>
        </div>
    </div>
</li>

<li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
        aria-expanded="true" aria-controls="collapseUtilities">
        <i class="fas fa-fw fa-wrench"></i>
        <span>Utilities</span>
    </a>
    <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
        data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Utilities:</h6>
            <a class="collapse-item" href="utilities-color.html">Colors</a>
            <a class="collapse-item" href="utilities-border.html">Borders</a>
            <a class="collapse-item" href="utilities-animation.html">Animations</a>
            <a class="collapse-item" href="utilities-other.html">Other</a>
        </div>
    </div>
</li>

<hr class="sidebar-divider">

<div class="sidebar-heading">
    Addons
</div>

<li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
        aria-expanded="true" aria-controls="collapsePages">
        <i class="fas fa-fw fa-folder"></i>
        <span>Pages</span>
    </a>
    <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.html">Login</a>
            <a class="collapse-item" href="register.html">Register</a>
            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>
        </div>
    </div>
</li>

<li class="nav-item">
    <a class="nav-link" href="charts.html">
        <i class="fas fa-fw fa-chart-area"></i>
        <span>Charts</span></a>
</li>

<li class="nav-item">
    <a class="nav-link" href="tables.html">
        <i class="fas fa-fw fa-table"></i>
        <span>Tables</span></a>
</li> -->

    <hr class="sidebar-divider d-none d-md-block">

    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->