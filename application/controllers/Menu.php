<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Menu extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
    {
        check_rule(false,"is_read",true);

        $data = [
            "title" => "Menu",
            "data" => dbget("menu")->result_array()
        ];
        view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('menu/index', $data);
		view('templates/footer');
    }   

    public function tambah()
{
    check_rule(false, "is_create", true);

    set_rules('namamenu', 'Nama Menu', 'required');
    set_rules('url_menu', 'Url Menu', 'required');
    set_rules('icon_menu', 'Icon Menu', 'required');
    set_rules('level_menu', 'level Menu', 'required|numeric', [
        "numeric" => "This field required."
    ]);
    set_rules('sort', 'Sort', 'required|numeric', [
        "numeric" => "This field required."
    ]);

    if ($this->form_validation->run() == False) {
        $data = [
            "title" => "Dashboard",
            "menu_head" => dbgetwhere("menu", ['is_active' => 1, "is_head" => 1, "level_menu" => 1])->result_array()
        ];
        view('templates/header', $data);
        view('templates/sidebar');
        view('templates/topbar');
        view('menu/tambah');
        view('templates/footer');    
    } else {
        $data = [
            'namamenu' => post('namamenu'),
            'url_menu' => post('url_menu'),
            'icon_menu' => post('icon_menu'),
            'is_head' => (post('is_head') == 'on') ? '1' : '0',
            'level_menu' => post('level_menu'),
            'menu_head' => post('menu_head'),
            'sort' => post('sort'),
            'is_active' => (post('is_active') == 'on') ? '1' : '0'
        ];

        dbinsert("menu", $data);

        // Log the activity
        add_aktivitas("Added new menu item: " . $data['namamenu']);

        set_flashdata("msg", swalfire("Menu Berhasil Dimasukan", "success"));
        redirect(base_url("menu/index"));
    }
}


public function update($id)
{
    check_rule(false, "is_update", true);

    set_rules('namamenu', 'Nama Menu', 'required');
    set_rules('url_menu', 'Url Menu', 'required');
    set_rules('icon_menu', 'Icon Menu', 'required');
    set_rules('level_menu', 'level Menu', 'required|numeric', [
        "numeric" => "This field required."
    ]);
    set_rules('sort', 'Sort', 'required|numeric', [
        "numeric" => "This field required."
    ]);

    if ($this->form_validation->run() == False) {
        $data = [
            "title" => "Dashboard",
            "menu_head" => dbgetwhere("menu", ['is_active' => 1, "is_head" => 1, "level_menu" => 1])->result_array(),
            "data" => dbgetwhere("menu", ['IDMenu' => $id])->row_array()
        ];
        view('templates/header', $data);
        view('templates/sidebar');
        view('templates/topbar');
        view('menu/update', $data);
        view('templates/footer');    
    } else {
        $data = [
            'namamenu' => post('namamenu'),
            'url_menu' => post('url_menu'),
            'icon_menu' => post('icon_menu'),
            'is_head' => (post('is_head') == 'on') ? '1' : '0',
            'level_menu' => post('level_menu'),
            'menu_head' => post('menu_head'),
            'sort' => post('sort'),
            'is_active' => (post('is_active') == 'on') ? '1' : '0'
        ];

        dbupdate("menu", $data, ['IDMenu' => $id]);

        // Log the activity
        add_aktivitas("Updated menu item: " . $data['namamenu']);

        set_flashdata("msg", swalfire("Menu Berhasil Dirubah", "success"));
        redirect(base_url("menu/index"));
    }
}

    
public function delete($id)
{
    check_rule(false, "is_delete", true);

    $menu = dbgetwhere("menu", ['IDMenu' => $id])->row_array();
    if ($menu) {
        dbdelete("menu", ['IDMenu' => $id]);

        // Log the activity
        add_aktivitas("Deleted menu item: " . $menu['namamenu']);

        set_flashdata("msg", swalfire("Menu Berhasil Dihapus", "success"));
    } else {
        set_flashdata("msg", swalfire("Menu not found", "error"));
    }
    redirect(base_url("menu/index"));
}


}