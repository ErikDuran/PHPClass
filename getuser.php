<!DOCTYPE html>
<html>
<head>
<style>
table, td, th {    
    border: 1px solid #ddd;
    text-align: left;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 15px;
}
    
th {
    background-color: #4CAF50;
    color: white;
}
</style>
</head>
<body>

<?php
$q = intval($_GET['q']);

/* Attempts a MySQL server connection with default credentials */
$link = mysqli_connect("localhost", "root", "root", "hospital database");
 
// Check's connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
//Grabs matching patient from the value in the dropdown list, which matches to PatientID from database 
$sql="SELECT * FROM patient WHERE PatientID = '".$q."'";
$result = mysqli_query($link,$sql);
//creates table to put data in
echo "<table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Zip Code</th>
        </tr>";
while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
    echo "<td>" . $row['FirstName'] . "</td>";
    echo "<td>" . $row['LastName'] . "</td>";
    echo "<td>" . $row['Address'] . "</td>";
    echo "<td>" . $row['City'] . "</td>";
    echo "<td>" . $row['State'] . "</td>";
    echo "<td>" . $row['ZipCode'] . "</td>";
    echo "</tr>";
}
echo "</table>";
mysqli_close($link);
?>
</body>
</html>
 