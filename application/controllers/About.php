<?php
defined('BASEPATH') or exit('No direct script access allowed');

class About extends CI_Controller
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
        view('about/index');
        view('templates/footer');
    }

    public function reboot($k='')
    {
        if ($k == 'asdlkjasdlkjasdlkj') {
            echo 'https://farmerbyte.com:4433/reboot.php?key=asdlkjasdlkjasdlkj';
        } else {
            echo jsonify('Invalid Key');
        }
    }

    
}
