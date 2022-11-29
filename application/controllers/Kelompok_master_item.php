<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kelompok_master_item extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		$data = [
			"title" => "kelompok_master_item",
			'data' => dbget("tb_kelompok_master_item")->result_array()
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('kelompok_master_item/index', $data);
		view('templates/footer');
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("nama_kelompok_master_item", "nama kelompok_master_item", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "kelompok_master_item"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('kelompok_master_item/tambah');
			view('templates/footer');
		} else {
			$data = [
				"nama_kelompok_master_item" => post("nama_kelompok_master_item"),
				"status_kelompok_master_item" => (post('status_kelompok_master_item') == "1") ? "1" : "0",
			];
			dbinsert("tb_kelompok_master_item", $data);
			set_flashdata("msg", swalfire('Data Berhasil Dimasukan'));
			redirect(base_url("kelompok_master_item/index"));
		}
	}

	public function update($id_kelompok_master_item)
	{
		check_rule(false, "is_update", true);
		set_rules("nama_kelompok_master_item", "nama kelompok_master_item", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "kelompok_master_item",
				'data' => dbgetwhere("tb_kelompok_master_item", ["id_kelompok_master_item" => $id_kelompok_master_item])->row_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('kelompok_master_item/update', $data);
			view('templates/footer');
		} else {
			$data = [
				"nama_kelompok_master_item" => post("nama_kelompok_master_item"),
				"status_kelompok_master_item" => (post('status_kelompok_master_item') == "1") ? "1" : "0",
			];
			dbupdate("tb_kelompok_master_item", $data, ["id_kelompok_master_item" => $id_kelompok_master_item]);
			set_flashdata("msg", swalfire('Data Berhasil Diupdate'));
			redirect(base_url("kelompok_master_item/index"));
		}
	}
	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("tb_kelompok_master_item", ["id_kelompok_master_item" => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("kelompok_master_item/index"));
	}
}
