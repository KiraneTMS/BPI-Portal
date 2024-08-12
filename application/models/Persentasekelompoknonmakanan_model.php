<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Persentasekelompoknonmakanan_model extends CI_Model
{

    var $table = "persentasekelompoknonmakanan";
    var $select_column = [
        "kelompok",
        "persentase",
        "id",
    ];
    var $table_column = [
        "kelompok",
        "persentase",
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
