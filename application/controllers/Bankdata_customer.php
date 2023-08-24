<?php
defined('BASEPATH') or exit('No direct script access allowed');
require 'vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Bankdata_customer extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		// Load Model
		$this->ip_address    = $_SERVER['REMOTE_ADDR'];
		$this->datetime 	    = date("Y-m-d H:i:s");
	}

	public function import()
	{
		check_rule(false, "is_create", true);

		$path 		= 'uploads/';
		$json 		= [];
		$this->upload_config($path);
		if (!$this->upload->do_upload('import_excel')) {
			set_flashdata("msg", swalfire($this->upload->display_errors(), 'error'));
			redirect(base_url("bankdata_customer/index"));
		} else {
			$file_data 	= $this->upload->data();
			$file_name 	= $path . $file_data['file_name'];
			$arr_file 	= explode('.', $file_name);
			$extension 	= end($arr_file);
			if ('csv' == $extension) {
				$reader 	= new \PhpOffice\PhpSpreadsheet\Reader\Csv();
			} else {
				$reader 	= new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
			}
			$spreadsheet 	= $reader->load($file_name);
			$sheet_data 	= $spreadsheet->getActiveSheet()->toArray();
			$list 			= [];
			foreach ($sheet_data as $key => $val) {
				if ($key != 0) {
					$list[] = [
						// "id" => $val[0],
						// "created_at" => $val[1],
						// "updated_at" => $val[2],
						"NumberCard" => $val[3],
						"Bank" => $val[4],
						"TypeCard" => $val[5],
						"NameCustomer" => $val[6],
						"PIC" => $val[7],
						"AssignmentDate" => $val[8],
						"ExpireDate" => $val[9],
						"DateOfBirth" => $val[10],
						"OpenDate" => $val[11],
						"WODate" => $val[12],
						"LastPayDate" => $val[13],
						"LastTransactionDate" => $val[14],
						"LastPayment" => $val[15],
						"LastTransactionNominal" => $val[16],
						"Limit" => $val[17],
						"Principal" => $val[18],
						"MinPay" => $val[19],
						"OSBalance" => $val[20],
						"Address1" => $val[21],
						"Address2" => $val[22],
						"Address3" => $val[23],
						"Address4" => $val[24],
						"City" => $val[25],
						"OfficeName" => $val[26],
						"OfficeAddress1" => $val[27],
						"OfficeAddress2" => $val[28],
						"OfficeAddress3" => $val[29],
						"OfficeAddress4" => $val[30],
						"Phone1" => $val[31],
						"Phone2" => $val[32],
						"HomePhone1" => $val[33],
						"HomePhone2" => $val[34],
						"OfficePhone1" => $val[35],
						"OfficePhone2" => $val[36],
						"ECPhone1" => $val[37],
						"ECPhone2" => $val[38],
						"OtherNumber" => $val[39],
						"ECName" => $val[40],
						"ECName2" => $val[41],
						"StatusEC" => $val[42],
						"StatusEC2" => $val[43],
						"MotherName" => $val[44],
						"Sex" => $val[45],
						"Email" => $val[46],
						"VirtualAccount" => $val[47],
						"VirtualAccountName" => $val[48],
						"Komoditi" => $val[49],
						"KomoditiType" => $val[50],
						"Produsen" => $val[51],
						"Model" => $val[52],
						"LoanTerm" => $val[53],
						"InstallmentAlreadyPaid" => $val[54],
						"MonthlyPaymentNominal" => $val[55],
						"DPD" => $val[56],
						"Bucket" => $val[57],
						"BillingNoPenalty" => $val[58],
						"DendaBelumDibayar" => $val[59],
						"LastVisitDate" => $val[60],
						"LastVisitResult" => $val[61],
						"LastReport" => $val[62],
						"LastVisitAddress" => $val[63],
						"OTSOffer" => $val[64],
						"OtherData1" => $val[65],
						"OtherData2" => $val[66],
						"OtherData3" => $val[67],
						"OtherData4" => $val[68],
						"OtherData5" => $val[69],
						"PermanentMessage" => $val[70],
						"Deskcoll_id" => $val[71],
						"IsDeletedByAdmin" => $val[72],
						"Report" => $val[73],
						"Action" => $val[74],
						"ReportDate" => $val[75],
						"PTPDate" => $val[76],
						"PTPAmount" => $val[77],
						"PaidDate" => $val[78],
						"PaidAmount" => $val[79],
						"created_user_bankdata_customer" => userdata('id_user'),
					];
				}
			}
			if (file_exists($file_name))
				unlink($file_name);
			// echo count($list);
			// dd($list);

			foreach ($list as $row) {
				dbinsert('bankdata_customer', $row);
				// dd($row);
			}
			set_flashdata("msg", swalfire(count($list) . ' Data Berhasil DiImport'));
			redirect(base_url("bankdata_customer/index"));

			// if (count($list) > 0) {
			// 	$result 	= $this->user->add_batch($list);
			// 	if ($result) {
			// 		$json = [
			// 			'success_message' 	=> "All Entries are imported successfully.",
			// 		];
			// 	} else {
			// 		$json = [
			// 			'error_message' 	=> "Something went wrong. Please try again.",
			// 		];
			// 	}
			// } else {
			// 	$json = [
			// 		'error_message' => "No new record is found.",
			// 	];
			// }
		}
		echo json_encode($json);
	}

	private function upload_config($path)
	{
		if (!is_dir($path))
			mkdir($path, 0777, TRUE);
		$config['upload_path'] 		= './' . $path;
		$config['allowed_types'] 	= 'csv|CSV|xlsx|XLSX|xls|XLS';
		$config['max_filename']	 	= '255';
		$config['encrypt_name'] 	= TRUE;
		$config['max_size'] 		= 4096;
		$this->load->library('upload', $config);
	}


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
			$data[] = (post('order')[0]['column'] == 0) ? ((post('order')[0]['dir'] == "asc") ? $i++ : $i--) : "-";
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

			if (check_rule(false, "is_delete")) {
				$data[] = '<div class="form-check">
				<input class="form-check-input checkbox" data-id="' . $key['id'] . '" type="checkbox" value="" id="selectall">
				<label class="form-check-label" for="selectall"></label>
			</div>';
			} else {
				$data[] = "";
			}

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
			$data[] = substr($key['Report'], 30,30);
			$data[] = $key['Action'];
			$data[] = $key['ReportDate'];
			$data[] = $key['PTPDate'];
			$data[] = $key['PTPAmount'];
			$data[] = $key['PaidDate'];
			$data[] = $key['PaidAmount'];
			$action = '';
			if (check_rule(false, "is_read")) {
				$action .= '<a href="' . base_url("bankdata_customer/detail/" . $key['id']) . '" class="badge badge-info">
								<i class="mt-1 mr-1 mb-1 ml-1 fas fa-eye"></i>
							</a>&nbsp';
			}
			if (check_rule(false, "is_update")) {
				$action .= '<a href="' . base_url("bankdata_customer/update/" . $key['id']) . '" class="badge badge-dark">
								<i class="mt-1 mr-1 mb-1 ml-1 fas fa-edit"></i>
							</a>&nbsp';
			}
			// if (check_rule(false, "is_delete")) {
			// 	$action .= '<a href="#" data-href="' . base_url("bankdata_customer/delete/" . $key['id']) . '" class="badge badge-danger" data-toggle="modal" data-target="#confirm-delete">
			// 					<i class="mt-1 mr-1 mb-1 ml-1 fas fa-trash"></i>
			// 				</a>';
			// }
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


	public function detail($id)
	{
		check_rule(false, "is_read", true);
		$data = [
			"title" => "Bank Data Customer",
			"data" => dbgetwhere('bankdata_customer', ['id' => $id])->row_array(),
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('bankdata_customer/detail');
		view('templates/footer');
	}

	public function tambah()
	{
		check_rule(false, "is_create", true);
		set_rules("NumberCard", "NumberCard", "required");
		set_rules("Bank", "Bank", "required");
		set_rules("TypeCard", "TypeCard", "required");
		set_rules("NameCustomer", "NameCustomer", "required");
		set_rules("PIC", "PIC", "required");
		set_rules("AssignmentDate", "AssignmentDate", "required");
		set_rules("ExpireDate", "ExpireDate", "required");
		set_rules("DateOfBirth", "DateOfBirth", "required");
		set_rules("OpenDate", "OpenDate", "required");
		set_rules("WODate", "WODate", "required");
		set_rules("LastPayDate", "LastPayDate", "required");
		set_rules("LastTransactionDate", "LastTransactionDate", "required");
		set_rules("LastPayment", "LastPayment", "required");
		set_rules("LastTransactionNominal", "LastTransactionNominal", "required");
		set_rules("Limit", "Limit", "required");
		set_rules("Principal", "Principal", "required");
		set_rules("MinPay", "MinPay", "required");
		set_rules("OSBalance", "OSBalance", "required");
		set_rules("Address1", "Address1", "required");
		set_rules("Address2", "Address2", "required");
		set_rules("Address3", "Address3", "required");
		set_rules("Address4", "Address4", "required");
		set_rules("City", "City", "required");
		set_rules("OfficeName", "OfficeName", "required");
		set_rules("OfficeAddress1", "OfficeAddress1", "required");
		set_rules("OfficeAddress2", "OfficeAddress2", "required");
		set_rules("OfficeAddress3", "OfficeAddress3", "required");
		set_rules("OfficeAddress4", "OfficeAddress4", "required");
		set_rules("Phone1", "Phone1", "required");
		set_rules("Phone2", "Phone2", "required");
		set_rules("HomePhone1", "HomePhone1", "required");
		set_rules("HomePhone2", "HomePhone2", "required");
		set_rules("OfficePhone1", "OfficePhone1", "required");
		set_rules("OfficePhone2", "OfficePhone2", "required");
		set_rules("ECPhone1", "ECPhone1", "required");
		set_rules("ECPhone2", "ECPhone2", "required");
		set_rules("OtherNumber", "OtherNumber", "required");
		set_rules("ECName", "ECName", "required");
		set_rules("ECName2", "ECName2", "required");
		set_rules("StatusEC", "StatusEC", "required");
		set_rules("StatusEC2", "StatusEC2", "required");
		set_rules("MotherName", "MotherName", "required");
		set_rules("Sex", "Sex", "required");
		set_rules("Email", "Email", "required");
		set_rules("VirtualAccount", "VirtualAccount", "required");
		set_rules("VirtualAccountName", "VirtualAccountName", "required");
		set_rules("Komoditi", "Komoditi", "required");
		set_rules("KomoditiType", "KomoditiType", "required");
		set_rules("Produsen", "Produsen", "required");
		set_rules("Model", "Model", "required");
		set_rules("LoanTerm", "LoanTerm", "required");
		set_rules("InstallmentAlreadyPaid", "InstallmentAlreadyPaid", "required");
		set_rules("MonthlyPaymentNominal", "MonthlyPaymentNominal", "required");
		set_rules("DPD", "DPD", "required");
		set_rules("Bucket", "Bucket", "required");
		set_rules("BillingNoPenalty", "BillingNoPenalty", "required");
		set_rules("DendaBelumDibayar", "DendaBelumDibayar", "required");
		set_rules("LastVisitDate", "LastVisitDate", "required");
		set_rules("LastVisitResult", "LastVisitResult", "required");
		set_rules("LastReport", "LastReport", "required");
		set_rules("LastVisitAddress", "LastVisitAddress", "required");
		set_rules("OTSOffer", "OTSOffer", "required");
		set_rules("OtherData1", "OtherData1", "required");
		set_rules("OtherData2", "OtherData2", "required");
		set_rules("OtherData3", "OtherData3", "required");
		set_rules("OtherData4", "OtherData4", "required");
		set_rules("OtherData5", "OtherData5", "required");
		set_rules("PermanentMessage", "PermanentMessage", "required");
		set_rules("Deskcoll_id", "Deskcoll_id", "required");
		set_rules("IsDeletedByAdmin", "IsDeletedByAdmin", "required");
		set_rules("Report", "Report", "required");
		set_rules("Action", "Action", "required");
		set_rules("ReportDate", "ReportDate", "required");
		set_rules("PTPDate", "PTPDate", "required");
		set_rules("PTPAmount", "PTPAmount", "required");
		set_rules("PaidDate", "PaidDate", "required");
		set_rules("PaidAmount", "PaidAmount", "required");

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
				"NumberCard" => post("NumberCard"),
				"Bank" => post("Bank"),
				"TypeCard" => post("TypeCard"),
				"NameCustomer" => post("NameCustomer"),
				"PIC" => post("PIC"),
				"AssignmentDate" => post("AssignmentDate"),
				"ExpireDate" => post("ExpireDate"),
				"DateOfBirth" => post("DateOfBirth"),
				"OpenDate" => post("OpenDate"),
				"WODate" => post("WODate"),
				"LastPayDate" => post("LastPayDate"),
				"LastTransactionDate" => post("LastTransactionDate"),
				"LastPayment" => post("LastPayment"),
				"LastTransactionNominal" => post("LastTransactionNominal"),
				"Limit" => post("Limit"),
				"Principal" => post("Principal"),
				"MinPay" => post("MinPay"),
				"OSBalance" => post("OSBalance"),
				"Address1" => post("Address1"),
				"Address2" => post("Address2"),
				"Address3" => post("Address3"),
				"Address4" => post("Address4"),
				"City" => post("City"),
				"OfficeName" => post("OfficeName"),
				"OfficeAddress1" => post("OfficeAddress1"),
				"OfficeAddress2" => post("OfficeAddress2"),
				"OfficeAddress3" => post("OfficeAddress3"),
				"OfficeAddress4" => post("OfficeAddress4"),
				"Phone1" => post("Phone1"),
				"Phone2" => post("Phone2"),
				"HomePhone1" => post("HomePhone1"),
				"HomePhone2" => post("HomePhone2"),
				"OfficePhone1" => post("OfficePhone1"),
				"OfficePhone2" => post("OfficePhone2"),
				"ECPhone1" => post("ECPhone1"),
				"ECPhone2" => post("ECPhone2"),
				"OtherNumber" => post("OtherNumber"),
				"ECName" => post("ECName"),
				"ECName2" => post("ECName2"),
				"StatusEC" => post("StatusEC"),
				"StatusEC2" => post("StatusEC2"),
				"MotherName" => post("MotherName"),
				"Sex" => post("Sex"),
				"Email" => post("Email"),
				"VirtualAccount" => post("VirtualAccount"),
				"VirtualAccountName" => post("VirtualAccountName"),
				"Komoditi" => post("Komoditi"),
				"KomoditiType" => post("KomoditiType"),
				"Produsen" => post("Produsen"),
				"Model" => post("Model"),
				"LoanTerm" => post("LoanTerm"),
				"InstallmentAlreadyPaid" => post("InstallmentAlreadyPaid"),
				"MonthlyPaymentNominal" => post("MonthlyPaymentNominal"),
				"DPD" => post("DPD"),
				"Bucket" => post("Bucket"),
				"BillingNoPenalty" => post("BillingNoPenalty"),
				"DendaBelumDibayar" => post("DendaBelumDibayar"),
				"LastVisitDate" => post("LastVisitDate"),
				"LastVisitResult" => post("LastVisitResult"),
				"LastReport" => post("LastReport"),
				"LastVisitAddress" => post("LastVisitAddress"),
				"OTSOffer" => post("OTSOffer"),
				"OtherData1" => post("OtherData1"),
				"OtherData2" => post("OtherData2"),
				"OtherData3" => post("OtherData3"),
				"OtherData4" => post("OtherData4"),
				"OtherData5" => post("OtherData5"),
				"PermanentMessage" => post("PermanentMessage"),
				"Deskcoll_id" => post("Deskcoll_id"),
				"IsDeletedByAdmin" => post("IsDeletedByAdmin"),
				"Report" => post("Report"),
				"Action" => post("Action"),
				"ReportDate" => post("ReportDate"),
				"PTPDate" => post("PTPDate"),
				"PTPAmount" => post("PTPAmount"),
				"PaidDate" => post("PaidDate"),
				"PaidAmount" => post("PaidAmount"),
				"created_user_bankdata_customer" => userdata('id_user'),
			];

			dbinsert("bankdata_customer", $data);
			set_flashdata("msg", swalfire('Data Berhasil Dimasukan'));
			redirect(base_url("bankdata_customer/index"));
		}
	}

	public function update($id)
	{
		check_rule(false, "is_update", true);
		set_rules("NumberCard", "NumberCard", "required");
		set_rules("Bank", "Bank", "required");
		set_rules("TypeCard", "TypeCard", "required");
		set_rules("NameCustomer", "NameCustomer", "required");
		set_rules("PIC", "PIC", "required");
		set_rules("AssignmentDate", "AssignmentDate", "required");
		set_rules("ExpireDate", "ExpireDate", "required");
		set_rules("DateOfBirth", "DateOfBirth", "required");
		set_rules("OpenDate", "OpenDate", "required");
		set_rules("WODate", "WODate", "required");
		set_rules("LastPayDate", "LastPayDate", "required");
		set_rules("LastTransactionDate", "LastTransactionDate", "required");
		set_rules("LastPayment", "LastPayment", "required");
		set_rules("LastTransactionNominal", "LastTransactionNominal", "required");
		set_rules("Limit", "Limit", "required");
		set_rules("Principal", "Principal", "required");
		set_rules("MinPay", "MinPay", "required");
		set_rules("OSBalance", "OSBalance", "required");
		set_rules("Address1", "Address1", "required");
		set_rules("Address2", "Address2", "required");
		set_rules("Address3", "Address3", "required");
		set_rules("Address4", "Address4", "required");
		set_rules("City", "City", "required");
		set_rules("OfficeName", "OfficeName", "required");
		set_rules("OfficeAddress1", "OfficeAddress1", "required");
		set_rules("OfficeAddress2", "OfficeAddress2", "required");
		set_rules("OfficeAddress3", "OfficeAddress3", "required");
		set_rules("OfficeAddress4", "OfficeAddress4", "required");
		set_rules("Phone1", "Phone1", "required");
		set_rules("Phone2", "Phone2", "required");
		set_rules("HomePhone1", "HomePhone1", "required");
		set_rules("HomePhone2", "HomePhone2", "required");
		set_rules("OfficePhone1", "OfficePhone1", "required");
		set_rules("OfficePhone2", "OfficePhone2", "required");
		set_rules("ECPhone1", "ECPhone1", "required");
		set_rules("ECPhone2", "ECPhone2", "required");
		set_rules("OtherNumber", "OtherNumber", "required");
		set_rules("ECName", "ECName", "required");
		set_rules("ECName2", "ECName2", "required");
		set_rules("StatusEC", "StatusEC", "required");
		set_rules("StatusEC2", "StatusEC2", "required");
		set_rules("MotherName", "MotherName", "required");
		set_rules("Sex", "Sex", "required");
		set_rules("Email", "Email", "required");
		set_rules("VirtualAccount", "VirtualAccount", "required");
		set_rules("VirtualAccountName", "VirtualAccountName", "required");
		set_rules("Komoditi", "Komoditi", "required");
		set_rules("KomoditiType", "KomoditiType", "required");
		set_rules("Produsen", "Produsen", "required");
		set_rules("Model", "Model", "required");
		set_rules("LoanTerm", "LoanTerm", "required");
		set_rules("InstallmentAlreadyPaid", "InstallmentAlreadyPaid", "required");
		set_rules("MonthlyPaymentNominal", "MonthlyPaymentNominal", "required");
		set_rules("DPD", "DPD", "required");
		set_rules("Bucket", "Bucket", "required");
		set_rules("BillingNoPenalty", "BillingNoPenalty", "required");
		set_rules("DendaBelumDibayar", "DendaBelumDibayar", "required");
		set_rules("LastVisitDate", "LastVisitDate", "required");
		set_rules("LastVisitResult", "LastVisitResult", "required");
		set_rules("LastReport", "LastReport", "required");
		set_rules("LastVisitAddress", "LastVisitAddress", "required");
		set_rules("OTSOffer", "OTSOffer", "required");
		set_rules("OtherData1", "OtherData1", "required");
		set_rules("OtherData2", "OtherData2", "required");
		set_rules("OtherData3", "OtherData3", "required");
		set_rules("OtherData4", "OtherData4", "required");
		set_rules("OtherData5", "OtherData5", "required");
		set_rules("PermanentMessage", "PermanentMessage", "required");
		set_rules("Deskcoll_id", "Deskcoll_id", "required");
		set_rules("IsDeletedByAdmin", "IsDeletedByAdmin", "required");
		set_rules("Report", "Report", "required");
		set_rules("Action", "Action", "required");
		set_rules("ReportDate", "ReportDate", "required");
		set_rules("PTPDate", "PTPDate", "required");
		set_rules("PTPAmount", "PTPAmount", "required");
		set_rules("PaidDate", "PaidDate", "required");
		set_rules("PaidAmount", "PaidAmount", "required");

		if ($this->form_validation->run() == False) {
			$data = [
				"title" => "Bank Data Customer",
				"data" => dbgetwhere("bankdata_customer", ["id" => $id])->row_array(),
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('bankdata_customer/update');
			view('templates/footer');
		} else {
			$data = [
				"NumberCard" => post("NumberCard"),
				"Bank" => post("Bank"),
				"TypeCard" => post("TypeCard"),
				"NameCustomer" => post("NameCustomer"),
				"PIC" => post("PIC"),
				"AssignmentDate" => post("AssignmentDate"),
				"ExpireDate" => post("ExpireDate"),
				"DateOfBirth" => post("DateOfBirth"),
				"OpenDate" => post("OpenDate"),
				"WODate" => post("WODate"),
				"LastPayDate" => post("LastPayDate"),
				"LastTransactionDate" => post("LastTransactionDate"),
				"LastPayment" => post("LastPayment"),
				"LastTransactionNominal" => post("LastTransactionNominal"),
				"Limit" => post("Limit"),
				"Principal" => post("Principal"),
				"MinPay" => post("MinPay"),
				"OSBalance" => post("OSBalance"),
				"Address1" => post("Address1"),
				"Address2" => post("Address2"),
				"Address3" => post("Address3"),
				"Address4" => post("Address4"),
				"City" => post("City"),
				"OfficeName" => post("OfficeName"),
				"OfficeAddress1" => post("OfficeAddress1"),
				"OfficeAddress2" => post("OfficeAddress2"),
				"OfficeAddress3" => post("OfficeAddress3"),
				"OfficeAddress4" => post("OfficeAddress4"),
				"Phone1" => post("Phone1"),
				"Phone2" => post("Phone2"),
				"HomePhone1" => post("HomePhone1"),
				"HomePhone2" => post("HomePhone2"),
				"OfficePhone1" => post("OfficePhone1"),
				"OfficePhone2" => post("OfficePhone2"),
				"ECPhone1" => post("ECPhone1"),
				"ECPhone2" => post("ECPhone2"),
				"OtherNumber" => post("OtherNumber"),
				"ECName" => post("ECName"),
				"ECName2" => post("ECName2"),
				"StatusEC" => post("StatusEC"),
				"StatusEC2" => post("StatusEC2"),
				"MotherName" => post("MotherName"),
				"Sex" => post("Sex"),
				"Email" => post("Email"),
				"VirtualAccount" => post("VirtualAccount"),
				"VirtualAccountName" => post("VirtualAccountName"),
				"Komoditi" => post("Komoditi"),
				"KomoditiType" => post("KomoditiType"),
				"Produsen" => post("Produsen"),
				"Model" => post("Model"),
				"LoanTerm" => post("LoanTerm"),
				"InstallmentAlreadyPaid" => post("InstallmentAlreadyPaid"),
				"MonthlyPaymentNominal" => post("MonthlyPaymentNominal"),
				"DPD" => post("DPD"),
				"Bucket" => post("Bucket"),
				"BillingNoPenalty" => post("BillingNoPenalty"),
				"DendaBelumDibayar" => post("DendaBelumDibayar"),
				"LastVisitDate" => post("LastVisitDate"),
				"LastVisitResult" => post("LastVisitResult"),
				"LastReport" => post("LastReport"),
				"LastVisitAddress" => post("LastVisitAddress"),
				"OTSOffer" => post("OTSOffer"),
				"OtherData1" => post("OtherData1"),
				"OtherData2" => post("OtherData2"),
				"OtherData3" => post("OtherData3"),
				"OtherData4" => post("OtherData4"),
				"OtherData5" => post("OtherData5"),
				"PermanentMessage" => post("PermanentMessage"),
				"Deskcoll_id" => post("Deskcoll_id"),
				"IsDeletedByAdmin" => post("IsDeletedByAdmin"),
				"Report" => post("Report"),
				"Action" => post("Action"),
				"ReportDate" => post("ReportDate"),
				"PTPDate" => post("PTPDate"),
				"PTPAmount" => post("PTPAmount"),
				"PaidDate" => post("PaidDate"),
				"PaidAmount" => post("PaidAmount"),
			];

			dbupdate("bankdata_customer", $data, ['id' => $id]);
			set_flashdata("msg", swalfire('Data Berhasil Diubah'));
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

	public function delete_selected()
	{
		check_rule(false, "is_delete", true);


		$list = post('id');
		foreach ($list as $id) {
			dbdelete("bankdata_customer", ["id" => $id]);
		}
		echo '200';
		// set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		// redirect(base_url("bankdata_customer/index"));
	}
}
