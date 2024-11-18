<?php 
session_start();
include("config.php");
$error = "";

if (isset($_POST['login'])) {
    $user = $_POST['user'];
    $pass = $_POST['pass'];

    // Sanitize input
    $user = mysqli_real_escape_string($con, $user);
    $pass = mysqli_real_escape_string($con, $pass);

    // Check if both fields are filled
    if (!empty($user) && !empty($pass)) {
        $query = "SELECT auser, apass FROM admin WHERE auser='$user'";
        $result = mysqli_query($con, $query) or die(mysqli_error($con));
        $num_row = mysqli_num_rows($result);
        
        if ($num_row == 1) {
            $row = mysqli_fetch_array($result);
            // Verify the password
            if (password_verify($pass, $row['apass'])) {
                $_SESSION['auser'] = $user;
                header("Location: dashboard.php");
            } else {
                $error = '* Invalid Username or Password';
            }
        } else {
            $error = '* Invalid Username or Password';
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
    <title>Admin - Login</title>
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
                            <h1>Admin Login Panel</h1>
                            <p class="account-subtitle">Access to our dashboard</p>
                            <p style="color:red;"><?php echo $error; ?></p>
                            <form method="POST">
                                <div class="form-group">
                                    <input class="form-control" name="user" type="text" placeholder="User Name">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="password" name="pass" placeholder="Password">
                                </div>
                                <div class="form-group">
                                    <button class="btn btn-primary btn-block" name="login" type="submit">Login</button>
                                </div>
                            </form>
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
