<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Customer extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		$data = [
			"title" => "customer",
			'data' => dbget("tb_customer")->result_array()
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('customer/index', $data);
		view('templates/footer');
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("nama_customer", "nama customer", "required");
		idx_customer	nama_customer	alamat_email	nomor_telepon	nomor_fax	alamat	propinsi	kota	kode_pos	negara	alamat_website	nomor_npwp	flag_status	
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "customer"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('customer/tambah');
			view('templates/footer');
		} else {
			$data = [
				"nama_customer" => post("nama_customer"),
				"status_customer" => (post('status_customer') == "1") ? "1" : "0",
			];
			dbinsert("tb_customer", $data);
			set_flashdata("msg", swalfire('Data Berhasil Dimasukan'));
			redirect(base_url("customer/index"));
		}
	}

	public function update($id_customer)
	{
		check_rule(false, "is_update", true);
		set_rules("nama_customer", "nama customer", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "customer",
				'data' => dbgetwhere("tb_customer", ["id_customer" => $id_customer])->row_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('customer/update', $data);
			view('templates/footer');
		} else {
			$data = [
				"nama_customer" => post("nama_customer"),
				"status_customer" => (post('status_customer') == "1") ? "1" : "0",
			];
			dbupdate("tb_customer", $data, ["id_customer" => $id_customer]);
			set_flashdata("msg", swalfire('Data Berhasil Diupdate'));
			redirect(base_url("customer/index"));
		}
	}
	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("tb_customer", ["id_customer" => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("customer/index"));
	}
}
