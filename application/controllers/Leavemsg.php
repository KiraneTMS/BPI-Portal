<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Leavemsg extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		$this->db->order_by('id_leavemsg', 'desc');
		$data = dbget("leavemsg")->result_array();
		$data = [
			"title" => "Pesan",
			'data' => $data
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('leavemsg/index', $data);
		view('templates/footer');
	}

	public function tambah()
	{
		set_rules("nama_leavemsg", "nama", "required");
		set_rules("email_leavemsg", "email", "required");
		set_rules("no_leavemsg", "no hp", "required");
		set_rules("msg_leavemsg", "msg", "required");

		if ($this->form_validation->run() == False) {
			$data = [
				'locate' => "#leavemsg"
			];
			view('landing/index',$data);
		} else {
			$data = [
				"nama_leavemsg" => post('nama_leavemsg'),
				"email_leavemsg" => post('email_leavemsg'),
				"no_leavemsg" => post('no_leavemsg'),
				"msg_leavemsg" => post('msg_leavemsg'),
			];
			dbinsert("leavemsg", $data);
			set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Dimasukan', 'success')</script>");
			redirect(base_url());
		}
	}

	public function approve($id)
	{
		check_rule(false, "is_update", true);
		$data = [
			"approve_leavemsg" => "2"
		];
		dbupdate("leavemsg", $data, ["id_leavemsg" => $id]);
		set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Diupdate', 'success')</script>");
		redirect(base_url("leavemsg/index"));
	}

	public function reject($id)
	{
		check_rule(false, "is_update", true);
		$data = [
			"approve_leavemsg" => "1"
		];
		dbupdate("leavemsg", $data, ["id_leavemsg" => $id]);
		set_flashdata("msg", "<script>Swal.fire('Success','Data Berhasil Diupdate', 'success')</script>");
		redirect(base_url("leavemsg/index"));
	}


}
