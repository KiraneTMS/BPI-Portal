<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Menubawah extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);
		dbrel('halaman', 'menubawah', 'id_halaman');
		$data = [
			"title" => "menubawah",
			'data' => dbget("menubawah")->result_array()
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('menubawah/index', $data);
		view('templates/footer');
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("name_menubawah", "name_menubawah", "required");
		set_rules("id_halaman", "halaman", "required");
		set_rules("posisi", "posisi", "numeric");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "menubawah",
				"halaman" => dbget("halaman")->result_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('menubawah/tambah', $data);
			view('templates/footer');
		} else {
			$data = [
				"name_menubawah" => post('name_menubawah'),
				"id_halaman" => post('id_halaman'),
				"posisi" => (post('posisi')) ? post('posisi') : 100,
			];
			dbinsert("menubawah", $data);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Dimasukan', 'success')</script>");
			redirect(base_url("menubawah/index"));
		}
	}

	public function update($id_menubawah)
	{
		check_rule(false, "is_update", true);
		set_rules("name_menubawah", "name_menubawah", "required");
		set_rules("id_halaman", "halaman", "required");
		set_rules("posisi", "posisi", "numeric");

		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "menubawah",
				"halaman" => dbget("halaman")->result_array(),
				"data" => dbgetwhere("menubawah", ["id_menubawah" => $id_menubawah])->row_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('menubawah/update', $data);
			view('templates/footer');
		} else {
			$data = [
				"name_menubawah" => post('name_menubawah'),
				"id_halaman" => post('id_halaman'),
				"posisi" => (post('posisi')) ? post('posisi') : 100,
			];
			dbupdate("menubawah", $data, ["id_menubawah" => $id_menubawah]);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Diupdate', 'success')</script>");
			redirect(base_url("menubawah/index"));
		}
	}

	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("menubawah", ['id_menubawah' => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("menubawah/index"));
	}
}
