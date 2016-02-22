<?php
/* Attempts a MySQL server connection with default credentials */
$link = mysqli_connect("localhost", "root", "root", "hospital database");
 
// Check's connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$PatientID = mysqli_real_escape_string($link, $_POST['PatientID']);
$FirstName = mysqli_real_escape_string($link, $_POST['FirstName']);
$LastName = mysqli_real_escape_string($link, $_POST['LastName']);
$Address = mysqli_real_escape_string($link, $_POST['Address']);
$City = mysqli_real_escape_string($link, $_POST['City']);
$State = mysqli_real_escape_string($link, $_POST['State']);
$ZipCode = mysqli_real_escape_string($link, $_POST['ZipCode']);
 
// attempt insert query execution
$sql = "INSERT INTO patient (PatientID, FirstName, LastName, Address, City, State, ZipCode) 
VALUES ('$PatientID','$FirstName','$LastName','$Address','$City','$State','$ZipCode')";

if(mysqli_query($link, $sql)){
    echo "Records added successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// close connection
mysqli_close($link);
?>