<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Articles extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		$data = [
			"title" => "articles",
			'data' => dbget("articles")->result_array()
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('articles/index', $data);
		view('templates/footer');
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("title_articles", "title articles", "required");
		set_rules("content_articles", "content articles", "required");
		set_rules("tanggal_articles", "tanggal articles", "required");
		set_rules("keyword_articles", "keyword articles", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "articles"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('articles/tambah');
			view('templates/footer');
		} else {
			$data = [
				"title_articles" => post('title_articles'),
				"content_articles" => post('content_articles'),
				"tanggal_articles" => post('tanggal_articles'),
				"keyword_articles" => post('keyword_articles'),
				"image_articles" => fileupload('image_articles'),
				"aktif_articles" => (post('aktif_articles') == "1") ? "1" : "0",
			];
			dbinsert("articles", $data);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Dimasukan', 'success')</script>");
			redirect(base_url("articles/index"));
		}
	}
	
	public function update($id)
	{
		check_rule(false, "is_update", true);
		set_rules("title_articles", "title articles", "required");
		set_rules("content_articles", "content articles", "required");
		set_rules("tanggal_articles", "tanggal articles", "required");
		set_rules("keyword_articles", "keyword articles", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "articles",
				'data' => dbgetwhere("articles", ["id_articles" => $id])->row_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('articles/update', $data);
			view('templates/footer');
		} else {
			$data = [
				"title_articles" => post('title_articles'),
				"content_articles" => post('content_articles'),
				"tanggal_articles" => post('tanggal_articles'),
				"keyword_articles" => post('keyword_articles'),
				"image_articles" => fileupload('image_articles'),
				"aktif_articles" => (post('aktif_articles') == "1") ? "1" : "0",
			];
			dbupdate("articles", $data, ["id_articles" => $id]);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Diupdate', 'success')</script>");
			redirect(base_url("articles/index"));
		}
	}


	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("articles", ['id_articles' => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("articles/index"));
	}
}
