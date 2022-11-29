<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// shell_exec("whoami");
include("application/helpers/helper_helper.php");
echo jsonify(["heading" => $heading, "message" => $message], 404);
?>