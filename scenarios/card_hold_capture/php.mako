%if mode == 'definition':
Balanced\CardHold->capture();

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-YnjW61zGxEdhpzkBcohFZ2bZhjrdtbDW";

$hold = Balanced\CardHold::get("/card_holds/HL2gi8M6zh2oZKJxeJVMJIFG");
$hold->capture();

?>
%endif