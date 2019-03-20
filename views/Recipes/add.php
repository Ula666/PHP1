<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Add a Recipe!</h3>
  </div>
	
  <div class="panel-body">

    <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
    	<div class="form-group">
    		<label>Recipe name</label>
    		<input type="text" name="name" class="form-control" />
        </div>
        <div class="form-group">
    		<label>Category</label>
    		<input type="text" name="category" class="form-control" />
    	</div>
    	<div class="form-group">
    		<label>Ingredients</label>
    		<textarea name="ingredients" class="form-control"></textarea>
        </div>
        <div class="form-group">
    		<label>Preparation</label>
    		<textarea name="preparation" class="form-control"></textarea>
    	</div>
    	<div class="form-group">
    		<label>Cooking Time</label>
    		<input type="text" name="cookTime" class="form-control" />
    	</div>
    	<a class="btn btn-primary" name="submit" type="submit" value="Submit" href="<?php echo ROOT_PATH; ?>Recipes">Submit </a>
      <a class="btn btn-danger" href="<?php echo ROOT_PATH; ?>Recipes">Cancel</a>
    </form>
  </div>
</div>