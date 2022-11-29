<?php
defined('BASEPATH') or exit('No direct script access allowed');

class halaman extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		$data = [
			"title" => "halaman",
			'data' => dbget("halaman")->result_array()
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('halaman/index', $data);
		view('templates/footer');
	}

	public function detail($id_halaman)
	{
		dborderby('sort_menulanding', 'ASC');
		$menu = dbgetwhere('menulanding', ['status_menulanding' => 1, "level_menulanding" => "1"])->result_array();
		$carousel = dbgetwhere('carousel', ['aktif_carousel' => 1])->result_array();
		$faqs = dbgetwhere('faqs', ['is_active' => 1])->result_array();
		$articles = dbgetwhere('articles', ['aktif_articles' => 1])->result_array();
		$testimonials = dbget('testimonial')->result_array();
		$ourclients = dbget('ourclient')->result_array();
		dborderby("sort_link", "ASC");
		$link = dbget('link')->result_array();
		dbrel("halaman", 'menutengah', "id_halaman");
		$menutengah = dbget('menutengah')->result_array();
		dborderby("sort_sosmed", "ASC");
		$sosmed = dbget('sosmed')->result_array();
		$data = [
			'menu' => $menu,
			'carousel' => $carousel,
			'faqs' => $faqs,
			'articles' => $articles,
			'testimonials' => $testimonials,
			'ourclients' => $ourclients,
			'link' => $link,
			'menutengah' => $menutengah,
			'sosmed' => $sosmed,
			'data' => dbgetwhere("halaman", ['id_halaman' => $id_halaman])->row_array()
		];
		$data['title'] = $data['data']['title_halaman'];
		$data['content'] = rawview('landing/detail', $data);
		view('landing/template', $data);
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("title_halaman", "Title halaman", "required");
		set_rules("short_halaman", "short", "required");
		set_rules("content_halaman", "content", "required");
		if (isset($_FILES['image_halaman']['name'])) {
			if ($_FILES['image_halaman']['name'] == "") {
				set_rules("image_halaman", "content", "required");
			}
		}

		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "halaman"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('halaman/tambah');
			view('templates/footer');
		} else {
			$data = [
				"title_halaman" => post('title_halaman'),
				"image_halaman" => fileupload('image_halaman'),
				"short_halaman" => post('short_halaman'),
				"content_halaman" => post('content_halaman'),
				"meta_keyword_halaman" => post('meta_keyword_halaman'),
				"meta_desc_halaman" => post('meta_desc_halaman'),
				"aktif_halaman" => (post('aktif_halaman') == "1") ? "1" : "0",
			];
			dbinsert("halaman", $data);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Dimasukan', 'success')</script>");
			redirect(base_url("halaman/index"));
		}
	}

	public function update($id)
	{
		check_rule(false, "is_update", true);
		set_rules("title_halaman", "Title halaman", "required");
		set_rules("short_halaman", "short", "required");
		set_rules("content_halaman", "content", "required");

		$data = dbgetwhere('halaman', ['id_halaman' => $id])->row_array();
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "halaman",
				"data" => $data
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('halaman/update', $data);
			view('templates/footer');
		} else {
			$data = [
				"title_halaman" => post('title_halaman'),
				"image_halaman" => fileupload('image_halaman', $data['image_halaman']),
				"short_halaman" => post('short_halaman'),
				"content_halaman" => post('content_halaman'),
				"meta_keyword_halaman" => post('meta_keyword_halaman'),
				"meta_desc_halaman" => post('meta_desc_halaman'),
				"aktif_halaman" => (post('aktif_halaman') == "1") ? "1" : "0",
			];
			dbupdate("halaman", $data, ['id_halaman' => $id]);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Diupdate', 'success')</script>");
			redirect(base_url("halaman/index"));
		}
	}


	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("halaman", ['id_halaman' => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("halaman/index"));
	}
}
