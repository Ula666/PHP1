<html>
<head>
	<title>Vegi Fresh</title>
	<link rel="stylesheet" href="<?php echo ROOT_PATH; ?>assets/css/bootstrap.css">
	<link rel="stylesheet" href="<?php echo ROOT_PATH; ?>assets/css/style.css">
</head>
<body>
	<nav class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">

            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- Website title-->
          <a class="navbar-brand" href="#">Vegi Fresh</a>
        </div>
        <!-- left side navbar-->
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="<?php echo ROOT_URL; ?>">Home</a></li>
            <li><a href="<?php echo ROOT_URL; ?>Recipes/deals/">This Week Recipes</a></li>
          </ul>
          
          
          <!--Right navbar-->
          <ul class="nav navbar-nav navbar-right">
          <!--After logging in-->
            <?php if(isset($_SESSION['is_logged_in'])) : ?>
            <li><a href="<?php echo ROOT_URL; ?>">Welcome <?php echo $_SESSION['user_data']['name']; ?></a></li>
            
            
            
            <li><a href="<?php echo ROOT_URL; ?>Recipes" >Recipes</a></li>
            <li><a href="<?php echo ROOT_URL; ?>WeeklySets" >Weekly Sets</a></li>
            <li><a href="<?php echo ROOT_URL; ?>users/logout">Logout</a></li>
          <?php else : ?>
          <!-- What's displayed if not logged in-->
            <li><a href="<?php echo ROOT_URL; ?>users/login">Login</a></li>
            <li><a href="<?php echo ROOT_URL; ?>users/register">Register</a></li>
          <?php endif; ?>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

    <div class="row">
     	<?php require($view); ?>
     </div>


    </div><!-- /.container -->
</body>
</html>