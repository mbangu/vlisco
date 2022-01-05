<?php
	defined('BASEPATH') OR exit('No direct script access allowed');
	class Api extends CI_Controller
	{
		public function login()
		{
			$login = $this->input->post('email');
			$password = $this->input->post('password');
			
			$data = [
				"email" => $login,
				"password" => $password
			];

			$credential = $this->db->get_where('credential', $data)->result_array();
			if(count($credential) > 0)
			{
				echo json_encode($credential);
			}
			else
			{
				echo json_encode("false");
			}

		}

		public function register()
		{
			$name = $this->input->post("nom");
			$adresse = $this->input->post("adresse");
			$tel = $this->input->post("telephone");
			$email = $this->input->post("email");
			$password = $this->input->post("password");


			$data = [
				"nom" => $name,
				"adresse" => $adresse,
				"telephone" => $tel,
				"email" => $email,
				"password" => $password
			];

			$credential = $this->db->insert("credential", $data);
			if($credential)
			{
				echo json_encode("true");
			}
			else
			{
				echo json_encode("false");
			}
		}
	}
?>
