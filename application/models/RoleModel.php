<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class RoleModel extends CI_Model {
     
    var $table = "role"; 
    var $select_column = ["IDRole", "NamaRole"]; 
    var $table_column = ["NamaRole"]; 

    public function make_query() 
    { 
        $this->db->select($this->select_column); 
        $this->db->from($this->table); 
        if (isset(post("search")['value'])) { 
            $search = post("search")['value']; 
            $this->db->like($this->select_column[0], $search); 
            foreach (array_slice($this->select_column, 1) as $key) { 
                $this->db->or_like($key, $search); 
            } 
        } 
        if (post("order")) { 
            $this->db->order_by($this->select_column[post("order")[0]['column']], post("order")[0]['dir']); 
        } else { 
            $this->db->order_by($this->select_column[0], "DESC"); 
        } 
    } 

    public function datatable() 
    { 
        $this->make_query(); 
        // $this->db->limit(post("length"), post("start")); 
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
    public function get_role_by($selector) 
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