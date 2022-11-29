<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Faqs extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		$data = [
			"title" => "faqs",
			'data' => dbget("faqs")->result_array()
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('faqs/index', $data);
		view('templates/footer');
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("text_faqs", "Text Faqs", "required");
		set_rules("answer_faqs", "Answer Faqs", "required");
		set_rules("sort_faqs", "Sort Faqs", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "faqs"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('faqs/tambah');
			view('templates/footer');
		} else {
			$data = [
				"text_faqs" => post("text_faqs"),
				"answer_faqs" => post("answer_faqs"),
				"sort_faqs" => post("sort_faqs"),
				"is_active" => (post('is_active') == "1") ? "1" : "0",
			];
			dbinsert("faqs", $data);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Dimasukan', 'success')</script>");
			redirect(base_url("faqs/index"));
		}
	}

	public function update($id)
	{
		check_rule(false, "is_update", true);
		set_rules("text_faqs", "Text Faqs", "required");
		set_rules("answer_faqs", "Answer Faqs", "required");
		set_rules("sort_faqs", "Sort Faqs", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "faqs",
				"data" => dbgetwhere("faqs", ["id_faqs" => $id])->row_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('faqs/update', $data);
			view('templates/footer');
		} else {
			$data = [
				"text_faqs" => post("text_faqs"),
				"answer_faqs" => post("answer_faqs"),
				"sort_faqs" => post("sort_faqs"),
				"is_active" => (post('is_active') == "1") ? "1" : "0",
			];
			dbupdate("faqs", $data, ["id_faqs" => $id]);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Diubah', 'success')</script>");
			redirect(base_url("faqs/index"));
		}
	}
	
	


	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("faqs", ['id_faqs' => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("faqs/index"));
	}
}
