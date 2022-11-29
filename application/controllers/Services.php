<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Services extends CI_Controller
{

    public function __construct()
    {
        // parent::__construct();
    }

    public function index()
    {
        // check_rule(false, "is_read", true);

        $data = [
            "title" => "Dashboard"
        ];
        view('templates/header', $data);
        view('templates/sidebar');
        view('templates/topbar');
        view('services/index');
        view('templates/footer');
    }

    
}
