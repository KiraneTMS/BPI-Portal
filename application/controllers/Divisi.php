<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Divisi extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		$data = [
			"title" => "divisi",
			'data' => dbget("tb_divisi")->result_array()
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('divisi/index', $data);
		view('templates/footer');
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("nama_divisi", "nama divisi", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "divisi"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('divisi/tambah');
			view('templates/footer');
		} else {
			$data = [
				"nama_divisi" => post("nama_divisi"),
				"status_divisi" => (post('status_divisi') == "1") ? "1" : "0",
			];
			dbinsert("tb_divisi", $data);
			set_flashdata("msg", swalfire('Data Berhasil Dimasukan'));
			redirect(base_url("divisi/index"));
		}
	}

	public function update($id_divisi)
	{
		check_rule(false, "is_update", true);
		set_rules("nama_divisi", "nama divisi", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "divisi",
				'data' => dbgetwhere("tb_divisi", ["id_divisi" => $id_divisi])->row_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('divisi/update', $data);
			view('templates/footer');
		} else {
			$data = [
				"nama_divisi" => post("nama_divisi"),
				"status_divisi" => (post('status_divisi') == "1") ? "1" : "0",
			];
			dbupdate("tb_divisi", $data, ["id_divisi" => $id_divisi]);
			set_flashdata("msg", swalfire('Data Berhasil Diupdate'));
			redirect(base_url("divisi/index"));
		}
	}
	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("tb_divisi", ["id_divisi" => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("divisi/index"));
	}
}
