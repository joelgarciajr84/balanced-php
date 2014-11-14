<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-YnjW61zGxEdhpzkBcohFZ2bZhjrdtbDW";

$callback = new Balanced\Callback(array(
  "url" => "http://www.example.com/callback"
));
$callback->save();

?>