<?php

/* Attempts a MySQL server connection with default credentials */
$link = mysqli_connect("localhost", "root", "root", "hospital database");
 
// Check's connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
mysql_select_db("patient", $con);

$PatientID =$_POST['PatientID'];
$FirstName =$_POST['FirstName'];
$LastName =$_POST['LastName'];
$Address =$_POST['Address'];
$City =$_POST['City'];
$State =$_POST['State'];
$ZipCode =$_POST['ZipCode'];

    $query = "INSERT INTO patient VALUES ('$PatientID','$FirstName','$LastName','$Address','$City','$State','$ZipCode')";

    $resource = mysql_query($query) 
        or die (mysql_error());

?>