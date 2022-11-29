<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class user extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model("UserModel");
	}

	public function index()
	{
		check_rule(false,"is_read",true);

		dbjoin("role", "role.IDRole = user.IDRole");
		// dbrel("tb_perusahaan", "user","id_perusahaan");
		// dbrel("tb_karyawan", "user","id_karyawan");
		$user = dbgetwhere("user", ['IsAktifUser' => 1])->result_array();
		$data = [
			"title" => "Dashboard",
			"data" => $user
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('user/index', $data);
		view('templates/footer');
	}

	// public function ajax_user()
	// {
	// 	$show = [];
		
	// 	$i = post("start") + 1;
	// 	foreach ($this->UserModel->datatable() as $key) {
	// 		$data = [];
	// 		$data[] = $i++;
	// 		$data[] = $key['Username'];
	// 		$data[] = $this->db->get_where("role", ['IDRole' => $key['IDRole']])->row_array()['NamaRole'];
	// 		$data[] = '<a href="'.base_url("user/update/".$key['IDUser']).'" class="badge badge-dark">
	// 		<i class="mt-1 mr-1 mb-1 ml-1 fas fa-edit"></i>
	// 	</a>&nbsp
	// 	<a href="#" data-href="'.base_url("user/delete/".$key['IDUser']).'" class="badge badge-danger" data-toggle="modal" data-target="#confirm-delete">
	// 		<i class="mt-1 mr-1 mb-1 ml-1 fas fa-trash"></i>
	// 	</a>';
	// 		array_push($show, $data);
	// 	}

	// 	$data = [
	// 		"draw" => post("draw"),
	// 		"data" => $show,
	// 		"recordsFiltered" => $this->UserModel->get_filtered_data(),
	// 		"recordsTotal" => $this->UserModel->get_all_data()
	// 	];
	// 	echo json_encode($data, JSON_PRETTY_PRINT);
	// 	// echo json_encode($_POST, JSON_PRETTY_PRINT);
	// }
	
	public function tambah()
	{
		check_rule(false,"is_create",true);

		// set_rules('id_perusahaan', "id_perusahaan", 'required');
		// set_rules('id_karyawan', "id_karyawan", 'required');
		set_rules("Name", "Name", "required");
		set_rules("Email", "Email", "required|valid_email");
		set_rules("Password", "Password", "required|min_length[6]");
		set_rules("IDRole", "ID Role", "required|numeric");

		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "Dashboard",
				"role" => $this->db->get("role")->result_array(),
				// 'perusahaan' => $this->db->get('tb_perusahaan')->result_array(),
				// 'karyawan' => $this->db->get('tb_karyawan')->result_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('user/tambah', $data);
			view('templates/footer');	
		} else {
			$data = [
				"Name" => post("Name"),
				"Email" => post("Email"),
				"Password" => password_hash(post("Password"), PASSWORD_DEFAULT),
				// "id_perusahaan" => post("id_perusahaan"),
				// "id_karyawan" => post("id_karyawan"),
				"IDRole" => post("IDRole"),
				"IsAktifUser" => 1
			];
			dbinsert("user", $data);
			set_flashdata("msg", swalfire("Data User Berhasil Dimasukan", "success"));
			redirect(base_url("user/index"));
		}
	}

	public function update($id)
	{
		check_rule(false,"is_update",true);

		// set_rules('id_perusahaan', "id_perusahaan", 'required');
		// set_rules('id_karyawan', "id_karyawan", 'required');
		set_rules("Name", "Name", "required");
		// set_rules("Email", "Email", "required|valid_email");
		set_rules("Password", "Password", "min_length[6]");
		set_rules("IDRole", "ID Role", "required|numeric");

		$data = $this->db->get_where("user", ['IDUser' => $id])->row_array();
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "Dashboard",
				"role" => $this->db->get("role")->result_array(),
				'user' => $this->db->get_where("user", ['IDUser' => $id])->row_array(),
				// 'perusahaan' => $this->db->get('tb_perusahaan')->result_array(),
				// 'karyawan' => $this->db->get('tb_karyawan')->result_array(),
				"data" => $data
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('user/update', $data);
			view('templates/footer');	
		} else {
			$data = [
				"Name" => post("Name"),
				"Email" => $data['Email'],
				"Password" => (post("Password") != "") ? password_hash(post("Password"), PASSWORD_DEFAULT) : $data['Password'],
				// "id_perusahaan" => post("id_perusahaan"),
				// "id_karyawan" => post("id_karyawan"),
				"IDRole" => post("IDRole"),
				"IsAktifUser" => 1
			];
			dbupdate("user", $data, ['IDUser' => $id]);
			set_flashdata("msg", swalfire("Data User Berhasil Diupdate", "success"));
			redirect(base_url("user/index"));
		}
	}

	public function delete($id)
	{
		check_rule(false,"is_delete",true);

		dbdelete("user", ['IDUser' => $id]);
		set_flashdata("msg", swalfire('Data User Berhasil Dihapus', 'success'));
		redirect(base_url("user/index"));
	}

}
