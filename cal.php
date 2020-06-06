
<?php
header("Access-Control-Allow-Origin: *");
ini_set("allow_url_fopen", 1);
include_once("function.php");
$api = $_GET['api_key'];

if($api == 'CNL2C8VD')
{
include("connect.php");


$response = array();

$midterm = $_REQUEST['midterm'];
$yearOfEdu = $_REQUEST['yearOfEdu'];
$GPAX = $_REQUEST['GPAX'];
$subject = $_REQUEST['subject'];
$instructor = $_REQUEST['instructor'];
$knowledge = $_REQUEST['knowledge'];
$dohomeWork = $_REQUEST['dohomeWork'];
$takeAclass = $_REQUEST['takeAclass'];

/*
$query = "SELECT * FROM instructor where id = '$instructor'";
$result = pg_query($query);
while ($row = pg_fetch_assoc($result)) { 
	$w_i = $row['id'];
}	

$query2 = "SELECT * FROM subject where id = '$subject'";
$result2 = pg_query($query2);
while ($row2 = pg_fetch_assoc($result2)) { 
	$w_s = $row2['id'];
}	

$R1 = ($yearOfEdu + $GPAX + $subject + $instructor);
$R2 = ((($R1 - 5.5)/11.5)*100)+$midterm;
$state = "";
if($R2 >= 80){
	$state = 200;
}else
{
		$R3 = $R1 + $knowledge + $dohomeWork + $takeAclass;
		$R4 = ((($R3 - 8.5)/17)*100) + $midterm;
		if ($R4 >= 80)
			$state = 200;
		else
			$state = 100;
}

$response["R1"] = $R1;
$response["R2"] = $R2;
$response["R3"] = $R3;
$response["R4"] = $R4;
*/
$a = $midterm * (50/100); //13.33
$b = $yearOfEdu * 1.67; // 5.01
$c = $subject * 5; //5
$d = $instructor *13.33;  // 13.33
$e = $knowledge * 3.33; //3.33
$f = $dohomeWork * 6.7; 
$h = $takeAclass * 3.33;

$finish = $a + $b + $c + $d + $e + $f + $h;

if ($finish >= 70)
	$state = 200;
else
    $state = 100;

$response["finish"] = $finish;
$response["state"] = $state;
$json = json_encode( $response, JSON_UNESCAPED_UNICODE );   
echo $json;


$time = date("Y-m-d H:i:s",time());
$queryx = "INSERT INTO knowledge(academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, timestamp)
	VALUES ('$yearOfEdu', '$subject', '$instructor', '$GPAX', '$knowledge', '$dohomeWork', '$takeAclass', '$time')";
$result = pg_query($queryx); 
}
?>