<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Menutengah extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		dbrel("halaman", 'menutengah', 'id_halaman');
		$data = dbget("menutengah")->result_array();
		$data = [
			"title" => "menu tengah",
			'data' => $data,
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('menutengah/index', $data);
		view('templates/footer');
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules('id_halaman', 'halaman', 'required|is_unique[menutengah.id_halaman]', [
			"is_unique" => "halaman sudah ada"
		]);
		set_rules('posisi', 'posisi', 'required|is_unique[menutengah.posisi]', [
			"is_unique" => "posisi sudah ada"
		]);
		
		if ($this->form_validation->run() == False) {
			$data = dbget("halaman")->result_array();
			$data = [
				"title" => "menu tengah",
				"halaman" => $data,
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('menutengah/tambah', $data);
			view('templates/footer');
		} else {
			$data = [
				"id_halaman" => post("id_halaman"),
				"posisi" => post("posisi"),
			];
			dbinsert("menutengah", $data);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Dimasukan', 'success')</script>");
			redirect(base_url("menutengah/index"));
		}
	}

	public function update($id)
	{
		check_rule(false, "is_update", true);
		set_rules('id_halaman', 'halaman', 'required|is_unique[menutengah.id_halaman]', [
			"is_unique" => "halaman sudah ada"
		]);
		set_rules('posisi', 'posisi', 'required|is_unique[menutengah.posisi]', [
			"is_unique" => "posisi sudah ada"
		]);
		
		$exist = dbgetwhere("menutengah", ["id_menutengah" => $id])->row_array();
		if ($this->form_validation->run() == False) {
			$data = dbget("halaman")->result_array();
			$data = [
				"title" => "menu tengah",
				"halaman" => $data,
				"data" => $exist,
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('menutengah/update', $data);
			view('templates/footer');
		} else {
			$data = [
				"id_halaman" => post("id_halaman"),
				"posisi" => post("posisi"),
			];
			dbupdate("menutengah", $data, ["id_menutengah" => $id]);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Diupdate', 'success')</script>");
			redirect(base_url("menutengah/index"));
		}
	}

	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("menutengah", ['id_menutengah' => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("menutengah/index"));
	}
}
