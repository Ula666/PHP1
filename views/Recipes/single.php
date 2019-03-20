<div>
	<?php foreach($viewmodel as $item) : ?>
		<div class="well">
			<h3></b><p><?php echo $item['name']; ?></p></h3>
			<img src="http://localhost/vegi/assets/img/<?php echo $item['img']; ?>" height="200px">
			<br>
			<b>Category: </b><p><?php echo $item['category']; ?></p>
			<b>Ingredients: </b><p><?php echo $item['ingredients']; ?></p>
			<b>Preparation: </b><p><?php echo $item['preparation']; ?></p>
			<b>Cooking Time: </b><small><?php echo $item['cookTime']; ?></small>
			<br>
		</div>
		<a class="btn btn-primary" name="back" href="<?php echo ROOT_PATH; ?>Recipes/deals">Go Back </a>
	<?php endforeach; ?>
</div>