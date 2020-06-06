<?php
	$response = array();
    include("connect.php");
	header("Content-Type: text/html; charset=utf-8");
	
	$query = "SELECT * FROM instructor";
    $result = pg_query($query);
	
    while ($row = pg_fetch_assoc($result)) { //pg_fetch_assoc = name , pg_fetch_row = number
        //$response[] = $row;
		
		array_push($response, $row); //Add object to array
   }
   echo json_encode( $response, JSON_UNESCAPED_UNICODE );   
   //echo var_dump($response);
   

	pg_close($dbconn);
	
?>