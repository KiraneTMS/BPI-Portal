<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Mata_uang extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		$data = [
			"title" => "mata_uang",
			'data' => dbget("tb_mata_uang")->result_array()
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('mata_uang/index', $data);
		view('templates/footer');
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("nama_mata_uang", "nama mata_uang", "required");
		set_rules("simbol_mata_uang", "simbol mata_uang", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "mata_uang"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('mata_uang/tambah');
			view('templates/footer');
		} else {
			$data = [
				"nama_mata_uang" => post("nama_mata_uang"),
				"simbol_mata_uang" => post("simbol_mata_uang"),
				"status_mata_uang" => (post('status_mata_uang') == "1") ? "1" : "0",
			];
			dbinsert("tb_mata_uang", $data);
			set_flashdata("msg", swalfire('Data Berhasil Dimasukan'));
			redirect(base_url("mata_uang/index"));
		}
	}

	public function update($id_mata_uang)
	{
		check_rule(false, "is_update", true);
		set_rules("nama_mata_uang", "nama mata_uang", "required");
		set_rules("simbol_mata_uang", "simbol mata_uang", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "mata_uang",
				'data' => dbgetwhere("tb_mata_uang", ["id_mata_uang" => $id_mata_uang])->row_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('mata_uang/update', $data);
			view('templates/footer');
		} else {
			$data = [
				"nama_mata_uang" => post("nama_mata_uang"),
				"simbol_mata_uang" => post("simbol_mata_uang"),
				"status_mata_uang" => (post('status_mata_uang') == "1") ? "1" : "0",
			];
			dbupdate("tb_mata_uang", $data, ["id_mata_uang" => $id_mata_uang]);
			set_flashdata("msg", swalfire('Data Berhasil Diupdate'));
			redirect(base_url("mata_uang/index"));
		}
	}
	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("tb_mata_uang", ["id_mata_uang" => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("mata_uang/index"));
	}
}
