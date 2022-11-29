<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Bankdata_customer extends CI_Controller
{

	public function index()
	{
		check_rule(false, "is_read", true);

		$data = [
			"title" => "Bank Data Customer",
			// 'data' => dbget("bankdata_customer")->result_array()
			'data' => []
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('bankdata_customer/index', $data);
		view('templates/footer');
	}

	
	public function datatable()
	{
		check_rule(false, "is_read", true);

		loadmodel('Bankdata_customer_model');
		$show = [];
		$i = (post('order')[0]['column'] == 0) ? ((post('order')[0]['dir'] == "asc") ? post("start") + 1 : $this->Bankdata_customer_model->get_all_data() - post("start")) : "-";
		foreach ($this->Bankdata_customer_model->datatable() as $key) {
			$data = [];
			// $data[] = (post('order')[0]['column'] == 0) ? ((post('order')[0]['dir'] == "asc") ? $i++ : $i--) : "-";
			// $data[] = $key['no_tx_penjualan'];
			// $data[] = date("d-m-Y", strtotime($key['tanggal_transaksi_penjualan']));
			// $data[] = $key['nama_customer'];
			// $data[] = ($key['id_kontrak_customer'] == 0) ? "" : dbgetwhere("kontrak_customer", ['id_kontrak_customer' => $key['id_kontrak_customer']])->row_array()['nomor_kontrak_customer'];
			// $data[] = $key['nama_perusahaan'];
			// $data[] = $key['simbol_mata_uang'];
			// $data[] = rupiah($key['total_ppn_penjualan']);
			// $data[] = rupiah($key['grand_total_penjualan']);
			// $data[] = rupiah($key['total_penjualan']);
			// $data[] = $key['nama_status_penjualan'];
			// $data[] = $key['keterangan_penjualan'];

			$data[] = $key['NumberCard'];
			$data[] = $key['Bank'];
			$data[] = $key['TypeCard'];
			$data[] = $key['NameCustomer'];
			$data[] = $key['PIC'];
			$data[] = $key['AssignmentDate'];
			$data[] = $key['ExpireDate'];
			$data[] = $key['DateOfBirth'];
			$data[] = $key['OpenDate'];
			$data[] = $key['WODate'];
			$data[] = $key['LastPayDate'];
			$data[] = $key['LastTransactionDate'];
			$data[] = $key['LastPayment'];
			$data[] = $key['LastTransactionNominal'];
			$data[] = $key['Limit'];
			$data[] = $key['Principal'];
			$data[] = $key['MinPay'];
			$data[] = $key['OSBalance'];
			$data[] = $key['Address1'];
			$data[] = $key['Address2'];
			$data[] = $key['Address3'];
			$data[] = $key['Address4'];
			$data[] = $key['City'];
			$data[] = $key['OfficeName'];
			$data[] = $key['OfficeAddress1'];
			$data[] = $key['OfficeAddress2'];
			$data[] = $key['OfficeAddress3'];
			$data[] = $key['OfficeAddress4'];
			$data[] = $key['Phone1'];
			$data[] = $key['Phone2'];
			$data[] = $key['HomePhone1'];
			$data[] = $key['HomePhone2'];
			$data[] = $key['OfficePhone1'];
			$data[] = $key['OfficePhone2'];
			$data[] = $key['ECPhone1'];
			$data[] = $key['ECPhone2'];
			$data[] = $key['OtherNumber'];
			$data[] = $key['ECName'];
			$data[] = $key['ECName2'];
			$data[] = $key['StatusEC'];
			$data[] = $key['StatusEC2'];
			$data[] = $key['MotherName'];
			$data[] = $key['Sex'];
			$data[] = $key['Email'];
			$data[] = $key['VirtualAccount'];
			$data[] = $key['VirtualAccountName'];
			$data[] = $key['Komoditi'];
			$data[] = $key['KomoditiType'];
			$data[] = $key['Produsen'];
			$data[] = $key['Model'];
			$data[] = $key['LoanTerm'];
			$data[] = $key['InstallmentAlreadyPaid'];
			$data[] = $key['MonthlyPaymentNominal'];
			$data[] = $key['DPD'];
			$data[] = $key['Bucket'];
			$data[] = $key['BillingNoPenalty'];
			$data[] = $key['DendaBelumDibayar'];
			$data[] = $key['LastVisitDate'];
			$data[] = $key['LastVisitResult'];
			$data[] = $key['LastReport'];
			$data[] = $key['LastVisitAddress'];
			$data[] = $key['OTSOffer'];
			$data[] = $key['OtherData1'];
			$data[] = $key['OtherData2'];
			$data[] = $key['OtherData3'];
			$data[] = $key['OtherData4'];
			$data[] = $key['OtherData5'];
			$data[] = $key['PermanentMessage'];
			$data[] = $key['Deskcoll_id'];
			$data[] = $key['IsDeletedByAdmin'];
			$data[] = $key['Report'];
			$data[] = $key['Action'];
			$data[] = $key['ReportDate'];
			$data[] = $key['PTPDate'];
			$data[] = $key['PTPAmount'];
			$data[] = $key['PaidDate'];
			$data[] = $key['PaidAmount'];
			$action = '';
			if (check_rule(false,"is_read")) {
				$action .= '<a href="'.base_url("pertanyaan/detail/".$key['id']).'" class="badge badge-info">
								<i class="mt-1 mr-1 mb-1 ml-1 fas fa-eye"></i>
							</a>&nbsp';	
			}
			if (check_rule(false,"is_update")) {
				$action .= '<a href="'.base_url("pertanyaan/update/".$key['id']).'" class="badge badge-dark">
								<i class="mt-1 mr-1 mb-1 ml-1 fas fa-edit"></i>
							</a>&nbsp';	
			}
			if (check_rule(false,"is_delete")) {
				$action .= '<a href="#" data-href="'.base_url("pertanyaan/delete/".$key['id']).'" class="badge badge-danger" data-toggle="modal" data-target="#confirm-delete">
								<i class="mt-1 mr-1 mb-1 ml-1 fas fa-trash"></i>
							</a>';
			}
			$data[] = $action;
			array_push($show, $data);
		}
		$data = [
			"draw" => post("draw"),
			"data" => $show,
			"recordsFiltered" => $this->Bankdata_customer_model->get_filtered_data(),
			"recordsTotal" => $this->Bankdata_customer_model->get_all_data()
		];
		echo json_encode($data, JSON_PRETTY_PRINT);
		// echo json_encode($_POST, JSON_PRETTY_PRINT);
	}


	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("nama_bankdata_customer", "nama bankdata_customer", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "Bank Data Customer"
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('bankdata_customer/tambah');
			view('templates/footer');
		} else {
			$data = [
				"nama_bankdata_customer" => post("nama_bankdata_customer"),
				"status_bankdata_customer" => (post('status_bankdata_customer') == "1") ? "1" : "0",
			];
			dbinsert("bankdata_customer", $data);
			set_flashdata("msg", swalfire('Data Berhasil Dimasukan'));
			redirect(base_url("bankdata_customer/index"));
		}
	}

	public function update($id_bankdata_customer)
	{
		check_rule(false, "is_update", true);
		set_rules("nama_bankdata_customer", "nama bankdata_customer", "required");
		
		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "Bank Data Customer",
				'data' => dbgetwhere("bankdata_customer", ["id_bankdata_customer" => $id_bankdata_customer])->row_array()
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('bankdata_customer/update', $data);
			view('templates/footer');
		} else {
			$data = [
				"nama_bankdata_customer" => post("nama_bankdata_customer"),
				"status_bankdata_customer" => (post('status_bankdata_customer') == "1") ? "1" : "0",
			];
			dbupdate("bankdata_customer", $data, ["id_bankdata_customer" => $id_bankdata_customer]);
			set_flashdata("msg", swalfire('Data Berhasil Diupdate'));
			redirect(base_url("bankdata_customer/index"));
		}
	}
	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("bankdata_customer", ["id_bankdata_customer" => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("bankdata_customer/index"));
	}
}
