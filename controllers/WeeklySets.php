<?php
class WeeklySets extends Controller{
	
	protected function Index(){
		$viewmodel = new WeeklySetsModel();
		$this->returnView($viewmodel->Index(), true);
	}
	
	protected function Add(){
		$viewmodel = new WeeklySetsModel();
		$this->returnView($viewmodel->add(), true);
	}
	
	protected function edit(){
		$viewmodel = new WeeklySetsModel();
		$this->returnView($viewmodel->edit(), true);
	}
	
}
?>
