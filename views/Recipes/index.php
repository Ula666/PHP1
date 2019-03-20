<div>

	<a class="btn btn-success btn-recipe" href="<?php echo ROOT_PATH; ?>Recipes/add">Add a Recipe</a>
	<?php foreach($viewmodel as $item) : ?>
		<div class="well">
		<img src="http://localhost/vegi/assets/img/<?php echo $item['img']; ?>" height="200px">
		<h3><a href="<?php $ROOT_URL ?>/vegi/Recipes/single/<?php echo $item['id']; ?>">
		<?php echo $item['name']; ?>
			</a></h3>
			<b>Category: </b><p><?php echo $item['category']; ?></p>
			<b>Ingredients: </b><p><?php echo $item['ingredients']; ?></p>
			<b>Preparation: </b><p><?php echo $item['preparation']; ?></p>
			<b>Cooking Time: </b><small><?php echo $item['cookTime']; ?></small>
			<br>
			<a class="btn btn-success btn-recipe" href="<?php echo ROOT_PATH; ?>Recipes/edit/<?php echo $item['id']; ?>">Edit</a>
			
			
		</div>
	<?php endforeach; ?>


</div>