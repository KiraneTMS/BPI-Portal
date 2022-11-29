<?php
//Input
function post(...$params)
{
    $ci =& get_instance();
    return $ci->input->post(...$params);
}

function fileupload($key, $default="default.png")
{
    $ci =& get_instance();

    $datakey = $_FILES[$key]['name'];
    if($datakey){
        $config['allowed_types'] 		= 'gif|jpeg|jpg|png';
        $config['upload_path'] 			= './uploads/';
        $config['max_size']             = '5000';
        // $config['max_width']            = '10240';
        // $config['max_height']           = '7680';

        $ci->load->library('upload', $config);
        $ci->upload->initialize($config);

        if($ci->upload->do_upload($key))
        {
            return $ci->upload->data('file_name');
        } else {
            set_flashdata("msg", swalfire($ci->upload->display_errors(), "error"));
            $ci->load->library('user_agent');

            if ($ci->agent->is_referral()) {
                redirect($ci->agent->referrer());
            } 
            // else {
            //     redirect(base_url($urlcallback));
            // }
        }
    } else {
        return $default;
    }
}
//database
function dbselect(...$params)
{
    $ci =& get_instance();
    return $ci->db->select(...$params);
}
function dbget(...$params)
{
    $ci =& get_instance();
    return $ci->db->get(...$params);
}
function dbwhere(...$params)
{
    $ci =& get_instance();
    return $ci->db->where(...$params);
}
function dborwhere(...$params)
{
    $ci =& get_instance();
    return $ci->db->or_where(...$params);
}
function dbwherein(...$params)
{
    $ci =& get_instance();
    return $ci->db->where_in(...$params);
}
function dbwherenotin(...$params)
{
    $ci =& get_instance();
    return $ci->db->where_not_in(...$params);
}
function dbgetwhere(...$params)
{
    $ci =& get_instance();
    return $ci->db->get_where(...$params);
}
function dborderby(...$params)
{
    $ci =& get_instance();
    return $ci->db->order_by(...$params);
}
function dbinsert(...$params)
{
    $ci =& get_instance();
    return $ci->db->insert(...$params);
}
function dbupdate(...$params)
{
    $ci =& get_instance();
    return $ci->db->update(...$params);
}
function dbdelete(...$params)
{
    $ci =& get_instance();
    return $ci->db->delete(...$params);
}
function dbjoin(...$params)
{
    $ci =& get_instance();
    return $ci->db->join(...$params);
}
function dbrel($join, $from, $column)
{
    $ci =& get_instance();
    return $ci->db->join($join, $join.".".$column." = ".$from.".".$column);
}
function dbquery($string)
{
    $ci =& get_instance();
    return $ci->db->query($string);
}

//model
function loadmodel(...$params)
{
    $ci =& get_instance();
    return $ci->load->model(...$params);
}

//form_validation
function set_rules(...$params)
{
    $ci =& get_instance();
    return $ci->form_validation->set_rules(...$params);
}

//session
function set_flashdata(...$params)
{
    $ci =& get_instance();
    return $ci->session->set_flashdata(...$params);
}
function flashdata(...$params)
{
    $ci =& get_instance();
    return $ci->session->flashdata(...$params);
}
function set_userdata(...$params)
{
    $ci =& get_instance();
    return $ci->session->set_userdata(...$params);
}
function userdata(...$params)
{
    $ci =& get_instance();
    return $ci->session->userdata(...$params);
}
function unset_userdata(...$params)
{
    $ci =& get_instance();
    return $ci->session->unset_userdata(...$params);
}

//load
function view(...$params)
{
    $ci =& get_instance();
    return $ci->load->view(...$params);
}
function rawview($file, $data="")
{
    $ci =& get_instance();
    return $ci->load->view($file, $data, TRUE);
}


//API
function jsonify($raw, $code=false)
{
    if ($code == false) {
        $data = $raw;
    } else {
        $data = [
            "data" => $raw,
            "code" => $code
        ];
    }
    return json_encode($data);
    // return json_encode($data, JSON_PRETTY_PRINT);
}

function swalfire($msg, $stat="success"){
    return "<script>Swal.fire('".$stat."','".$msg."', '".$stat."')</script>";
}

//dev
function dd($variable)
{
    var_dump($variable);
    die;
}

//security
function check_rule($url=false, $action="is_read", $redirect=false)
{
    $ci =& get_instance();
    if (userdata("role_id")) {
        if ($url == false) {
            $menu = $ci->db->get_where("menu", ['url_menu' => $ci->uri->segment(1)])->row_array();
        } else {
            $menu = $ci->db->get_where("menu", ['url_menu' => $url])->row_array();
        }
        $role_access_menu = $ci->db->get_where("role_access_menu", ['IDRole' => userdata("role_id"), 'IDMenu' => $menu['IDMenu']])->row_array();
        if ( $role_access_menu ) {
            if ($role_access_menu[$action] == "0") {
                if ($redirect == True) {
                    // set_flashdata("msg", swalfire("Access Denied Menu Action Denied", "error"));
                    redirect(base_url("auth/forbidden"));
                } else {
                    return false;
                }
            } else {
                return true;
            } 
        } else {
            if ($redirect == True) {
                set_flashdata("msg", swalfire("Access Denied Menu Not Assigned", "error"));
                redirect(base_url("auth"));
            } else {
                return false;
            }
        }
    } else {
        if ($redirect == True) {
            set_flashdata("msg", swalfire("Access Denied Not Logged", "error"));
            redirect(base_url("auth"));
        } else {
            return false;
        }
    }
}

function has_loggedin()
{
    if (userdata("role_id")) {

        redirect(base_url("dashboard"));
    }
}

function has_loggedin_customer()
{
    if (userdata("id_users_customer")) {

        redirect(base_url());
    }
}

//helper
function dateformat($after, $before, $time)
{
    return date($after, DateTime::createFromFormat($before, $time)->getTimestamp());
}
function hari($num)
{
    $hari = ['Minggu', "Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu"];
    return $hari[$num];
}
function comma($value, $count=2)
{
    return number_format((float)$value, $count, '.', '');
}
function badge($title="DEFAULT", $color='success'){
    return '<div class="badge badge-'.$color.'">'.$title.'</div>';
}
function rupiah($angka){
	
	$hasil_rupiah = "Rp " . number_format($angka,2,',','.');
	return $hasil_rupiah;
 
}
function uniqcode()
{
    return implode('-',str_split(rand(100000000,999999999),3));
}
