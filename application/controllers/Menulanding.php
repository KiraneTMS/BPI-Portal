<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Menulanding extends CI_Controller
{

    public function index()
    {
        check_rule(false, "is_read", true);

        // join with optional halaman
        dborderby('id_menulanding','ASC');
        $this->db->join('halaman', 'halaman.id_halaman = menulanding.id_halaman', 'left');
        $data = dbget("menulanding")->result_array();
        $data = [
            "title" => "Menu Landing",
            "data" => $data
        ];
        view('templates/header', $data);
        view('templates/sidebar');
        view('templates/topbar');
        view('menulanding/index', $data);
        view('templates/footer');
    }

    public function tambah()
    {
        check_rule(false, "is_create", true);
        set_rules("jenis_menulanding", "jenis", "required");
        if (post("jenis_menulanding") == 1) { // href
            set_rules("href_menulanding", "href", "required");
        } else { // halaman
            set_rules("id_halaman", "halaman", "required");
        }
        set_rules("name_menulanding", "name", "required");
        set_rules("level_menulanding", "level", "required");
        // set_rules("head_menulanding", "head", "required");
        // set_rules("parent_menulanding", "parent", "required");
        // set_rules("sort_menulanding", "sort", "required");
        // set_rules("status_menulanding", "status", "required");


        if ($this->form_validation->run() == False) {
            $data = [
                "title" => "Dashboard",
                "halaman" => dbgetwhere("halaman", ["aktif_halaman" => 1])->result_array(),
                "menu" => dbgetwhere("menulanding", ["status_menulanding" => 1])->result_array()
            ];
            view('templates/header', $data);
            view('templates/sidebar');
            view('templates/topbar');
            view('menulanding/tambah', $data);
            view('templates/footer');
        } else {
            $data = [
                "href_menulanding" => post('href_menulanding'),
                "id_halaman" => post('id_halaman'),
                "jenis_menulanding" => post('jenis_menulanding'),
                "level_menulanding" => post('level_menulanding'),
                "name_menulanding" => post('name_menulanding'),
                "parent_menulanding" => (post('parent_menulanding')) ? post('parent_menulanding') : NULL,
                "sort_menulanding" => (post('sort_menulanding')) ? post('sort_menulanding') : 100,
                "status_menulanding" => (post('status_menulanding') == "on") ? 1 : 0,
                "head_menulanding" => (post('head_menulanding') == "on") ? 1 : 0,
            ];
            // dd($data);
            dbinsert("menulanding", $data);
            // $this->BlokModel->insert($data);
            set_flashdata("msg", swalfire("Menu Berhasil Dimasukan", "success"));
            redirect(base_url("menulanding/index"));
        }
    }
    public function update($id)
    {
        check_rule(false, "is_update", true);
        set_rules("jenis_menulanding", "jenis", "required");
        if (post("jenis_menulanding") == 1) { // href
            set_rules("href_menulanding", "href", "required");
        } else { // halaman
            set_rules("id_halaman", "halaman", "required");
        }
        set_rules("name_menulanding", "name", "required");
        set_rules("level_menulanding", "level", "required");
        // set_rules("head_menulanding", "head", "required");
        // set_rules("parent_menulanding", "parent", "required");
        // set_rules("sort_menulanding", "sort", "required");
        // set_rules("status_menulanding", "status", "required");


        if ($this->form_validation->run() == False) {
            $data = [
                "title" => "Dashboard",
                "halaman" => dbgetwhere("halaman", ["aktif_halaman" => 1])->result_array(),
                "menu" => dbgetwhere("menulanding", ["status_menulanding" => 1])->result_array(),
                "data" => dbgetwhere("menulanding", ["id_menulanding" => $id])->row_array()
            ];
            view('templates/header', $data);
            view('templates/sidebar');
            view('templates/topbar');
            view('menulanding/update', $data);
            view('templates/footer');
        } else {
            $data = [
                "href_menulanding" => post('href_menulanding'),
                "id_halaman" => post('id_halaman'),
                "jenis_menulanding" => post('jenis_menulanding'),
                "level_menulanding" => post('jenis_menulanding'),
                "name_menulanding" => post('name_menulanding'),
                "parent_menulanding" => (post('parent_menulanding')) ? post('parent_menulanding') : NULL,
                "sort_menulanding" => (post('sort_menulanding')) ? post('sort_menulanding') : 100,
                "status_menulanding" => (post('status_menulanding') == "on") ? 1 : 0,
                "head_menulanding" => (post('head_menulanding') == "on") ? 1 : 0,

            ];
            // dd($data);
            dbupdate("menulanding", $data, ["id_menulanding" => $id]);
            // $this->BlokModel->insert($data);
            set_flashdata("msg", swalfire("Menu Berhasil Diupdate", "success"));
            redirect(base_url("menulanding/index"));
        }
    }

    public function delete($id)
    {
        check_rule(false, "is_delete", true);

        dbdelete("menulanding", ['id_menulanding' => $id]);
        set_flashdata("msg", swalfire("Menu Berhasil Dihapus", "success"));
        redirect(base_url("menulanding/index"));
    }
}
