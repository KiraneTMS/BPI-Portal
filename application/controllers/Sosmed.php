<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Sosmed extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		$data = [
			"title" => "sosmed",
			'data' => dbget("sosmed")->result_array()
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('sosmed/index', $data);
		view('templates/footer');
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("nama_sosmed", "nama sosmed", "required");
		set_rules("logo_sosmed", "logo sosmed", "required");
		set_rules("link_sosmed", "link sosmed", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "sosmed"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('sosmed/tambah');
			view('templates/footer');
		} else {
			$data = [
				"nama_sosmed" => post('nama_sosmed'),
				"logo_sosmed" => post('logo_sosmed'),
				"link_sosmed" => post('link_sosmed'),
				"sort_sosmed" => post('sort_sosmed')
			];
			dbinsert("sosmed", $data);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Dimasukan', 'success')</script>");
			redirect(base_url("sosmed/index"));
		}
	}

	public function update($id)
	{
		check_rule(false, "is_update", true);
		set_rules("nama_sosmed", "nama sosmed", "required");
		set_rules("logo_sosmed", "logo sosmed", "required");
		set_rules("link_sosmed", "link sosmed", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "sosmed",
				'data' => dbgetwhere("sosmed", ["id_sosmed" => $id])->row_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('sosmed/update', $data);
			view('templates/footer');
		} else {
			$data = [
				"nama_sosmed" => post('nama_sosmed'),
				"logo_sosmed" => post('logo_sosmed'),
				"link_sosmed" => post('link_sosmed'),
				"sort_sosmed" => post('sort_sosmed')
			];
			dbupdate("sosmed", $data, ["id_sosmed" => $id]);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Diupdate', 'success')</script>");
			redirect(base_url("sosmed/index"));
		}
	}
	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("sosmed", ['id_sosmed' => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("sosmed/index"));
	}
}
