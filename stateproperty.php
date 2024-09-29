<?php 
ini_set('session.cache_limiter','public');
session_cache_limiter(false);
session_start();
include("config.php");

// Check if 'id' is set in the request, and assign it to $state
if (isset($_REQUEST['id']) && !empty($_REQUEST['id'])) {
    $state = $_REQUEST['id'];
    
    // Use prepared statements to prevent SQL Injection
    $stmt = $con->prepare("SELECT property.*, user.uname, user.utype, user.uimage 
                           FROM property 
                           JOIN user ON property.uid = user.uid 
                           WHERE state = ?");
    $stmt->bind_param("s", $state);
    $stmt->execute();
    $result = $stmt->get_result();
} else {
    echo "State ID is not provided!";
    exit; // Exit the script if 'id' is not set
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Real Estate PHP">
    <meta name="author" content="Unicoder">
    <link rel="shortcut icon" href="images/favicon.ico">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,500,600,700&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Comfortaa:400,700" rel="stylesheet">

    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-slider.css">
    <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="css/layerslider.css">
    <link rel="stylesheet" type="text/css" href="css/color.css" id="color-change">
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="fonts/flaticon/flaticon.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <title>Real Estate PHP</title>
</head>
<body>
<div id="page-wrapper">
    <div class="row"> 
        <!-- Header -->
        <?php include("include/header.php"); ?>
        
        <!-- Property Grid -->
        <div class="full-row">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="row">
                            <?php 
                            while ($row = $result->fetch_assoc()) {
                                // Image lazy loading and improved naming
                                $propertyImage = $row['pimage'];
                                $propertyTitle = $row['title'];
                                $propertyType = $row['type'];
                                $propertyPrice = $row['price'];
                                $propertySize = $row['size'];
                                $propertyLocation = $row['location'];
                                $userName = $row['uname'];
                                $propertyDate = date('d-m-Y', strtotime($row['date']));
                            ?>
                            <div class="col-md-6">
                                <div class="featured-thumb hover-zoomer mb-4">
                                    <div class="overlay-black overflow-hidden position-relative">
                                        <img src="admin/property/<?php echo $propertyImage;?>" alt="Property Image" loading="lazy">
                                        <div class="sale bg-success text-white">For <?php echo $propertyType;?></div>
                                        <div class="price text-primary text-capitalize">
                                            $<?php echo $propertyPrice;?> <span class="text-white"><?php echo $propertySize;?> Sqft</span>
                                        </div>
                                    </div>
                                    <div class="featured-thumb-data shadow-one">
                                        <div class="p-4">
                                            <h5 class="text-secondary hover-text-success mb-2 text-capitalize">
                                                <a href="propertydetail.php?pid=<?php echo $row['pid'];?>"><?php echo $propertyTitle;?></a>
                                            </h5>
                                            <span class="location text-capitalize"><i class="fas fa-map-marker-alt text-success"></i> <?php echo $propertyLocation;?></span>
                                        </div>
                                        <div class="px-4 pb-4 d-inline-block w-100">
                                            <div class="float-left text-capitalize"><i class="fas fa-user text-success mr-1"></i>By: <?php echo $userName;?></div>
                                            <div class="float-right"><i class="far fa-calendar-alt text-success mr-1"></i> <?php echo $propertyDate;?></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                    
                    <div class="col-lg-4">
                        <!-- Instalment Calculator -->
                        <div class="sidebar-widget">
                            <h4 class="double-down-line-left text-secondary position-relative pb-4 my-4">Instalment Calculator</h4>
                            <form class="d-inline-block w-100" action="calc.php" method="post">
                                <div class="input-group mb-2 mr-sm-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">$</div>
                                    </div>
                                    <input type="text" class="form-control" name="amount" placeholder="Property Price">
                                </div>
                                <div class="input-group mb-2 mr-sm-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="far fa-calendar-alt"></i></div>
                                    </div>
                                    <input type="text" class="form-control" name="month" placeholder="Duration Year">
                                </div>
                                <div class="input-group mb-2 mr-sm-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">%</div>
                                    </div>
                                    <input type="text" class="form-control" name="interest" placeholder="Interest Rate">
                                </div>
                                <button type="submit" value="submit" name="calc" class="btn btn-danger mt-4">Calculate Instalment</button>
                            </form>
                        </div>

                        <!-- Recently Added Properties -->
                        <div class="sidebar-widget mt-5">
                            <h4 class="double-down-line-left text-secondary position-relative pb-4 mb-4">Recently Added Property</h4>
                            <ul class="property_list_widget">
                                <?php 
                                $recentQuery = mysqli_query($con, "SELECT * FROM `property` ORDER BY date DESC LIMIT 6");
                                while ($recentRow = mysqli_fetch_array($recentQuery)) {
                                    $recentImage = $recentRow['pimage'];
                                    $recentTitle = $recentRow['title'];
                                    $recentLocation = $recentRow['location'];
                                ?>
                                <li>
                                    <img src="admin/property/<?php echo $recentImage;?>" alt="Recent Property" loading="lazy">
                                    <h6 class="text-secondary hover-text-success text-capitalize">
                                        <a href="propertydetail.php?pid=<?php echo $recentRow['pid'];?>"><?php echo $recentTitle;?></a>
                                    </h6>
                                    <span class="font-14"><i class="fas fa-map-marker-alt icon-success icon-small"></i> <?php echo $recentLocation;?></span>
                                </li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Footer -->
        <?php include("include/footer.php");?>
        
        <!-- Scroll to top --> 
        <a href="#" class="bg-secondary text-white hover-text-secondary" id="scroll"><i class="fas fa-angle-up"></i></a> 
    </div>
</div>

<!-- Js Links -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
