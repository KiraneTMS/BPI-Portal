<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

    public function __construct() { 
        parent::__construct(); 
        // Ensure email library is not loaded here if it's not used
    } 

    public function index() { 
        check_rule(false,"is_read",true); 
        $data = [ 
            "title" => "Dashboard", 
        ]; 
        $this->load->view('templates/header', $data); 
        $this->load->view('templates/sidebar'); 
        $this->load->view('templates/topbar'); 
        $this->load->view('dashboard/index'); 
        $this->load->view('templates/footer'); 
    } 
}
