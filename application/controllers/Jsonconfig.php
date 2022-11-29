<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Jsonconfig extends CI_Controller {

	// public function __construct()
	// {
	// 	parent::__construct();
	// 	$this->load->model("AddressModel");
	// }

	public function index()
	{
		check_rule(false,"is_read",true);

		dbjoin('address', 'address.id_address = config_order.id_wallet');
		$config = dbgetwhere('config_order', ['config_order.id_user' => userdata('id_user')])->result_array();
		$data = [
			"title" => "Dashboard",
			'data' => $config
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('jsonconfig/index');
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

		set_rules("id_wallet", "Wallet", "required|numeric", ['numeric' => "The Wallet field is required"]);
		set_rules("token_address", "Token address", "required");
		set_rules("trigger_value", "Trigger value", "required");
		set_rules("reward_low", "Reward Low", "required");
		set_rules("reward_high", "Reward High", "required");
		set_rules("gas_price", "Gas Price", "required");
		set_rules("gas_limit", "Gas Limit", "required");
		set_rules("slipage", "Slipage", "required");


		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "Dashboard",
				"wallet" => dbgetwhere('address', ['id_user' => userdata('id_user')])->result_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('jsonconfig/add');
			view('templates/footer');	
		} else {
			$wallet = dbgetwhere('address', ['id_address' => post('id_wallet'), "id_user" => userdata('id_user')])->row_array();
			if (!$wallet) {
				set_flashdata('msg', swalfire('Sabotage Detected', 'error'));
				redirect(base_url('jsonconfig'));
			}
			$data = [
				'id_user' => userdata('id_user'),
				'id_wallet' => $wallet['id_address'],
				'token_address' => post('token_address'),
				'trigger_value' => post('trigger_value'),
				'reward_low' => post('reward_low'),
				'reward_high' => post('reward_high'),
				'gas_price' => post('gas_price'),
				'gas_limit' => post('gas_limit'),
				'slipage' => post('slipage'),
			];
			dbinsert('config_order',$data);
			set_flashdata("msg", swalfire('Config Data Successfully Added'));
			redirect(base_url("jsonconfig/index"));
		}
	}
	
	
	public function update($id)
	{
		check_rule(false,"is_update",true);

		set_rules("id_wallet", "Wallet", "required|numeric", ['numeric' => "The Wallet field is required"]);
		set_rules("token_address", "Token address", "required");
		set_rules("trigger_value", "Trigger value", "required");
		set_rules("reward_low", "Reward Low", "required");
		set_rules("reward_high", "Reward High", "required");
		set_rules("gas_price", "Gas Price", "required");
		set_rules("gas_limit", "Gas Limit", "required");
		set_rules("slipage", "Slipage", "required");


		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "Dashboard",
				"wallet" => dbgetwhere('address', ['id_user' => userdata('id_user')])->result_array(),
				"data" => dbgetwhere('config_order', ['id_config_order' => $id,'id_user' => userdata('id_user')])->row_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('jsonconfig/update');
			view('templates/footer');	
		} else {
			$wallet = dbgetwhere('address', ['id_address' => post('id_wallet'), "id_user" => userdata('id_user')])->row_array();
			if (!$wallet) {
				set_flashdata('msg', swalfire('Sabotage Detected', 'error'));
				redirect(base_url('jsonconfig'));
			}
			$data = [
				'id_user' => userdata('id_user'),
				'id_wallet' => $wallet['id_address'],
				'token_address' => post('token_address'),
				'trigger_value' => post('trigger_value'),
				'reward_low' => post('reward_low'),
				'reward_high' => post('reward_high'),
				'gas_price' => post('gas_price'),
				'gas_limit' => post('gas_limit'),
				'slipage' => post('slipage'),
			];
			dbupdate('config_order',$data,['id_config_order' => $id]);
			set_flashdata("msg", swalfire('Config Data Successfully Updated'));
			redirect(base_url("jsonconfig/index"));
		}
	}
	
	public function delete($id)
	{
		check_rule(false,"is_delete",true);

		dbdelete('config_order', ['id_config_order' => $id, 'id_user' => userdata('id_user')]);
		set_flashdata("msg", swalfire('Config Data Successfully Deleted'));
		redirect(base_url("jsonconfig/index"));
	}

}
