<?php 
ini_set('session.cache_limiter','public');
session_cache_limiter(false);
session_start();
include("config.php");
								
?>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Meta Tags -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="images/favicon.ico">

<!--	Fonts
	========================================================-->
<link href="https://fonts.googleapis.com/css?family=Muli:400,400i,500,600,700&amp;display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Comfortaa:400,700" rel="stylesheet">

<!--	Css Link
	========================================================-->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-slider.css">
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css/layerslider.css">
<link rel="stylesheet" type="text/css" href="css/color.css" id="color-change">
<link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="fonts/flaticon/flaticon.css">
<link rel="stylesheet" type="text/css" href="css/style.css">

<!--	Title
	=========================================================-->
<title> Titan Real Estate</title>
</head>
<body>
<div id="page-wrapper">
    <div class="row"> 
        <!--	Header start  -->
		<?php include("include/header.php");?>
        <!--	Header end  -->
<!-- 			Banner Start   -->
        <!-- <div class="overlay-black w-100 slider-banner1 position-relative" style="background-image: url('images/banner/rshmpg.jpg'); background-size: cover; background-position: center center; background-repeat: no-repeat;">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-lg-12">
                        <div class="text-white">
                            <h1 class="mb-4"><span class="text-success">Welcome To</span><br>
                            Titan Real Estate</h1>
                            <form method="post" action="propertygrid.php">
                                <div class="row">
                                    <div class="col-md-6 col-lg-2">
                                        <div class="form-group">
                                            <select class="form-control" name="type">
                                                <option value="">Select Type</option>
												<option value="apartment">Apartment</option>
												<option value="flat">Flat</option>
												<option value="building">Building</option>
												<option value="house">House</option>
												<option value="villa">Villa</option>
												<option value="office">Office</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-2">
                                        <div class="form-group">
                                            <select class="form-control" name="stype">
                                                <option value="">Select Status</option>
												<option value="rent">Rent</option>
												<option value="sale">Sale</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-lg-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="city" placeholder="Enter City" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-lg-2">
                                        <div class="form-group">
                                            <button type="submit" name="filter" class="btn btn-success w-100">Search Property</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div> --> 
        <!--	Banner End  -->
        
		
        <!--	Recent Properties  -->
        <div class="full-row">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="text-secondary  text-center mb-7" style="color: #ff6b6b; margin-right: 5px;">Properties</h2>
                    </div>
                    
                        </ul>
                    </div> 
                    <div class="col-md-12">
                        <div class="tab-content mt-4" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home">
                                <div class="row">
								
									<?php $query=mysqli_query($con,"SELECT property.*, user.uname,user.utype,user.uimage FROM `property`,`user` WHERE property.uid=user.uid ORDER BY date DESC LIMIT 9");
										while($row=mysqli_fetch_array($query))
										{
									?>
								
                                    <div class="col-md-6 col-lg-4">
                                        <div class="featured-thumb  mb-4">
                                            <div class="overlay-black overflow-hidden position-relative" > <img src="admin/property/<?php echo $row['18'];?>" alt="pimage">
                                                
                                                
                                                <div class="price"style="color: white;" ><b>Rs.<?php echo $row['13'];?> </b><span class="text-white" style="color: #ff6b6b;"><?php echo $row['12'];?> Sqft</span></div>
                                            </div>
                                            <div class="featured-thumb-data shadow-one">
                                                <div class="p-3">
                                                    <h5 class="text-secondary hover-text-success mb-2 text-capitalize"><a href="propertydetail.php?pid=<?php echo $row['0'];?>"><?php echo $row['1'];?></a></h5>
                                                    <span class="location text-capitalize"><i class="fas fa-map-marker-alt " style="color:#ff6b6b";></i> <?php echo $row['14'];?></span> </div>
                                                <!-- <div class="bg-gray quantity px-4 pt-4">
                                                    <ul>
                                                        <li><span><?php echo $row['12'];?></span> Sqft</li>
                                                        <li><span><?php echo $row['6'];?></span> Beds</li>
                                                        <li><span><?php echo $row['7'];?></span> Baths</li>
                                                        <li><span><?php echo $row['9'];?></span> Kitchen</li>
                                                        <li><span><?php echo $row['8'];?></span> Balcony</li>
                                                        
                                                    </ul>
                                                </div> -->
                                                <!-- <div class="p-4 d-inline-block w-100">
                                                    <div class="float-left text-capitalize"><i class="fas fa-user text-success mr-1"></i>By : <?php echo $row['uname'];?></div>
                                                    <div class="float-right"><i class="far fa-calendar-alt text-success mr-1"></i> <?php echo date('d-m-Y', strtotime($row['date']));?></div> 
                                                </div> -->
                                            </div>
                                        </div>
                                    </div>
									<?php } ?>

                                </div>
                            </div>
                            
                            
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<!--	Recent Properties  -->
        
       
		
		
        
        <!--	Achievement
        ============================================================-->
        <div >
    <div class="container">
        <div class="fact-counter">
            <div class="row justify-content-center">
                <!-- Property Available -->
                <div class="col-md-3 mb-4">
                    <div class="text-center p-4" style="background-color: #ff6b6b; border-radius: 8px;">
                        <i class="flaticon-house flat-large text-white mb-3" style="font-size: 40px;" aria-hidden="true"></i>
                        <?php
                            $query = mysqli_query($con, "SELECT count(pid) FROM property");
                            while ($row = mysqli_fetch_array($query)) {
                        ?>
                        <div class="my-3" style="color: white; font-size: 28px;">
                            <?php 
                                $total = $row[0];
                                echo $total;
                            ?>
                        </div>
                        <?php } ?>
                        <div class="text-white h5">Properties Available</div>
                    </div>
                </div>

                <!-- Sale Property Available -->
                <div class="col-md-3 mb-4">
                    <div class="text-center p-4" style="background-color: #ff6b6b; border-radius: 8px;">
                        <i class="flaticon-house flat-large text-white mb-3" style="font-size: 40px;" aria-hidden="true"></i>
                        <?php
                            $query = mysqli_query($con, "SELECT count(pid) FROM property WHERE stype='sale'");
                            while ($row = mysqli_fetch_array($query)) {
                        ?>
                        <div class="my-3" style="color: white; font-size: 28px;">
                            <?php 
                                $total = $row[0];
                                echo $total;
                            ?>
                        </div>
                        <?php } ?>
                        <div class="text-white h5">Sale Properties</div>
                    </div>
                </div>

                <!-- Rent Property Available -->
                <div class="col-md-3 mb-4">
                    <div class="text-center p-4" style="background-color: #ff6b6b; border-radius: 8px;">
                        <i class="flaticon-house flat-large text-white mb-3" style="font-size: 40px;" aria-hidden="true"></i>
                        <?php
                            $query = mysqli_query($con, "SELECT count(pid) FROM property WHERE stype='rent'");
                            while ($row = mysqli_fetch_array($query)) {
                        ?>
                        <div class="my-3" style="color: white; font-size: 28px;">
                            <?php 
                                $total = $row[0];
                                echo $total;
                            ?>
                        </div>
                        <?php } ?>
                        <div class="text-white h5">Rent Properties</div>
                    </div>
                </div>

                <!-- Registered Users -->
                <div class="col-md-3 mb-4">
                    <div class="text-center p-4" style="background-color: #ff6b6b; border-radius: 8px;">
                        <i class="flaticon-man flat-large text-white mb-3" style="font-size: 40px;" aria-hidden="true"></i>
                        <?php
                            $query = mysqli_query($con, "SELECT count(uid) FROM user");
                            while ($row = mysqli_fetch_array($query)) {
                        ?>
                        <div class="my-3" style="color: white; font-size: 28px;">
                            <?php 
                                $total = $row[0];
                                echo $total;
                            ?>
                        </div>
                        <?php } ?>
                        <div class="text-white h5">Registered Users</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

        
        
		
		<!--	Testonomial -->
        <div class="full-row">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="content-sidebar p-4">
                    <div class="mb-3 col-lg-12">
                        <h4 class="text-secondary position-relative pb-4 mb-4" style="color: #ff6b6b;">Testimonial</h4>
                        <div class="recent-review owl-carousel owl-dots-gray owl-dots-hover-success">
                        
                            <?php
                                $query=mysqli_query($con,"select feedback.*, user.* from feedback,user where feedback.uid=user.uid and feedback.status='1'");
                                while($row=mysqli_fetch_array($query)) {
                            ?>
                            
                            <div class="item">
                                <div class="p-4 position-relative" style="background-color: #ff6b6b; border-radius: 5px;">
                                    <p class="text-white">
                                        <i class="fas fa-quote-left mr-2 text-white"></i>
                                        <?php echo $row['2']; ?>.
                                        <i class="fas fa-quote-right ml-2 text-white"></i>
                                    </p>
                                </div>
                                <div class="p-2 mt-4">
                                    <span class="d-table text-capitalize" style="color: #ff6b6b; font-weight: bold;"><?php echo $row['uname']; ?></span> 
                                    <span class="text-capitalize" style="color: #555;"><?php echo $row['utype']; ?></span>
                                </div>
                            </div>
                            
                            <?php } ?>
                            
                        </div>
                    </div>
                 </div>
            </div>
        </div>
    </div>
</div>

		<!--	Testonomial -->
		
		
        <!--	Footer   start-->
		<?php include("include/footer.php");?>
		<!--	Footer   start-->
        
        
  
    </div>
</div>
<!-- Wrapper End --> 

<!--	Js Link
============================================================--> 
<script src="js/jquery.min.js"></script> 
<!--jQuery Layer Slider --> 
<script src="js/greensock.js"></script> 
<script src="js/layerslider.transitions.js"></script> 
<script src="js/layerslider.kreaturamedia.jquery.js"></script> 
<!--jQuery Layer Slider --> 
<script src="js/popper.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/owl.carousel.min.js"></script> 
<script src="js/tmpl.js"></script> 
<script src="js/jquery.dependClass-0.1.js"></script> 
<script src="js/draggable-0.1.js"></script> 
<script src="js/jquery.slider.js"></script> 
<script src="js/wow.js"></script> 
<script src="js/YouTubePopUp.jquery.js"></script> 
<script src="js/validate.js"></script> 
<script src="js/jquery.cookie.js"></script> 
<script src="js/custom.js"></script>
</body>

</html>