<?php
class UsersModel extends Model{
	public function Index(){
		echo "hello user";
	}
	
		public function register(){
		
		// Sanitize POST
		$post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

		$password = md5($post['password']);

		if($post['submit']){
			if($post['name'] == '' || $post['password'] == ''){
				
			}
			// Insert into MySQL
			$this->query('INSERT INTO users (name, password) VALUES(:name, :password)');
			$this->bind(':name', $post['name']);
			$this->bind(':password', $password);
			$this->execute();
			// Verify
			if($this->lastInsertId()){
				// Redirect
				header('Location: '.ROOT_URL.'users/login');
			}
		}
		return;
	}
	
	    Public function login(){
		// Sanitize POST
		$post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

		$password = md5($post['password']);

		if($post['submit']){
			// Compare Login
			$this->query('SELECT * FROM users WHERE name = :name AND password = :password');
			$this->bind(':name', $post['name']);
			$this->bind(':password', $password);
			
			$row = $this->single();

			if($row){
				session_start();
				$_SESSION['is_logged_in'] = true;
				$_SESSION['user_data'] = array(
					"id"	=> $row['id'],
					"name"	=> $row['name']
				);
				header('Location: '.ROOT_URL.'WeeklySets');
			
			}
		}
		return;
	}
}
