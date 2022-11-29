<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Address extends CI_Controller {

	// public function __construct()
	// {
	// 	parent::__construct();
	// 	$this->load->model("AddressModel");
	// }

	public function index()
	{
		check_rule(false,"is_read",true);

		$data = [
			"title" => "Dashboard",
			'data' => dbgetwhere('address', ['id_user' => userdata('id_user')])->result_array()
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('address/index');
		view('templates/footer');
	}

	// public function datatable()
	// {
	// 	check_rule(false,"is_read",true);

	// 	foreach ($this->AddressModel->datatable() as $key) {
	// 		$data = [];
	// 		$data[] = ($order_column && $order_dir) ? $i++ : $i--;
	// 		$data[] = $key['NamaBarang'];
	// 		$data[] = $key['SatuanBarang'];
	// 		$data[] = $key['StokBarang'];
	// 		$data[] = $key['KategoriBarang'];
	// 		$data[] = $key['StatusBarang'];
	// 		$action = '';
	// 		if (check_rule(false,"is_update")) {
	// 			$action .= '<a href="'.base_url("address/update/".$key['BarangID']).'" class="badge badge-dark">
	// 							<i class="mt-1 mr-1 mb-1 ml-1 fas fa-edit"></i>
	// 						</a>&nbsp';	
	// 		}
	// 		if (check_rule(false,"is_delete")) {
	// 			$action .= '<a href="#" data-href="'.base_url("address/delete/".$key['BarangID']).'" class="badge badge-danger" data-toggle="modal" data-target="#confirm-delete">
	// 							<i class="mt-1 mr-1 mb-1 ml-1 fas fa-trash"></i>
	// 						</a>';
	// 		}
	// 		$data[] = $action;
	// 		array_push($show, $data);
	// 	}

	// 	$data = [
	// 		"draw" => post("draw"),
	// 		"data" => $show,
	// 		"recordsFiltered" => $this->AddressModel->get_filtered_data(),
	// 		"recordsTotal" => $this->AddressModel->get_all_data()
	// 	];
	// 	echo json_encode($data, JSON_PRETTY_PRINT);
	// 	// echo json_encode($_POST, JSON_PRETTY_PRINT);
	// }
	
	public function add()
	{
		check_rule(false,"is_create",true);

		set_rules("name", "name", "required");
		set_rules("address", "address", "required|is_unique[address.address]");
		set_rules("private_key", "private_key", "required");	


		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "Dashboard"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('address/add');
			view('templates/footer');	
		} else {
			$data = [
				'id_user' => userdata('id_user'),
				'name' => post('name'),
				'address' => post('address'),
				'private_key' => post('private_key'),
			];
			dbinsert('address',$data);
			set_flashdata("msg", swalfire('Wallet Data Successfully Added'));
			redirect(base_url("address/index"));
		}
	}
	
	// public function update($id)
	// {
	// 	check_rule(false,"is_update",true);

	// 	set_rules("name", "name", "required");
	// 	set_rules("address", "address", "required|is_unique[address.address]");
	// 	set_rules("private_key", "private_key", "required");	


	// 	if ($this->form_validation->run() == False) {
	// 		$data = [
	// 			"title" => "Dashboard",
	// 			'data' => dbgetwhere('address', ['id_user' => userdata('id_user'), 'id_address' => $id])->row_array()
	// 		];
	// 		view('templates/header', $data);
	// 		view('templates/sidebar');
	// 		view('templates/topbar');
	// 		view('address/update', $data);
	// 		view('templates/footer');	
	// 	} else {
	// 		$data = [
	// 			'id_user' => userdata('id_user'),
	// 			'name' => post('name'),
	// 			'address' => post('address'),
	// 			'private_key' => post('private_key'),
	// 		];
	// 		dbupdate('address', $data, ['id_address' => $id, 'id_user' => userdata('id_user')]);
	// 		set_flashdata("msg", swalfire('Wallet Data Successfully Updates'));
	// 		redirect(base_url("address/index"));
	// 	}
	// }

	// public function delete($id)
	// {
	// 	check_rule(false,"is_delete",true);

	// 	$this->AddressModel->delete(['BarangID' => $id]);
	// 	set_flashdata("msg", swalfire('Wallet Data Successfully Deleted'));
	// 	redirect(base_url("address/index"));
	// }

}
