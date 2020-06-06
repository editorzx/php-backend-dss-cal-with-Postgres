<?php
	header("Access-Control-Allow-Origin: *");
	header("Content-Type: text/html; charset=utf-8");
	include_once("function.php");
	$api = $_GET['api'];
	if($api == 'CNL2C8VD')
	{
		$response = array();
		include("connect.php");
		$query = "SELECT * FROM knowledge";
		$result = pg_query($query);
		$response['count'] = pg_num_rows($result);
		echo json_encode( $response, JSON_UNESCAPED_UNICODE );   

		pg_close($dbconn);
	}
	
?>