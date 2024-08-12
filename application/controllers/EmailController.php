<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class EmailController extends CI_Controller {

    public function __construct() {
        parent::__construct();
        // Load the email library with the configuration from the email.php file
        $this->load->library('email');
    }
    public function send_mail() {
        $this->load->library('email');
    
        // Email configuration
        $config = array(
            'protocol'  => 'mail',
            'mailtype'  => 'html',
            'charset'   => 'utf-8',
            'wordwrap'  => TRUE
        );
    
        $this->email->initialize($config);
    
        // Load the view as message content
        $data = array('name' => 'John Doe');
        $message = $this->load->view('email_template', $data, TRUE);
    
        // Set email parameters
        $this->email->from('arsyaalifian4@gmail.com', 'Rajaki Arine');
        $this->email->to('kirenaiasakura@gmail.com');
        $this->email->subject('Email Test');
        $this->email->message($message);
        $this->email->set_header('X-Mailer', 'CodeIgniter');
        $this->email->set_header('MIME-Version', '1.0');
        $this->email->set_header('Content-Type', 'text/html');
    
        // Send email
        if ($this->email->send()) {
            echo json_encode(['success' => true]);
        } else {
            $error_message = $this->email->print_debugger();
            echo json_encode(['success' => false, 'error' => $error_message]);
        }
    }
}
