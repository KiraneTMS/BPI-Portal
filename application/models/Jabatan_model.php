<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Jabatan_model extends CI_Model {
    
    var $table = "tb_jabatan";
    var $select_column = [
        "idx_jabatan",
        "nama_jabatan",
        "flag_status"
    ];
    var $table_column = [
        "idx_jabatan",
        "nama_jabatan",
        "flag_status"
    ];

    public function make_query()
    {        
        $this->db->select($this->select_column);
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


        $this->db->from($this->table);
        if (post("search")['value'] != "") {
            $search = post("search")['value'];
            $this->db->like($this->select_column[0], $search);
            foreach (array_slice($this->select_column, 1) as $key) {
                $this->db->or_like($key, $search);
            }
        }
        if (post("order") != "") {
            $this->db->order_by($this->table_column[post("order")[0]['column']], post("order")[0]['dir']);
        } else {
            $this->db->order_by($this->table_column[0], "DESC");
        }
    }

    public function id_pertanyaans()
    {
        $alldata = dbquery("SELECT id_pertanyaan FROM tbl_jadwal_ujian_pertanyaan WHERE id_jadwal_ujian = ".post('id_jadwal_ujian'))->result_array();
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