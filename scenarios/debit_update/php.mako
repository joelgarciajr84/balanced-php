%if mode == 'definition':
Balanced\Debit->save()

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-YnjW61zGxEdhpzkBcohFZ2bZhjrdtbDW";

$debit = Balanced\Debit::get("/debits/WD366ydsunkOBVEgGot9ReFi");
$debit->description = "New description for debit";
$debit->meta = array(
    "anykey" => "valuegoeshere",
    "facebook.id" => "1234567890",
);
$debit->save();

?>
%endif