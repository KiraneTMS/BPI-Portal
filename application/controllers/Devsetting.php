<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Devsetting extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		// $this->load->model("BlokModel");
	}

	public function index()
	{
		check_rule(false,"is_read",true);

		$data = [
			"title" => "Dashboard",
			'data' => dbget("devsetting")->result_array()
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('devsetting/index', $data);
		view('templates/footer');
	}
	
	public function tambah()
	{
		check_rule(false,"is_create",true);
		set_rules("devkey", "devkey", "required");
		set_rules("devvalue", "devvalue", "required");
		set_rules("ket", "ket", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "Dashboard"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('devsetting/tambah');
			view('templates/footer');	
		} else {
			$data = [
				"devkey" => post('devkey'),
				"devvalue" => post('devvalue'),
				"ket" => post('ket')
			];
			dbinsert("devsetting", $data);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Blok Berhasil Dimasukan', 'success')</script>");
			redirect(base_url("devsetting/index"));
		}
	}
	
	public function update($id)
	{
		check_rule(false,"is_update",true);
		set_rules("devkey", "devkey", "required");
		set_rules("devvalue", "devvalue", "required");
		set_rules("ket", "ket", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "Dashboard",
				"data" => dbgetwhere("devsetting", ['id' => $id])->row_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('devsetting/update', $data);
			view('templates/footer');	
		} else {
			$data = [
				"devkey" => post('devkey'),
				"devvalue" => post('devvalue'),
				"ket" => post('ket')
			];
			dbupdate("devsetting", $data, ['id' => $id]);
			set_flashdata("msg", swalfire('Data Blok Berhasil Diubah', 'success'));
			redirect(base_url("devsetting/index"));
		}
	}
	public function delete($id)
	{
		check_rule(false,"is_delete",true);
		dbdelete("devsetting", ['id' => $id]);
		set_flashdata("msg", swalfire('Data Blok Berhasil Dihapus', 'success'));
		redirect(base_url("devsetting/index"));
	}

}
