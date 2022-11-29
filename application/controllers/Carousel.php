<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Carousel extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		$data = [
			"title" => "Carousel",
			'data' => dbget("carousel")->result_array()
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('carousel/index', $data);
		view('templates/footer');
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("subtitle_carousel", "Subtitle Carousel", "required");
		set_rules("title_carousel", "Title Carousel", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "Carousel"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('carousel/tambah');
			view('templates/footer');
		} else {
			$data = [
				"subtitle_carousel" => post('subtitle_carousel'),
				"title_carousel" => post('title_carousel'),
				"image_carousel" => fileupload('image_carousel'),
				"aktif_carousel" => (post('aktif_carousel') == "1") ? "1" : "0",
			];
			dbinsert("carousel", $data);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Dimasukan', 'success')</script>");
			redirect(base_url("carousel/index"));
		}
	}

	public function update($id)
	{
		check_rule(false, "is_update", true);
		set_rules("subtitle_carousel", "Subtitle Carousel", "required");
		set_rules("title_carousel", "Title Carousel", "required");
		
		$data = dbgetwhere("carousel", ["id_carousel" => $id])->row_array();
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "Carousel",
				"data" => $data
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('carousel/update');
			view('templates/footer');
		} else {
			$data = [
				"subtitle_carousel" => post('subtitle_carousel'),
				"title_carousel" => post('title_carousel'),
				"image_carousel" => fileupload('image_carousel', $data['image_carousel']),
				"aktif_carousel" => (post('aktif_carousel') == "1") ? "1" : "0",
			];
			dbupdate("carousel", $data, ["id_carousel" => $id]);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Diupdate', 'success')</script>");
			redirect(base_url("carousel/index"));
		}
	}


	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("carousel", ['id_carousel' => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("carousel/index"));
	}
}
