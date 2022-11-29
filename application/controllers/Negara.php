<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Negara extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		$data = [
			"title" => "negara",
			'data' => dbget("tb_negara")->result_array()
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('negara/index', $data);
		view('templates/footer');
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("nama_negara", "nama negara", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "negara"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('negara/tambah');
			view('templates/footer');
		} else {
			$data = [
				"nama_negara" => post("nama_negara"),
				"status_negara" => (post('status_negara') == "1") ? "1" : "0",
			];
			dbinsert("tb_negara", $data);
			set_flashdata("msg", swalfire('Data Berhasil Dimasukan'));
			redirect(base_url("negara/index"));
		}
	}

	public function update($id_negara)
	{
		check_rule(false, "is_update", true);
		set_rules("nama_negara", "nama negara", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "negara",
				'data' => dbgetwhere("tb_negara", ["id_negara" => $id_negara])->row_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('negara/update', $data);
			view('templates/footer');
		} else {
			$data = [
				"nama_negara" => post("nama_negara"),
				"status_negara" => (post('status_negara') == "1") ? "1" : "0",
			];
			dbupdate("tb_negara", $data, ["id_negara" => $id_negara]);
			set_flashdata("msg", swalfire('Data Berhasil Diupdate'));
			redirect(base_url("negara/index"));
		}
	}
	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("tb_negara", ["id_negara" => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("negara/index"));
	}
}
