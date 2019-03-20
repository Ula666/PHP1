<?php
class RecipesModel extends Model{
	
	public $idd;
	
	public function Index(){
		$this->query('SELECT * FROM Recipes');
		$rows = $this->resultSet();
		return $rows;
		}
	
		public function single(){	
		$this->query('SELECT * FROM Recipes where id = '. $_GET["id"] .' ');
		$rows = $this->resultSet();
		echo $this->idd;
		return $rows;
		}
		
		public function deals(){	
		$this->query('SELECT * FROM WeeklySets WHERE live = 1 ');
		$rows = $this->resultSet();
		$this->query('SELECT * FROM Recipes WHERE id = '.$rows[0]['f1'].' OR id = '.$rows[0]['f2'].' OR id = '.$rows[0]['f3'].' OR id = '.$rows[0]['f4'].' OR id = '.$rows[0]['f5'].' ');
		$rows = $this->resultSet();
		return $rows;
		}
		
		//Edit a Recipe function
		public function edit(){
			$post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);
			if($post['submit']){
				$name = $post['name'];
				$category = $post['category'];
				$ingredients = $post['ingredients'];
				$preparation = $post['preparation'];
				$cookTime = $post['cookTime'];
			
			$this->query('UPDATE Recipes SET name = :name, category = :category, ingredients = :ingredients, preparation = :preparation WHERE id = :id');
			$this->bind(':name', $post['name']);
			$this->bind(':category', $post['category']);
			$this->bind(':ingredients', $post['ingredients']);
            $this->bind(':preparation', $post['preparation']);
            $this->bind(':cookTime', $post['cookTime']);
			$this->execute();
			}
			
		$this->query('SELECT * FROM Recipes where id = '. $_GET["id"] .'');
		$rows = $this->resultSet();
		return $rows;
		}
		
		//Add a Recipe function
		public function add(){
		// Sanitize POST
		$post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

		if($post['submit']){
			
			// Insert into MySQL
			$this->query('INSERT INTO Recipes (name, category, ingredients, preparation, cookTime) VALUES(:name, :category, :ingredients, :preparation, :cookTime)');
			$this->bind(':name', $post['name']);
			$this->bind(':category', $post['category']);
			$this->bind(':ingredients', $post['ingredients']);
            $this->bind(':preparation', $post['preparation']);
            $this->bind(':cookTime', $post['cookTime']);
			$this->execute();
			// Verify
			if($this->lastInsertId()){
				// Redirect
				header('Location: '.ROOT_URL.'Recipes');
			}
		}
		return;
		
	}
}