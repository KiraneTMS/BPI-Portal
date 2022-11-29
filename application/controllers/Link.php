<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Link extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		$this->db->order_by('id_link', 'desc');
		$link = $this->db->get("link")->result_array();
		$data = [
			"title" => "link",
			'data' => $link
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('link/index', $data);
		view('templates/footer');
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("nama_link", "nama link", "required");
		set_rules("url_link", "url link", "required");
		set_rules("sort_link", "Sort link", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "link"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('link/tambah');
			view('templates/footer');
		} else {
			$data = [
				"nama_link" => post("nama_link"),
				"url_link" => post("url_link"),
				"sort_link" => post("sort_link"),
			];
			dbinsert("link", $data);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Dimasukan', 'success')</script>");
			redirect(base_url("link/index"));
		}
	}	
	public function update($id)
	{
		check_rule(false, "is_update", true);
		set_rules("nama_link", "nama link", "required");
		set_rules("url_link", "url link", "required");
		set_rules("sort_link", "Sort link", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "link",
				'data' => dbgetwhere("link", ["id_link" => $id])->row_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('link/update', $data);
			view('templates/footer');
		} else {
			$data = [
				"nama_link" => post("nama_link"),
				"url_link" => post("url_link"),
				"sort_link" => post("sort_link"),
			];
			dbupdate("link", $data, ["id_link" => $id]);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Diupdate', 'success')</script>");
			redirect(base_url("link/index"));
		}
	}	
	


	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("link", ['id_link' => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("link/index"));
	}
}
