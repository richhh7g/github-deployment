<?php

require_once '../vendor/autoload.php';

use App\HelloWorld;

$instance = new HelloWorld();

var_dump($instance->message());
