<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Testimonial extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		$data = [
			"title" => "testimonial",
			'data' => dbget("testimonial")->result_array()
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('testimonial/index', $data);
		view('templates/footer');
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("nama_testimonial", "nama", "required");
		set_rules("job_testimonial", "job", "required");
		set_rules("text_testimonial", "text", "required");
		if (isset($_FILES['image_testimonial']['name'])) {
			if ($_FILES['image_testimonial']['name'] == "") {
				set_rules("image_testimonial", "image", "required");
			}
		}

		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "testimonial"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('testimonial/tambah');
			view('templates/footer');
		} else {
			$data = [
				"nama_testimonial" => post('nama_testimonial'),
				"job_testimonial" => post('job_testimonial'),
				"text_testimonial" => post('text_testimonial'),
				"image_testimonial" => fileupload('image_testimonial'),
			];
			dbinsert("testimonial", $data);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Dimasukan', 'success')</script>");
			redirect(base_url("testimonial/index"));
		}
	}

	public function update($id)
	{
		check_rule(false, "is_update", true);
		set_rules("nama_testimonial", "nama", "required");
		set_rules("job_testimonial", "job", "required");
		set_rules("text_testimonial", "text", "required");

		$data = dbgetwhere("testimonial", ["id_testimonial" => $id])->row_array();
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "testimonial",
				"data" => $data
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('testimonial/update', $data);
			view('templates/footer');
		} else {
			$data = [
				"nama_testimonial" => post('nama_testimonial'),
				"job_testimonial" => post('job_testimonial'),
				"text_testimonial" => post('text_testimonial'),
				"image_testimonial" => fileupload('image_testimonial', $data['image_testimonial']),
			];
			dbupdate("testimonial", $data, ["id_testimonial" => $id]);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Diupdate', 'success')</script>");
			redirect(base_url("testimonial/index"));
		}
	}



	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("testimonial", ['id_testimonial' => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("testimonial/index"));
	}
}
