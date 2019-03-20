<?php
class Users extends Controller{

	protected function Index(){
		$viewmodel = new UsersModel();
		$this->returnView($viewmodel->Index(), true);
	}
	protected function register(){
		$viewmodel = new UsersModel();
		$this->returnView($viewmodel->register(), true);
	}

	protected function login(){
		$viewmodel = new UsersModel();
		$this->returnView($viewmodel->login(), true);
	}

	protected function logout(){
		unset($_SESSION['is_logged_in']);
		unset($_SESSION['user_data']);
		session_destroy();
		// Redirect
		header('Location: '.ROOT_URL);
	}
}