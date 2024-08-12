<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Role extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model("RoleModel");
	}

	public function index()
	{
		check_rule(false,"is_read",true);

		$data = [
			"title" => "Dashboard"
		];
		view('templates/header', $data);
		view('templates/sidebar');
		view('templates/topbar');
		view('role/index');
		view('templates/footer');
	}

	public function ajax_role()
	{
		check_rule(false,"is_read",true);

		$show = [];
		
		// $i = post("start") + 1;
		foreach ($this->RoleModel->datatable() as $key) {
			
			$data = [];
			// $data[] = $i++;
			$data[] = $key['NamaRole'];
			$action = '';
			if (check_rule(false,"is_update")) {
				$action .= '<a href="'.base_url("role/update/".$key['IDRole']).'" class="badge badge-dark">
				<i class="mt-1 mr-1 mb-1 ml-1 fas fa-edit"></i>
			</a>&nbsp';
			}
			if (check_rule(false,"is_delete")) {
				$action .= '
				<a href="#" data-href="'.base_url("role/delete/".$key['IDRole']).'" class="badge badge-danger" data-toggle="modal" data-target="#confirm-delete">
					<i class="mt-1 mr-1 mb-1 ml-1 fas fa-trash"></i>
				</a>';
			}
			$data[] = $action;
			array_push($show, $data);
		}

		$data = [
			"draw" => post("draw"),
			"data" => $show,
			"recordsFiltered" => $this->RoleModel->get_filtered_data(),
			"recordsTotal" => $this->RoleModel->get_all_data()
		];
		
		echo json_encode($data, JSON_PRETTY_PRINT);
		// echo json_encode($_POST, JSON_PRETTY_PRINT);
	}
	
	public function tambah()
{
    check_rule(false,"is_create",true);

    set_rules("NamaRole", "Nama Role", "required");

    if ($this->form_validation->run() == False) {
        $data = [
            "title" => "Dashboard",
            "semua_menu" => json_encode(dbgetwhere("menu", ['is_active' => 1, "is_head" => 0])->result_array())
        ];
        view('templates/header', $data);
        view('templates/sidebar');
        view('templates/topbar');
        view('role/tambah', $data);
        view('templates/footer');    
    } else {
        if (!in_array("1", post("read")) && !in_array("1", post("create")) && !in_array("1", post("update")) && !in_array("1", post("delete"))) {
            set_flashdata("msg", swalfire("Beri Setidaknya 1 Akses", "error"));
            redirect(base_url("role/tambah"));    
        }
        $data = [
            "NamaRole" => post("NamaRole")
        ];
        dbinsert("role", $data);
        $insert_id = $this->db->insert_id();

        for ($i=0; $i < count(post("idmenu")); $i++) { 
            $role_access_menu = [
                "IDRole" => $insert_id,
                "IDMenu" => post("idmenu")[$i],
                "is_read" => post("read")[$i],
                "is_create" => post("create")[$i],
                "is_update" => post("update")[$i],
                "is_delete" => post("delete")[$i]
            ];
            dbinsert("role_access_menu", $role_access_menu);
        }

        // Log the activity
        $activity_description = "Added new role: " . post("NamaRole");
        $user_id = $this->session->userdata('user_id');
        $this->add_aktivitas($activity_description, $user_id);

        set_flashdata("msg", swalfire("Data Role Berhasil Dimasukan", "success"));
        redirect(base_url("role/index"));
    }
}


public function update($id)
{
    check_rule(false,"is_update",true);

    set_rules("NamaRole", "Nama Role", "required");

    if ($this->form_validation->run() == False) {
        $data = [
            "title" => "Dashboard",
            "data" => $this->RoleModel->get_role_by(['IDRole' => $id]),
            "semua_menu" => json_encode(dbgetwhere("menu", ['is_active' => 1])->result_array()),
            "role_access_menu" => json_encode(dbgetwhere("role_access_menu", ['IDRole' => $id])->result_array())
        ];
        view('templates/header', $data);
        view('templates/sidebar');
        view('templates/topbar');
        view('role/update', $data);
        view('templates/footer');    
    } else {
        if (!in_array("1", post("read")) && !in_array("1", post("create")) && !in_array("1", post("update")) && !in_array("1", post("delete"))) {
            set_flashdata("msg", swalfire("Beri Setidaknya 1 Akses", "error"));
            redirect(base_url("role/update/".$id));    
        }

        $data = [
            "NamaRole" => post("NamaRole")
        ];

        dbdelete("role_access_menu", ['IDRole' => $id]);
        for ($i=0; $i < count(post("idmenu")); $i++) { 
            $role_access_menu = [
                "IDRole" => $id,
                "IDMenu" => post("idmenu")[$i],
                "is_read" => post("read")[$i],
                "is_create" => post("create")[$i],
                "is_update" => post("update")[$i],
                "is_delete" => post("delete")[$i]
            ];
            dbinsert("role_access_menu", $role_access_menu);
        }

        // Log the activity
        $activity_description = "Updated role: " . post("NamaRole");
        $user_id = $this->session->userdata('user_id');
        $this->add_aktivitas($activity_description, $user_id);

        $this->RoleModel->update($data, ['IDRole' => $id]);
        set_flashdata("msg", swalfire('Data Role Berhasil Diubah', 'success'));
        redirect(base_url("role/index"));
    }
}

public function delete($id)
{
    check_rule(false,"is_delete",true);

    $role = $this->RoleModel->get_role_by(['IDRole' => $id]);
    
    if (dbgetwhere("user", ['IDRole' => $id])->row_array()) {
        set_flashdata("msg", swalfire("Role Dipakai User", "error"));
        redirect(base_url("role/index"));                
    }
    dbdelete("role_access_menu", ['IDRole' => $id]);
    $this->RoleModel->delete(['IDRole' => $id]);

    // Log the activity
    $activity_description = "Deleted role: " . $role->NamaRole;
    $user_id = $this->session->userdata('user_id');
    $this->add_aktivitas($activity_description, $user_id);

    set_flashdata("msg", "<script>Swal.fire('Success','Data Role Berhasil Dihapus', 'success')</script>");
    redirect(base_url("role/index"));
}


}
