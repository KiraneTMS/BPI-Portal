<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }
    public function index()
    {
        has_loggedin();

        set_rules("Email", "Email", "required");
        set_rules("Password", "Password", "required");

        if ($this->form_validation->run() == False) {
            $data['title'] = "Login";
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/login');
            $this->load->view('templates/auth_footer');
        } else {
            $data = [
                "Email" => post("Email"),
                "password" => post("Password")
            ];
            $dbget = dbgetwhere("user", ['Email' => $data['Email']])->row_array();
            if ($dbget) {
                if (password_verify($data['password'], $dbget['Password'])) {
                    set_userdata("name", $dbget['Name']);
                    set_userdata("email", $dbget['Email']);
                    set_userdata("id_user", $dbget['IDUser']);
                    // set_userdata("id_perusahaan", $dbget['id_perusahaan']);
                    // // set_userdata("nama_perusahaan", dbgetwhere("tb_perusahaan", ['id_perusahaan' => $dbget['id_perusahaan']])->row_array()['nama_perusahaan']);
                    set_userdata("role_id", $dbget['IDRole']);
                    set_flashdata("msg", swalfire("Berhasil Login", "success"));
                    redirect(base_url('dashboard'));
                } else {
                    set_flashdata("msg", swalfire("Password Salah!", "error"));
                    redirect(base_url('auth'));
                }
            } else {
                set_flashdata("msg", swalfire("User Tidak Terdaftar!", "error"));
                redirect(base_url('auth'));
            }
        }
    }

    // public function register()
    // {
    //     has_loggedin();

    //     set_rules("Name", "Name", "required");
    //     set_rules("Email", "Email", "required|valid_email|is_unique[user.Email]");
    //     set_rules("Password1", "Password", "required|min_length[8]");
    //     set_rules("Password2", "Password", "required|matches[Password1]", ['matches' => 'The Password not match.']);

    //     if ($this->form_validation->run() == False) {
    //         $data['title'] = "Register";
    //         $this->load->view('templates/auth_header', $data);
    //         $this->load->view('auth/register');
    //         $this->load->view('templates/auth_footer');
    //     } else {
    //         $data = [
    //             "Name" => post("Name"),
    //             "Email" => post("Email"),
    //             "Password" => password_hash(post("Password1"), PASSWORD_DEFAULT),
    //             "IDRole" => dbgetwhere('role', ['NamaRole' => 'User'])->row_array()['IDRole'],
    //             "IsAktifUser" => 1
    //         ];
    //         dbinsert('user', $data);
    //         set_userdata("email", $data['Email']);
    //         set_userdata("id_user", $data['IDUser']);
    //         set_userdata("role_id", $data['IDRole']);
    //         set_flashdata("msg", swalfire("Berhasil Login", "success"));
    //         redirect(base_url('dashboard'));
    //     }
    // }

    // public function registration()
    // {
    //     $this->form_validation->set_rules('name', 'Name', 'required|trim');
    //     $this->form_validation->set_rules('email', 'email', 'required|trim|valid_email');
    //     $this->form_validation->set_rules('password1', 'password', 'required|trim|min_length[3]|matches[password2]',['matches' => 'password dont match!', 'min_length' => 'password too short!']);
    //     $this->form_validation->set_rules('password1', 'password', 'required|trim|matches[password1]');

    //     if ($this->form_validation->run() == false)
    //     {
    //         $data['title'] = 'Registration Page';
    //         $this->load->view('templates/auth_header', $data);
    //         $this->load->view('auth/registration');
    //         $this->load->view('templates/auth_footer');
    //     }
    //     else 
    //     {
    //        $data = [
    //            'Username' => $this->input->post('name'),
    //            'Password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
    //            'IDRole' => 1,
    //        ];

    //        $this->db->insert('user', $data);
    //        redirect('auth');
    //     }
    // }

    public function forbidden()
    {
        view("forbidden");
    }

    public function logout()
    {
        unset_userdata("name");
        unset_userdata("email");
        unset_userdata("id_user");
        // unset_userdata("id_perusahaan");
        // unset_userdata("nama_perusahaan");
        unset_userdata("role_id");
        set_flashdata("msg", swalfire("Logout Berhasil", "success"));
        redirect(base_url("auth"));
    }
}
