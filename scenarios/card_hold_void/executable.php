<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0";

$hold = Balanced\CardHold::get("/card_holds/HL2U14YhpFdRACfJzlQNFI7m");
$hold->void();

?>