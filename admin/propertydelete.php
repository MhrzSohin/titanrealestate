<?php
include("config.php");
$pid = $_GET['id'];

// First delete associated records in the user_interactions table
$sql1 = "DELETE FROM user_interactions WHERE pid = {$pid}";
$result1 = mysqli_query($con, $sql1);

// Now delete the property
$sql2 = "DELETE FROM property WHERE pid = {$pid}";
$result2 = mysqli_query($con, $sql2);

if($result2 == true)
{
    $msg="<p class='alert alert-success'>Property Deleted</p>";
    header("Location:propertyview.php?msg=$msg");
}
else{
    $msg="<p class='alert alert-warning'>Property Not Deleted</p>";
    header("Location:propertyview.php?msg=$msg");
}
mysqli_close($con);

?>