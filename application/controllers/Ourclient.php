<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Ourclient extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		$data = [
			"title" => "ourclient",
			'data' => dbget("ourclient")->result_array()
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('ourclient/index', $data);
		view('templates/footer');
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("validation", "validation", "required");
		if (isset($_FILES['image_ourclient']['name'])) {
			if ($_FILES['image_ourclient']['name'] == "") {
				set_rules("image_ourclient", "Image ourclient", "required");
			}
		}
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "ourclient"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('ourclient/tambah');
			view('templates/footer');
		} else {
			$data = [
				"image_ourclient" => fileupload('image_ourclient'),
			];
			dbinsert("ourclient", $data);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Dimasukan', 'success')</script>");
			redirect(base_url("ourclient/index"));
		}
	}

	public function update($id)
	{
		check_rule(false, "is_update", true);
		
		$data = dbgetwhere("ourclient", ["id_ourclient" => $id])->row_array();
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "ourclient",
				"data" => $data
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('ourclient/update', $data);
			view('templates/footer');
		} else {
			$data = [
				"image_ourclient" => fileupload('image_ourclient', $data['image_ourclient']),
			];
			dbupdate("ourclient", $data, ["id_ourclient" => $id]);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Diupdate', 'success')</script>");
			redirect(base_url("ourclient/index"));
		}
	}


	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("ourclient", ['id_ourclient' => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("ourclient/index"));
	}
}
