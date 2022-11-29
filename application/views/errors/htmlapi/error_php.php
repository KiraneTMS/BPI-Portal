<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include("application/helpers/helper_helper.php");

$mainerror = [
	"severity" => $severity,
	"message" =>  $message,
	"filename" => $filepath,
	"line_number" => $line
];

if (defined('SHOW_DEBUG_BACKTRACE') && SHOW_DEBUG_BACKTRACE === TRUE){
	$SHOW_DEBUG_BACKTRACE = [];
	foreach (debug_backtrace() as $error){
		if (isset($error['file']) && strpos($error['file'], realpath(BASEPATH)) !== 0){
			array_push($SHOW_DEBUG_BACKTRACE, [
				"File" => $error['file'],
				"Line" => $error['line'],
				"Function" => $error['function'],
			]);
		}
	}
	$mainerror['SHOW_DEBUG_BACKTRACE'] = $SHOW_DEBUG_BACKTRACE;
}

echo jsonify($mainerror, 500);
// echo json_encode(["data" => $error, "code" => 500], JSON_PRETTY_PRINT);
?>
