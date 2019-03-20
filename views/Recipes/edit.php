<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Edit Recipe</h3>
  </div>
	
  <div class="panel-body">

    <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
    <?php foreach((array)$viewmodel as $item) : ?>
    	<div class="form-group">
    		<label>Recipe name</label>
    		<input type="text" name="name" value="<?=$item['name']?>" class="form-control" />
        </div>
        <div class="form-group">
    		<label>Category</label>
    		<input type="text" name="category" value="<?=$item['category']?>" class="form-control" />
    	</div>
    	<div class="form-group">
    		<label>Ingredients</label>
    		<textarea name="ingredients" value="<?=$item['ingredients']?>" class="form-control"></textarea>
        </div>
        <div class="form-group">
    		<label>Preparation</label>
    		<textarea name="preparation" value="<?=$item['preparation']?>" class="form-control"></textarea>
    	</div>
    	<div class="form-group">
    		<label>Cooking Time</label>
    		<input type="text" name="cookTime" value="<?=$item['cookTime']?>" class="form-control" />
    	</div>
			
		<?php endforeach; ?>

        
    	<a class="btn btn-primary" name="submit" type="submit" value="Submit" href="<?php echo ROOT_PATH; ?>Recipes">Submit </a>
      <a class="btn btn-danger" href="<?php echo ROOT_PATH; ?>Recipes">Cancel</a>
    </form>
  </div>
</div>