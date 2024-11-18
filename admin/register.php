<?php 
include("config.php");
$error = "";
$msg = "";

if (isset($_POST['insert'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $pass = $_POST['pass'];
    $dob = $_POST['dob'];
    $phone = $_POST['phone'];

    // Check if all fields are filled
    if (!empty($name) && !empty($email) && !empty($pass) && !empty($dob) && !empty($phone)) {

        // Email validation
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $error = "* Invalid email format!";
        }
        // Password validation (minimum 8 characters, at least one number, and one special character)
        elseif (!preg_match("/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/", $pass)) {
            $error = "* Password must be at least 8 characters long, contain at least one letter, one number, and one special character!";
        } else {
            // Hash the password for security
            $hashed_pass = password_hash($pass, PASSWORD_DEFAULT);

            // Sanitize user input before insertion
            $name = mysqli_real_escape_string($con, $name);
            $email = mysqli_real_escape_string($con, $email);
            $dob = mysqli_real_escape_string($con, $dob);
            $phone = mysqli_real_escape_string($con, $phone);

            // Insert query
            $sql = "INSERT INTO admin (auser, aemail, apass, adob, aphone) VALUES ('$name', '$email', '$hashed_pass', '$dob', '$phone')";
            $result = mysqli_query($con, $sql);

            if ($result) {
                $msg = 'Admin Registered Successfully!';
            } else {
                $error = '* Registration failed. Please try again!';
            }
        }
    } else {
        $error = "* Please fill all the fields!";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Admin - Register</title>
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <div class="page-wrappers login-body">
        <div class="login-wrapper">
            <div class="container">
                <div class="loginbox">
                    <div class="login-right">
                        <div class="login-right-wrap">
                            <h1>Register</h1>
                            <p class="account-subtitle">Access to our dashboard</p>
                            <p style="color:red;"><?php echo $error; ?></p>
                            <p style="color:green;"><?php echo $msg; ?></p>
                            <form method="POST">
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="Name" name="name">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="email" placeholder="Email" name="email">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="password" placeholder="Password" name="pass">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="date" placeholder="Date of Birth" name="dob">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="Phone" name="phone" maxlength="10">
                                </div>
                                <div class="form-group mb-0">
                                    <input class="btn btn-primary btn-block" type="submit" name="insert" value="Register">
                                </div>
                            </form>
                            <div class="login-or">
                                <span class="or-line"></span>
                                <span class="span-or">or</span>
                            </div>
                            <div class="text-center dont-have">Already have an account? <a href="index.php">Login</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/script.js"></script>
</body>
</html>
