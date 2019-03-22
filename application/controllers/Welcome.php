<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function index()
	{
		$this->load->view('welcome_message');
	}

	public function submit()
	{
		$response = ['status' => false, 'error' => [], 'message' => 'Something went wrong'];
		$validation = [
			['field' => 'nama' , 'rules' => 'required'],
			['field' => 'alamat' , 'rules' => 'required'],
			['field' => 'jurusan' , 'rules' => 'required'],
		];

		$this->form_validation->set_rules($validation);

		if($this->form_validation->run()){
			$data = array(
				'nama' => $this->input->post('nama'),
				'alamat' => $this->input->post('alamat'),
				'jurusan' => $this->input->post('jurusan') 
			);
			$this->db->insert('tb_mahasiswa', $data);
			$response = [
				'status' => true,
				'message' => 'Success'
			];
		}else{
			foreach ($_POST as $key => $val) {
				$response['error'][$key] = form_error($key) ? true : false;
			}
		}
		$this->output->set_content_type('application/json')->set_output(json_encode($response));
	}
}
