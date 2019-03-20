<div>

<a class="btn btn-success btn-recipe" href="<?php echo ROOT_PATH; ?>WeeklySets/add">Add Weekly Set</a>
<?php foreach($viewmodel as $item) : ?>
		<div class="well">
		<label>Week ID</label>
		    <h3><?php echo $item['wid']; ?></h3>
			<label>First recipe id: </label>
			<?php echo $item['f1']; ?>
			<br>
			<label>Second recipe id: </label>
			<?php echo $item['f2']; ?>
			<br>
			<label>Third recipe id: </label>
			<?php echo $item['f3']; ?>
			<br>
			<label>Fourth recipe id: </label>
			<?php echo $item['f4']; ?>
			<br>
			<label>Fith recipe id: </label>
			<?php echo $item['f5']; ?>
			<br>
			<label>Active week: </label>
			<?php echo $item['live']; ?>
			<br>
			<a class="btn btn-success btn-recipe" href="<?php echo ROOT_PATH; ?>WeeklySets/edit<?php echo $item['wid']; ?>">Edit</a>
			
		</div>
	<?php endforeach; ?>

</div>