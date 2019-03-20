

<div class="panel panel-default col-md-6">
  <div class="panel-heading">
    <h3 class="panel-title">Add a Set</h3>
  </div>
  <div class="panel-body">
    <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
    	 <div class="form-group">
    		<label>WeekID</label>
    		<input type="text" name="wid" class="form-control" />
    	</div>
		<div class="form-group">
    		<label>F1</label>
    		<input type="text" name="f1" class="form-control" />
    	</div>
    	<div class="form-group">
    		<label>F2</label>
    		<input type="text" name="f2" class="form-control" />
    	</div>
		<div class="form-group">
    		<label>F3</label>
    		<input type="text" name="f3" class="form-control" />
    	</div>
			<div class="form-group">
    		<label>F4</label>
    		<input type="text" name="f4" class="form-control" />
    	</div>
			<div class="form-group">
    		<label>F5</label>
    		<input type="text" name="f5" class="form-control" />
    	</div>
    	<a class="btn btn-primary" name="submit" type="submit" value="Submit" href="<?php echo ROOT_PATH; ?>Recipes">Submit </a>
			
    </form>
  </div>
</div>


<div class="col-md-6">
<span>List of recipes </span>

	<?php foreach($viewmodel as $item) : ?>
		
		<div class="col-md-12">
		
			ID: <?php echo $item['id']; ?>
			, Name: <?php echo $item['name']; ?>
			, Time: <?php echo $item['cookTime']; ?>
		
		</div>
		
	<?php endforeach; ?>
</div>