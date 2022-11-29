<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include("application/helpers/helper_helper.php");

$mainerror = [
	"type" => get_class($exception),
	"message" => $message,
	"filename" => $exception->getFile(),
	"line_number"  => $exception->getLine()
];

if (defined('SHOW_DEBUG_BACKTRACE') && SHOW_DEBUG_BACKTRACE === TRUE) {
	$SHOW_DEBUG_BACKTRACE = [];
	foreach ($exception->getTrace() as $error) {
		if (isset($error['file']) && strpos($error['file'], realpath(BASEPATH)) !== 0) {
			array_push($SHOW_DEBUG_BACKTRACE, [
				"file" => $error['file'],
				"line" => $error['line'],
				"function" => $error['function']
			]);
		}
	}
	$mainerror["SHOW_DEBUG_BACKTRACE"] = $SHOW_DEBUG_BACKTRACE;
}

echo jsonify($mainerror, 500);
// echo json_encode(["data" => $error, "code" => 500], JSON_PRETTY_PRINT);
?>
