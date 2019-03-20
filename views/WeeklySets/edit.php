
<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Edit the set</h3>
  </div>
  
  <div class="panel-body">
  
    <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
	<?php foreach($viewmodel as $item) : ?>
	    <div class="form-group">
    		<label>ID</label>
    		<input type="text" name="wid" value="<?=$item['wid']?>" class="form-control" />
    	</div>
    	<div class="form-group">
    		<label>F1</label>
    		<input type="text" name="f1" value="<?=$item['f1']?>" class="form-control" />
    	</div>
    	<div class="form-group">
    		<label>F2</label>
    		<input type="text" name="f2" value="<?=$item['f2']?>" class="form-control" />
    	</div>
    	<div class="form-group">
    		<label>F3</label>
    		<input type="text" name="f3" value="<?=$item['f3']?>" class="form-control" />
    	</div>
			<div class="form-group">
    		<label>F4</label>
    		<input type="text" name="f4" value="<?=$item['f4']?>" class="form-control" />
    	</div>
			<div class="form-group">
    		<label>F5</label>
    		<input type="text" name="f5" value="<?=$item['f5']?>" class="form-control" />
    	</div>

		
		<div class="form-check">
	  <input class="form-check-input position-static" name="live" type="checkbox" id=
		"blankCheckbox" value="1" aria-label="..." <?php if($item['live'] == 1) echo 'checked'; ?>>
	</div>
			
		<?php endforeach; ?>
		
		
		<a class="btn btn-primary" name="submit" type="submit" value="Submit" href="<?php echo ROOT_PATH; ?>WeeklySets">Submit </a>
    <a class="btn btn-danger" href="<?php echo ROOT_PATH; ?>WeeklySets">Cancel</a>
    </form>
	
  </div>
  
</div>






	
