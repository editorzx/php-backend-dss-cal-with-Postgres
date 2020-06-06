<?php
	header("Access-Control-Allow-Origin: *");
	header("Content-Type: text/html; charset=utf-8");
	include_once("function.php");
	$table = $_GET['base'];
	$api = $_GET['api'];
	if($api == 'CNL2C8VD')
	{
		$response = array();
		include("connect.php");
		if($table == "instructor")
			$query = "SELECT * FROM $table order by name asc";//
		elseif($table == "subject")
			$query = "SELECT * FROM $table order by subject asc";//
			
		$result = pg_query($query);
		
		$i=1;
		while ($row = pg_fetch_assoc($result)) { 
			if($table == "instructor")
			{
				$getname = $row['name'];
				$row['name'] = $i.' : '.$getname;
			}
			elseif($table == "subject")
			{
				$getname = $row['subject'];
				$row['subject'] = $i.' : '.$getname;
			}
			
			
			array_push($response, $row); 
			$i++;
	   }
	   //$json = json_encode( $response, JSON_UNESCAPED_UNICODE );   
	//	echo json_beuty($json);
		echo json_encode( $response, JSON_UNESCAPED_UNICODE );   

		pg_close($dbconn);
	}
	
?>