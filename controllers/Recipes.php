<?php
class Recipes extends Controller{

    protected function Index(){
        $viewmodel = new RecipesModel();
        $this->returnView($viewmodel->Index(), true);
    }
    
    protected function single(){
		$viewmodel = new RecipesModel();
		$this->returnView($viewmodel->single(), true);
	}

    
    protected function deals(){
		$viewmodel = new RecipesModel();
		$this->returnView($viewmodel->deals(), true);
    }
    
    protected function add(){
      $viewmodel = new RecipesModel();
      $this->returnView($viewmodel->add(), true);    
    }
    
    protected function edit(){
      $viewmodel = new RecipesModel();
      $this->returnView($viewmodel->edit(), true);
    }
}