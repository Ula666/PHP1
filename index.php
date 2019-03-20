<?php

// Start Session
session_start();

// Include Config
require('config.php');

require('classes/Bootstrap.php');
require('classes/Controller.php');
require('classes/Model.php');


require('controllers/Home.php');
require('controllers/Recipes.php');
require('controllers/users.php');
require('controllers/WeeklySets.php');

require('models/Home.php');
require('models/Recipes.php');
require('models/users.php');
require('models/WeeklySets.php');

$bootstrap = new Bootstrap($_GET);
$controller = $bootstrap->createController();
if($controller){
    $controller->executeAction();
}

