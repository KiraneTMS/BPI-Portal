<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Bankdata_customer_model extends CI_Model
{

    var $table = "bankdata_customer";
    var $select_column = [
        "NumberCard",
        "Bank",
        "TypeCard",
        "NameCustomer",
        "PIC",
        "AssignmentDate",
        "ExpireDate",
        "DateOfBirth",
        "OpenDate",
        "WODate",
        "LastPayDate",
        "LastTransactionDate",
        "LastPayment",
        "LastTransactionNominal",
        "Limit",
        "Principal",
        "MinPay",
        "OSBalance",
        "Address1",
        "Address2",
        "Address3",
        "Address4",
        "City",
        "OfficeName",
        "OfficeAddress1",
        "OfficeAddress2",
        "OfficeAddress3",
        "OfficeAddress4",
        "Phone1",
        "Phone2",
        "HomePhone1",
        "HomePhone2",
        "OfficePhone1",
        "OfficePhone2",
        "ECPhone1",
        "ECPhone2",
        "OtherNumber",
        "ECName",
        "ECName2",
        "StatusEC",
        "StatusEC2",
        "MotherName",
        "Sex",
        "Email",
        "VirtualAccount",
        "VirtualAccountName",
        "Komoditi",
        "KomoditiType",
        "Produsen",
        "Model",
        "LoanTerm",
        "InstallmentAlreadyPaid",
        "MonthlyPaymentNominal",
        "DPD",
        "Bucket",
        "BillingNoPenalty",
        "DendaBelumDibayar",
        "LastVisitDate",
        "LastVisitResult",
        "LastReport",
        "LastVisitAddress",
        "OTSOffer",
        "OtherData1",
        "OtherData2",
        "OtherData3",
        "OtherData4",
        "OtherData5",
        "PermanentMessage",
        "Deskcoll_id",
        "IsDeletedByAdmin",
        "Report",
        "Action",
        "ReportDate",
        "PTPDate",
        "PTPAmount",
        "PaidDate",
        "PaidAmount",
        "id",
    ];
    var $table_column = [
        "NumberCard",
        "Bank",
        "TypeCard",
        "NameCustomer",
        "PIC",
        "AssignmentDate",
        "ExpireDate",
        "DateOfBirth",
        "OpenDate",
        "WODate",
        "LastPayDate",
        "LastTransactionDate",
        "LastPayment",
        "LastTransactionNominal",
        "Limit",
        "Principal",
        "MinPay",
        "OSBalance",
        "Address1",
        "Address2",
        "Address3",
        "Address4",
        "City",
        "OfficeName",
        "OfficeAddress1",
        "OfficeAddress2",
        "OfficeAddress3",
        "OfficeAddress4",
        "Phone1",
        "Phone2",
        "HomePhone1",
        "HomePhone2",
        "OfficePhone1",
        "OfficePhone2",
        "ECPhone1",
        "ECPhone2",
        "OtherNumber",
        "ECName",
        "ECName2",
        "StatusEC",
        "StatusEC2",
        "MotherName",
        "Sex",
        "Email",
        "VirtualAccount",
        "VirtualAccountName",
        "Komoditi",
        "KomoditiType",
        "Produsen",
        "Model",
        "LoanTerm",
        "InstallmentAlreadyPaid",
        "MonthlyPaymentNominal",
        "DPD",
        "Bucket",
        "BillingNoPenalty",
        "DendaBelumDibayar",
        "LastVisitDate",
        "LastVisitResult",
        "LastReport",
        "LastVisitAddress",
        "OTSOffer",
        "OtherData1",
        "OtherData2",
        "OtherData3",
        "OtherData4",
        "OtherData5",
        "PermanentMessage",
        "Deskcoll_id",
        "IsDeletedByAdmin",
        "Report",
        "Action",
        "ReportDate",
        "PTPDate",
        "PTPAmount",
        "PaidDate",
        "PaidAmount",
        "id",
    ];

    public function make_query()
    {
        $this->db->select($this->select_column);
        // dbrel("penawaran_harga", "penjualan", "id_penawaran_harga");
        // dbrel("tb_customer", "penawaran_harga", "id_customer");

        // dbrel("tb_status_penjualan", "penjualan", "id_status_penjualan");
        // // dbrel("kontrak_customer", "penjualan", "id_kontrak_customer");
        // dbrel("tb_perusahaan", "penjualan", "id_perusahaan");
        // dbrel("tb_mata_uang", "penjualan", "id_mata_uang");

        // dbjoin("tbl_kelompok_pertanyaan", "tbl_kelompok_pertanyaan.id_kelompok_pertanyaan = tbl_pertanyaan.id_kelompok_pertanyaan");
        // $alldata = $this->id_pertanyaans();
        // if (post("id_kelompok_pertanyaan") != "") {
        //     $this->db->where("tbl_pertanyaan.id_kelompok_pertanyaan", post("id_kelompok_pertanyaan"));
        // }
        // if (post("soalaktif") != "") {
        //     if ($alldata != []) {
        //         if (post("soalaktif") == "1") {
        //             dbwherein($this->table.".id_pertanyaan", $alldata);
        //         } else {
        //             dbwherenotin($this->table.".id_pertanyaan", $alldata);
        //         }
        //     } else {
        //         if (post("soalaktif") == "1") {
        //             $this->db->where("tbl_pertanyaan.id_pertanyaan", "0");
        //         }
        //     }
        // }

        // if (post("id_status_penjualan") != "") {
        //     $this->db->where("penjualan.id_status_penjualan", post("id_status_penjualan"));
        // }

        // $this->db->where("penjualan.id_perusahaan", userdata('id_perusahaan'));
        
        // if (post("draw") == "1") {
        //     $this->db->where("penjualan.id_status_penjualan", 1);
        // }

        // $this->db->where("penjualan.id_perusahaan",userdata("id_perusahaan"));


        $this->db->from($this->table);
        if (post("search")['value'] != "") {
            $search = post("search")['value'];
            $this->db->group_start();
            $this->db->like($this->select_column[0], $search);
            foreach (array_slice($this->select_column, 1) as $key) {
                $this->db->or_like($key, $search);
            }
            $this->db->group_end();
        }
        // if (post("draw") == 1) {
        //     $this->db->order_by($this->table_column[0], "DESC");
        // } else {
            // }
        $order_column = $this->table_column;
        // $order_column[3] = "tanggal_transaksi_penjualan";
        $this->db->order_by($order_column[post("order")[0]['column']], post("order")[0]['dir']);    
    }

    public function id_pertanyaans()
    {
        $alldata = dbquery("SELECT id_pertanyaan FROM tbl_jadwal_ujian_pertanyaan WHERE id_jadwal_ujian = " . post('id_jadwal_ujian'))->result_array();
        return array_column($alldata, "id_pertanyaan");
    }

    public function datatable()
    {
        $this->make_query();
        $this->db->limit(post("length"), post("start"));
        return $this->db->get()->result_array();
    }

    public function get_filtered_data()
    {
        $this->make_query();
        return $this->db->get()->num_rows();
    }

    public function get_all_data()
    {
        // $this->db->where("penjualan.id_perusahaan",userdata("id_perusahaan"));
        return $this->db->get($this->table)->num_rows();
    }

    //GET By ID
    public function get_where($selector)
    {
        return $this->db->get_where($this->table, $selector)->row_array();
    }

    //INSERT
    public function insert($data)
    {
        return $this->db->insert($this->table, $data);
    }

    //UPDATE
    public function update($data, $selector)
    {
        return $this->db->update($this->table, $data, $selector);
    }

    //DELETE
    public function delete($selector)
    {
        return $this->db->delete($this->table, $selector);
    }
}
