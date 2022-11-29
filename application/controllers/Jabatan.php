<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Jabatan extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		$data = [
			"title" => "jabatan",
			'data' => dbget("tb_jabatan")->result_array()
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('jabatan/index', $data);
		view('templates/footer');
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("nama_jabatan", "nama jabatan", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "jabatan"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('jabatan/tambah');
			view('templates/footer');
		} else {
			$data = [
				"nama_jabatan" => post("nama_jabatan"),
				"status_jabatan" => (post('status_jabatan') == "1") ? "1" : "0",
			];
			dbinsert("tb_jabatan", $data);
			set_flashdata("msg", swalfire('Data Berhasil Dimasukan'));
			redirect(base_url("jabatan/index"));
		}
	}

	public function update($id_jabatan)
	{
		check_rule(false, "is_update", true);
		set_rules("nama_jabatan", "nama jabatan", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "jabatan",
				'data' => dbgetwhere("tb_jabatan", ["id_jabatan" => $id_jabatan])->row_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('jabatan/update', $data);
			view('templates/footer');
		} else {
			$data = [
				"nama_jabatan" => post("nama_jabatan"),
				"status_jabatan" => (post('status_jabatan') == "1") ? "1" : "0",
			];
			dbupdate("tb_jabatan", $data, ["id_jabatan" => $id_jabatan]);
			set_flashdata("msg", swalfire('Data Berhasil Diupdate'));
			redirect(base_url("jabatan/index"));
		}
	}
	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("tb_jabatan", ["id_jabatan" => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("jabatan/index"));
	}
}
