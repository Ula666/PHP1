<?php
class WeeklySetsModel extends Model{
	public function Index(){
		
		//Display all Weekly Sets
		$this->query('SELECT * FROM WeeklySets');
		$rows = $this->resultSet();
		return $rows;
		
	}
	//Edit Weekly Set
	public function edit(){
		$post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);
		if($post['submit']){
			
			if (isset($post['live'])){
			$live = 1;	
			}else{
			$live = 0;
			}
			
			
			$this->query('UPDATE WeeklySets SET f1='. $post['f1'].', live='. $live.' where wid= '. $post['wid'].' ');
			$this->execute();
			
				
		}
		$this->query('SELECT * FROM WeeklySets where wid = '. $_GET["id"] .'');
		$rows = $this->resultSet();
		return $rows;
		}
			
	//Add Weekly Set
	public function add(){
		// Sanitize POST
		$post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

		if($post['submit']){
			// Insert into MySQL
			$this->query('INSERT INTO WeeklySets (wid, f1, f2, f3, f4, f5) VALUES(:wid, :f1, :f2, :f3, :f4, :f5)');
			$this->bind(':wid', $post['wid']);
			$this->bind(':f1', $post['f1']);
			$this->bind(':f2', $post['f2']);
			$this->bind(':f3', $post['f3']);
			$this->bind(':f4', $post['f4']);
			$this->bind(':f5', $post['f5']);
			$this->execute();
			// Verify
			
				if($this->lastInsertId()){
				// Redirect
				header('Location: '.ROOT_URL.'WeeklySets');
				}
			}
			
		$this->query('SELECT * FROM Recipes');
		$rows = $this->resultSet();
		return $rows;
			
		return;
		
		}
	

		
		

}