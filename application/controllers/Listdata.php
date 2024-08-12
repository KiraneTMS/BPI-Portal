<?php
defined('BASEPATH') or exit('No direct script access allowed');

// require 'vendor/autoload.php';
// use PhpOffice\PhpSpreadsheet\Spreadsheet;
// use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Listdata extends CI_Controller
{

	public function __construct() {
        parent::__construct();
        $this->load->model('Data_model');
        // Optional: Check user permissions or other conditions
        check_rule(false, "is_read", true);
    }

	public function index()
	{
		// Fetch data from the model
        $data['data'] = $this->Data_model->getData();

        // Prepare other data for the view
        $data['title'] = "Detail Data";
		
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('listdata/index', $data);
		view('templates/footer');
	}


	public function datatable()
	{
		check_rule(false, "is_read", true);

		loadmodel('Pengeluarankelompokmakanan_model');
		$show = [];
		$i = (post('order')[0]['column'] == 0) ? ((post('order')[0]['dir'] == "asc") ? post("start") + 1 : $this->Pengeluarankelompokmakanan_model->get_all_data() - post("start")) : "-";
		foreach ($this->Pengeluarankelompokmakanan_model->datatable() as $key) {
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
			// 	$data[] = '<div class="form-check">
			// 	<input class="form-check-input checkbox" data-id="' . $key['id'] . '" type="checkbox" value="" id="selectall">
			// 	<label class="form-check-label" for="selectall"></label>
			// </div>';
			} else {
				// $data[] = "";
			}
						// $data[] = $key['id'];	
						$data[] = $key['kelompok'];	
						$data[] = $key['kota'];	
						$data[] = $key['desa'];	
						$data[] = $key['jumlah'];
			// $action = '';
			// if (check_rule(false, "is_read")) {
			// 	$action .= '<a href="' . base_url("pengeluarankelompokmakanan/detail/" . $key['id']) . '" class="badge badge-info">
			// 					<i class="mt-1 mr-1 mb-1 ml-1 fas fa-eye"></i>
			// 				</a>&nbsp';
			// }
			// if (check_rule(false, "is_update")) {
			// 	$action .= '<a href="' . base_url("pengeluarankelompokmakanan/update/" . $key['id']) . '" class="badge badge-dark">
			// 					<i class="mt-1 mr-1 mb-1 ml-1 fas fa-edit"></i>
			// 				</a>&nbsp';
			// }
			// if (check_rule(false, "is_delete")) {
			// 	$action .= '<a href="#" data-href="' . base_url("pengeluarankelompokmakanan/delete/" . $key['id']) . '" class="badge badge-danger" data-toggle="modal" data-target="#confirm-delete">
			// 					<i class="mt-1 mr-1 mb-1 ml-1 fas fa-trash"></i>
			// 				</a>';
			// }
			// $data[] = $action;
			array_push($show, $data);
		}
		$data = [
			"draw" => post("draw"),
			"data" => $show,
			"recordsFiltered" => $this->Pengeluarankelompokmakanan_model->get_filtered_data(),
			"recordsTotal" => $this->Pengeluarankelompokmakanan_model->get_all_data()
		];
		echo json_encode($data, JSON_PRETTY_PRINT);
		// echo json_encode($_POST, JSON_PRETTY_PRINT);
	}


	public function detail($id)
	{
		check_rule(false, "is_read", true);
		$data = [
			"title" => "Detail Data",
			"data" => dbgetwhere('listdata', ['id' => $id])->row_array(),
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('listdata/detail');
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
			view('pengeluarankelompokmakanan/tambah');
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
				"preated_user_Pengeluarankelompokmakanan" => userdata('id_user'),
			];

			dbinsert("pengeluarankelompokmakanan", $data);
			set_flashdata("msg", swalfire('Data Berhasil Dimasukan'));
			redirect(base_url("pengeluarankelompokmakanan/index"));
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
				"data" => dbgetwhere("pengeluarankelompokmakanan", ["id" => $id])->row_array(),
			];
			view('templates/header', $data);
			view('templates/sidebar');
			view('templates/topbar');
			view('pengeluarankelompokmakanan/update');
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

			dbupdate("pengeluarankelompokmakanan", $data, ['id' => $id]);
			set_flashdata("msg", swalfire('Data Berhasil Diubah'));
			redirect(base_url("pengeluarankelompokmakanan/index"));
		}
	}


	public function delete($id)
	{
		check_rule(false, "is_delete", true);
		dbdelete("pengeluarankelompokmakanan", ["pd_Pengeluarankelompokmakanan" => $id]);
		set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		redirect(base_url("pengeluarankelompokmakanan/index"));
	}

	public function delete_selected()
	{
		check_rule(false, "is_delete", true);


		$list = post('id');
		foreach ($list as $id) {
			dbdelete("pengeluarankelompokmakanan", ["id" => $id]);
		}
		echo '200';
		// set_flashdata("msg", swalfire('Data Berhasil Dihapus', 'success'));
		// redirect(base_url("pengeluarankelompokmakanan/index"));
	}
}
