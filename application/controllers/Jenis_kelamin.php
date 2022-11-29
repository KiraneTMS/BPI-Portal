<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Jenis_kelamin extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		$data = [
			"title" => "jenis_kelamin",
			'data' => dbget("tb_jenis_kelamin")->result_array()
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('jenis_kelamin/index', $data);
		view('templates/footer');
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("nama_jenis_kelamin", "nama jenis_kelamin", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "jenis_kelamin"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('jenis_kelamin/tambah');
			view('templates/footer');
		} else {
			$data = [
				"nama_jenis_kelamin" => post("nama_jenis_kelamin"),
				"status_jenis_kelamin" => (post('status_jenis_kelamin') == "1") ? "1" : "0",
			];
			dbinsert("tb_jenis_kelamin", $data);
			set_flashdata("msg", swalfire('Data Berhasil Dimasukan'));
			redirect(base_url("jenis_kelamin/index"));
		}
	}

	public function update($id_jenis_kelamin)
	{
		check_rule(false, "is_update", true);
		set_rules("nama_jenis_kelamin", "nama jenis_kelamin", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "jenis_kelamin",
				'data' => dbgetwhere("tb_jenis_kelamin", ["id_jenis_kelamin" => $id_jenis_kelamin])->row_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('jenis_kelamin/update', $data);
			view('templates/footer');
		} else {
			$data = [
				"nama_jenis_kelamin" => post("nama_jenis_kelamin"),
				"status_jenis_kelamin" => (post('status_jenis_kelamin') == "1") ? "1" : "0",
			];
			dbupdate("tb_jenis_kelamin", $data, ["id_jenis_kelamin" => $id_jenis_kelamin]);
			set_flashdata("msg", swalfire('Data Berhasil Diupdate'));
			redirect(base_url("jenis_kelamin/index"));
		}
	}
	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("tb_jenis_kelamin", ["id_jenis_kelamin" => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("jenis_kelamin/index"));
	}
}
