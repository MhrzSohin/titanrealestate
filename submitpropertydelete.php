<?php
include("config.php");

$pid = mysqli_real_escape_string($con, $_GET['id']); // Sanitize input

// First, delete from the user_interactions table where pid matches
$sql_interactions = "DELETE FROM user_interactions WHERE pid = {$pid}";
$result_interactions = mysqli_query($con, $sql_interactions);

if ($result_interactions) {
    // If the deletion from user_interactions is successful, proceed to delete the property
    $sql_property = "DELETE FROM property WHERE pid = {$pid}";
    $result_property = mysqli_query($con, $sql_property);
    
    if ($result_property) {
        // Success message if property deletion is successful
        $msg = "<p class='alert alert-success'>Property and associated interactions deleted successfully.</p>";
    } else {
        // Error message if property deletion fails
        $msg = "<p class='alert alert-warning'>Property deletion failed: " . mysqli_error($con) . "</p>";
    }
} else {
    // Error message if deletion from user_interactions fails
    $msg = "<p class='alert alert-warning'>Failed to delete user interactions: " . mysqli_error($con) . "</p>";
}

// Redirect to feature.php with a message
header("Location: feature.php?msg=" . urlencode($msg));

mysqli_close($con);
?>
