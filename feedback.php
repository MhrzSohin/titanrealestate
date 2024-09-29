
<?php
include("config.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $uid = $_POST['uid']; // Assuming you have a user session or a way to get user id
    $fdescription = $_POST['fdescription'];
    $status = 'pending'; // Default status for new feedback
    $date = date('Y-m-d');

    // Insert feedback into the database
    $sql = "INSERT INTO feedback (uid, fdescription, status, date) VALUES ('$uid', '$fdescription', '$status', '$date')";
    if (mysqli_query($con, $sql)) {
        $msg = "<p class='alert alert-success'>Feedback submitted successfully.</p>";
    } else {
        $msg = "<p class='alert alert-danger'>Error submitting feedback.</p>";
    }
    mysqli_close($con);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submit Feedback</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h3>Submit Your Feedback</h3>
    <?php if (isset($msg)) echo $msg; ?>
    <form action="feedback.php" method="post">
        <input type="hidden" name="uid" value="<?php echo $uid; ?>" /> <!-- Assuming user id comes from session or passed -->
        <label for="fdescription">Feedback:</label>
        <textarea name="fdescription" required></textarea>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
