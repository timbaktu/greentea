<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>
    <!--- Basic Page Needs  -->
    <meta charset="utf-8">
    <title>We Think Fitness || Home</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile Specific Meta  -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet">
    <!-- CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/meanmenu.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/typography.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/png" href="img/favicon.ico">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        
        	<script
	    src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js">
	    </script>
	<script
	    src="http://ajax.cdnjs.com/ajax/libs/underscore.js/1.3.3/underscore-min.js" >
	    </script>
	<script
	    src="http://ajax.cdnjs.com/ajax/libs/backbone.js/0.9.2/backbone-min.js" >
	    </script>
	<script type="text/javascript" src="js/wtf/views/exercisePlanView.js"></script>        
        		<link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
		<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
		<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
        
        
</head>

<script type="text/javascript">

	
$( document ).ready(function() {
	debugger;
	// initaially, user is consideres as not logged in 
	$('#header_loggedin').hide();
    $.get("loggedinuser1/", function(data, status){
        debugger;
        // User has credentials
        if(data.username != 'anonymousUser') {
        	$('#header_loggedout').hide();
        	$('#header_loggedin').show();
        	
        	$('#logged_in').text(data.username);
        	
			if(data.userId > 0) {
				window.location.href='exercise-plan.html?id=' + data.userId;
			}
        	

        }
    });
    
    $("#logout").click(function(){
		debugger;
	    $.get("logout/", function(data, status){
			alert('You are logegd out...');
        	$('#header_loggedout').show();
        	$('#header_loggedin').hide();
	    });
    });
	
    
	$( "#registrationformAdd" ).submit(function( event ) {
		 
		  // Stop form from submitting normally
		  event.preventDefault();
		 
		  // Get some values from elements on the page:
		  	var $form = $( this );
		    var email = $form.find( "input[name='email']" ).val();
		    var fname = $form.find( "input[name='fname']" ).val();
		    var lname = $form.find( "input[name='lname']" ).val();
		    var username = $form.find( "input[name='ssoid']" ).val();
		    var password = $form.find( "input[name='password']" ).val();
		    
		    //var data = '{"email": "' + email + '","firstName":"' + fname + '","lastName":"' + lname + '","ssoId":"' + username + '","password":"' + password + '"}';
		    var data = '{"email": "' + email + '","firstName":"' + fname + '","lastName":"' + lname + '","ssoId":"' + username + '","password":"' + password + '"}';
		    url = 'register';
		 
		  // Send the data using post
		  var posting = $.post( url, data);
		 
		  // Put the results in a div
		  posting.done(function( data ) {
		   	debugger;
			var content = $( data ).find( "#content" );
		    $( "#result" ).empty().append( content );
		  });
		});
});
 
</script>

<body data-spy="scroll" data-target="#scroll-menu" data-offset="100">
    <!-- preloader -->
    <div id="preloader"></div>
    <!-- header-start -->
    <header>
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="header-top-left">
                            <ul>
								<li><a href="https://www.instagram.com/wethinkfitness/" target="_blank"><i class="fa fa-instagram"></i></a></li>
								<li><a href="https://www.facebook.com/wethinkfitness/" target="_blank"><i class="fa fa-facebook"></i></a></li>
								<li><a href="https://twitter.com/wethinkfitness" target="_blank"><i class="fa fa-twitter"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    


                    <div class="col-md-6 col-sm-6 col-xs-12" id="header_loggedin">
                        <div class="header-top-right">
                            <div class="single-htr">
                                <i class="fa fa-key"></i>
                                <span id="logged_in"></span>
                            </div>
                            <div class="single-htr">
                                <i class="fa fa-user-times"></i>
                                <span id="logout">Logout</span>
                            </div>
                        </div>
                    </div>
                    
                    
                    <div class="col-md-6 col-sm-6 col-xs-12" id="header_loggedout">
                        <div class="header-top-right">
                            <!-- 
                            <div class="single-htr">
                                <i class="fa fa-shopping-basket"></i>
                                <span>0 iteam - 00$</span>
                            </div>
                             -->
                            <div class="single-htr">
                                <i class="fa fa-key"></i>
                                <span id="sign_in">Sign in</span>
                                <div id="sign_in_form" class="signin-form-area">
                                    <div class="signin-form-area-top">
                                        <h3>We Think <span class="h-light">Fitness</span></h3>
                                        <h6>BE FIT BE HAPPY</h6>
                                        <div class="signin-form">
                                         <c:url var="loginUrl" value="/login" />
						<form action="${loginUrl}" method="post" class="form-horizontal">
							<c:if test="${param.error != null}">
								<div class="alert alert-danger">
									<p>Invalid username and password.</p>
								</div>
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-success">
									<p>You have been logged out successfully.</p>
								</div>
							</c:if>
							<div class="input-group input-sm">
								<label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
								<input type="text" class="form-control" id="username" name="ssoId" placeholder="Enter Username" required>
							</div>
							<div class="input-group input-sm">
								<label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label> 
								<input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
							</div>
							<!-- <div class="input-group input-sm">
                              <div class="checkbox">
                                <label><input type="checkbox" id="rememberme" name="remember-me"> Remember Me</label>  
                              </div>
                            </div> -->
                             <div class="remember-recover clearfix">
                                                    <div class="remember">
                                                        <input type="checkbox">
                                                        <span>Remember me</span>
                                                    </div>
                                                    <div class="recover">
                                                        <a href="#">Recover password</a>
                                                    </div>
                                                </div>
							<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
								<button class="sign-in-btn hover-bs">SIGN IN</button>
                                                <div class="signin-or">
                                                    <span>OR</span>
                                                </div>
							<!-- <div class="form-actions">
								<input type="submit"
									class="btn btn-block btn-primary btn-default" value="Log in">
							</div> -->
						</form>
                                            <!-- <form action="#">
                                                <div class="signin-inputs">
                                                    <div class="input-email">
                                                        <input class="femail" type="text" placeholder="Email" required="">
                                                    </div>
                                                    <div class="input-password">
                                                        <input class="fpass type_password" type="password" placeholder="Password" required="">
                                                        <span class="show-pass">Show</span>
                                                    </div>
                                                </div>
                                                <div class="remember-recover clearfix">
                                                    <div class="remember">
                                                        <input type="checkbox">
                                                        <span>Remember me</span>
                                                    </div>
                                                    <div class="recover">
                                                        <a href="#">Recover password</a>
                                                    </div>
                                                </div>
                                                <button class="sign-in-btn hover-bs">SIGN IN</button>
                                                <div class="signin-or">
                                                    <span>OR</span>
                                                </div>
                                            </form> -->
                                            <button class="reg-by-fb-btn hover-bs">REGISTER WITH FACEBOOK</button>
                                        </div>
                                    </div>
                                    <div class="reg-account">
                                        <p>Don’t have an account?<a href="#">Register</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="single-htr">
                                <i class="fa fa-user-times"></i>
                                <span id="top_reg">Register</span>
                                <div class="register-form-area" id="top_reg_form">
                                    <div class="rf-head">
                                        <span class="rfa-close" id="rfa_close"><i class="fa fa-times"></i></span>
                                        <img src="img/logo-reg.png" alt="">
                                        <p>Join a community of over 4000 people</p>
                                    </div>
                                    <div class="rf-body clearfix">
                                        <div class="rf-body-or-area">
                                            <span>or</span>
                                        </div>
                                        <div class="rf-body-left">
                                            <form action="#" id="registrationformAdd">
                                                <div class="rf-inputs-area">
                                                    <div class="rf-input-email rf-inputs">
                                                        <input class="rf-email" type="email" name="email" placeholder="Email" required="">
                                                    </div>
                                                    <div class="rf-input-name rf-inputs">
                                                        <input class="rf-name" type="text" name="fname" placeholder="First name" required="">
                                                    </div>
                                                    <div class="rf-input-name rf-inputs">
                                                        <input class="rf-name" type="text" name="lname" placeholder="Last name" required="">
                                                    </div>                                                     
                                                    <div class="rf-input-username rf-inputs">
                                                        <input class="rf-username" type="text" name="ssoid" placeholder="Username" required="">
                                                    </div>
                                                    <div class="rf-input-password rf-inputs">
                                                        <input class="rf-password type_password" type="password" name="password" placeholder="Password" required="">
                                                        <span class="show-pass">Show</span>
                                                    </div>
                                                </div>
                                                <div class="rf-checkbox-area">
                                                    <input type="checkbox">
                                                    <p>Sign me up for occasional newslettes and special offers</p>
                                                </div>
                                                <button class="register-btn hover-bs" id="register">REGISTER</button>
                                            </form>
                                        </div>
                                        <div class="rf-body-right">
                                            <button class="reg-by-fb-btn hover-bs">REGISTER WITH FACEBOOK</button>
                                            <p>We wont post to Facebook withour your permission</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu-area hidden-sm hidden-xs">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="logo">
                            <a href="index.html"><img src="img/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="menu">
                            <nav>
                                <ul>
                                    <li><a href="index.html">HOME</a></li>
                                    <li><a href="about-us.html">ABOUT US</a>
                                        <!-- 
                                        <ul class="singel-dropdown">
                                            <li><a href="#">Dropdown Demo</a></li>
                                            <li><a href="#">Dropdown Demo</a></li>
                                            <li><a href="#">Dropdown Demo</a></li>
                                            <li><a href="#">Dropdown Demo</a></li>
                                            <li><a href="#">Dropdown Demo</a></li>
                                            <li><a href="#">Dropdown Demo</a>
                                                <ul class="single-thirdlevel-menu">
                                                    <li><a href="#">Thirdlevel Menu Demo</a></li>
                                                    <li><a href="#">Thirdlevel Menu Demo</a></li>
                                                    <li><a href="#">Thirdlevel Menu Demo</a></li>
                                                    <li><a href="#">Thirdlevel Menu Demo</a></li>
                                                    <li><a href="#">Thirdlevel Menu Demo</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                        -->
                                    </li>
                                    <!-- <li><a href="success-story.html">SUCCESS STORY</a></li> -->
                                    <li><a href="event.html">EVENT</a></li>
                                    <li><a href="blog.html">FITNESS NEWS</a></li>
                                    
                                    <li><a href="contact.html">CONTACT</a>
                                    </li>
                                    <li><a href="index.html">PAGES</a>
                                        <div class="single-megamenu">
                                            <span>
                                                <a href="index.html">Home</a>
                                                <a href="about-us.html">About Us</a>
                                                <a href="blog.html">Fitness News</a>
                                                <a href="blog-details.html">Blog Details</a>
                                                <a href="event.html">Event</a>
                                                <a href="event-details.html">Event Details</a>
                                                <a href="pricing-table.html">Pricing Table</a>
                                            </span>
                                            <span>
                                                
                                                <a href="product-single-page.html">Product Single</a>
                                                <a href="success-story.html">Success Story</a>
                                                <a href="success-story-details.html">Success Story Details</a>
                                                <a href="about-trainer.html">About Trainer</a>
                                                <a href="contact.html">Contact</a>
                                                <a href="my-account.html">My Account</a>
                                            </span>
                                            <span>
                                                <a href="exercise-plan.html">Exercise Plan</a>
                                                <a href="exercise-plan-details.html">Exercise Plan Details</a>
                                                <a href="forgot-password.html">Forgot Password</a>
                                                <a href="login.html">Login</a>
                                                <a href="registration.html">Registration</a>
                                                <a href="profileinformation.html">ProfileInfo</a>
                                            </span>
                                        </div>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="top-search">
                            <form action="#">
                                <span id="search_icon" class="search-icon"><i class="fa fa-search"></i></span>
                                <button class="search-text">SEARCH</button>
                                <input id="search_box" class="search-box" type="text" required="" placeholder="Search Here">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="mobile-menu-area visible-xs visible-sm">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="mobile_menu">
                            <nav id="mobile_menu_active">
                                <ul>
                                    <li><a href="index.html">HOME</a></li>
                                    <li><a href="about-us.html">ABOUT US</a>
                                        <ul>
                                            <li><a href="#">Dropdown Demo</a></li>
                                            <li><a href="#">Dropdown Demo</a></li>
                                            <li><a href="#">Dropdown Demo</a></li>
                                            <li><a href="#">Dropdown Demo</a></li>
                                            <li><a href="#">Dropdown Demo</a>
                                                <ul>
                                                    <li><a href="#">Thirdlevel Menu Demo</a></li>
                                                    <li><a href="#">Thirdlevel Menu Demo</a></li>
                                                    <li><a href="#">Thirdlevel Menu Demo</a></li>
                                                    <li><a href="#">Thirdlevel Menu Demo</a></li>
                                                    <li><a href="#">Thirdlevel Menu Demo</a></li>
                                                    <li><a href="#">Thirdlevel Menu Demo</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <!-- <li><a href="success-story.html">SUCCESS STORY</a></li> -->
                                    <li><a href="event.html">EVENT</a></li>
                                    <li><a href="blog.html">FITNESS NEWS</a></li>
                                    
                                    <li><a href="contact.html">CONTACT</a>
                                    </li>
                                    <li><a href="index.html">PAGES</a>
                                        <ul>
                                            <a href="index.html">Home</a>
                                            <a href="about-us.html">About Us</a>
                                            <a href="blog.html">Fitness News</a>
                                            <a href="blog-details.html">Blog Details</a>
                                            <a href="event.html">Event</a>
                                            <a href="event-details.html">Event Details</a>
                                            <a href="pricing-table.html">Pricing Table</a>
                                            
                                            <a href="product-single-page.html">Product Single</a>
                                            <a href="success-story.html">Success Story</a>
                                            <a href="success-story-details.html">Success Story Details</a>
                                            <a href="about-trainer.html">About Trainer</a>
                                            <a href="contact.html">Contact</a>
                                            <a href="my-account.html">My Account</a>
                                            <a href="exercise-plan.html">Exercise Plan</a>
                                            <a href="exercise-plan-details.html">Exercise Plan Details</a>
                                            <a href="forgot-password.html">Forgot Password</a>
                                            <a href="login.html">Login</a>
                                            <a href="registration.html">Registration</a>
                                            <a href="profileinformation.html">ProfileInfo</a>
                                        </ul>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- header-end -->
    <!-- hero-section-start -->
    <div class="hero-section" id="home">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="hero-content">
                        <h1 class="hc-header">Online Personal Training</h1>
                        <p class="hc-text">Maximum Results in Minimum Time, no matter your location</p>
                        <a class="hc-link" href="profileinformation.html">SELECT MY PLAN</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- hero-section-end -->
    <!-- top-service-area-start -->
    <div class="top-service-area hidden-xs">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="top-service">
                        <div class="row">
                            <div class="col-md-3 col-sm-3">
                                <div class="single-top-service">
                                    <div class="sts-img">
                                        <div class="sts-img-box">
                                            <img src="img/top-service/service1.png" alt="">
                                        </div>
                                    </div>
                                    <p>Real results</p>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-3">
                                <div class="single-top-service">
                                    <div class="sts-img">
                                        <div class="sts-img-box">
                                            <img src="img/top-service/service2.png" alt="">
                                        </div>
                                    </div>
                                    <p>Best Service</p>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-3">
                                <div class="single-top-service">
                                    <div class="sts-img">
                                        <div class="sts-img-box">
                                            <img src="img/top-service/service3.png" alt="">
                                        </div>
                                    </div>
                                    <p>Home Customized Workouts</p>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-3">
                                <div class="single-top-service">
                                    <div class="sts-img">
                                        <div class="sts-img-box">
                                            <img src="img/top-service/service4.png" alt="">
                                        </div>
                                    </div>
                                    <p>Group Challenges</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- top-service-area-end -->
    <!-- top-banner-area-start -->
    <div class="top-banner-area">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="top-banner-left">
                        <div class="top-banner-content">
                            <h3 class="tbl-h3">Email us for a</h3>
                            <h2 class="tbl-h2">FREE</h2>
                            <h3 class="tbl-h3-2">one-on-one</h3>
                            <h3 class="tbl-h3-3">consultation!</h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="top-banner-right">
                        <div class="top-banner-content">
                            <h2 class="tbr-h2">Fitness <span>Program</span></h2>
                            <p class="tbr-p">
                            	See below for more information on fitness programs
                            	<h3 class="tbr-h3">In Your Home or at THE GYM!</h3>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- top-banner-area-end -->
    <!-- converter-area-start -->
    <div class="converter-area">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
                    <div class="converter-content">
                        <h2>Find your ideal weight:</h2>
                        <div class="converter-tabs-area">
                            <ul class="converter-tabs">
                                <li class="active"><a data-toggle="tab" href="#female">FOR FEMALE</a></li>
                                <li><a data-toggle="tab" href="#male">FOR MALE</a></li>
                            </ul>
                            <div class="tab-content">
                                <div id="female" class="tab-pane fade in active">
                                    <span class="label">Your height, ft:</span>
                                    <input class="input-height" type="text" placeholder="input height">
                                    <span class="output-pound">Lbs</span>
                                </div>
                                <div id="male" class="tab-pane fade">
                                    <span class="label">Your height, ft:</span>
                                    <input class="input-height" type="text" placeholder="input height">
                                    <span class="output-pound">Lbs</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- converter-area-end -->
    <!-- expert-team-area-start -->
    <div class="expert-team-area">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="expert-team-head">
                        <p class="section-title-p">OUR TEAM</p>
                        <h2 class="sectiont-title">Meet <span class="sectiont-title-bold">our expert</span></h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="single-expert">
                        <div class="se-img">
                            <img src="img/expert-team/expert1.jpg" alt="">
                        </div>
                        <div class="se-content">
                            <h4>Kiwhi Leonard</h4>
                            <p>Fitness Instructor</p>
                        </div>
                        <ul class="expert-social">
                            <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="single-expert">
                        <div class="se-img">
                            <img src="img/expert-team/expert2.jpg" alt="">
                        </div>
                        <div class="se-content">
                            <h4>Kiwhi Leonard</h4>
                            <p>Fitness Instructor</p>
                        </div>
                        <ul class="expert-social">
                            <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="single-expert">
                        <div class="se-img">
                            <img src="img/expert-team/expert3.jpg" alt="">
                        </div>
                        <div class="se-content">
                            <h4>Kiwhi Leonard</h4>
                            <p>Fitness Instructor</p>
                        </div>
                        <ul class="expert-social">
                            <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="single-expert">
                        <div class="se-img">
                            <img src="img/expert-team/expert4.jpg" alt="">
                        </div>
                        <div class="se-content">
                            <h4>Kiwhi Leonard</h4>
                            <p>Fitness Instructor</p>
                        </div>
                        <ul class="expert-social">
                            <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- expert-team-area-end -->
   
        <!-- Plan-start -->
    <div class="success-story-area">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="success-story-head">
                        <h2 class="sectiont-title">Workout Plans <span class="sectiont-title-bold"></span></h2>
                        <p class="section-title-p">Different plans for selected body types</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="single-success">
                        <div class="su-img">
                            <img src="img/success-story/client1.jpg" alt="">
                        </div>
                        <div class="su-content">
                            <h4>Lean Mode</h4>
                            <p>The Lean program is designed to lower body fat, while maintain your muscle mass.</p>
                            <a href="#">Read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="single-success">
                        <div class="su-img">
                            <img src="img/success-story/client2.jpg" alt="">
                        </div>
                        <div class="su-content">
                            <h4>Maintain Mode</h4>
                            <p>The Maintain program should be used as a transitional period from either taking a break from your main program, or to transition to another program.</p>
                            <a href="#">Read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="single-success">
                        <div class="su-img">
                            <img src="img/success-story/client3.jpg" alt="">
                        </div>
                        <div class="su-content">
                            <h4>Enhance Mode</h4>
                            <p>The Enhance program will increase your muscle mass to create a more ideal physique.</p>
                            <a href="#">Read more</a>
                        </div>
                    </div>
                </div>
            </DIV>
            <div class="row">
                <div class="col-xs-12">
                    <div class="myplan-content">
                        <a class="hc-link" href="profileinformation.html">FIND MY PLAN</a>
                    </div>
                </div>
            </div>
      
        </div>
    </div>
    <!-- Plan-end -->
   
   
    <!-- pricing-plan-area-start -->
    <!--
    <div class="pricing-plan-area">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="pricing-plan-head">
                        <p class="section-title-p">OUR PLAN</p>
                        <h2 class="sectiont-title">Best <span class="sectiont-title-bold">price options</span></h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="single-pricing">
                        <div class="pricing-head">
                            <h2 class="pricing-price"><span>$</span> 3.99</h2>
                            <h4 class="pricing-time">1 Month TRIAL</h4>
                        </div>
                        <div class="pricing-body">
                            <p class="short-desc">$9.99 for 3 months thereafter and recurring</p>
                            <div class="pricing-details">
                                <div class="single-pricing-details clearfix">
                                    <div class="spd-left">
                                        <i class="fa fa-calendar-check-o"></i>
                                    </div>
                                    <div class="spd-right">
                                        <p>4+2</p>
                                        <span>TRAINING <br /> PLANS</span>
                                    </div>
                                </div>
                                <div class="single-pricing-details clearfix">
                                    <div class="spd-left">
                                        <i class="fa fa-file-video-o"></i>
                                    </div>
                                    <div class="spd-right">
                                        <p>80</p>
                                        <span>HOW TO <br /> VIDEOS</span>
                                    </div>
                                </div>
                                <div class="single-pricing-details clearfix">
                                    <div class="spd-left">
                                        <i class="fa fa-newspaper-o"></i>
                                    </div>
                                    <div class="spd-right">
                                        <p>27</p>
                                        <span>KNOWLEDGE <br /> ARTICLES</span>
                                    </div>
                                </div>
                                <div class="single-pricing-details clearfix">
                                    <div class="spd-left">
                                        <i class="fa fa-user-o"></i>
                                    </div>
                                    <div class="spd-right">
                                        <span>INTERACT CERTIFIED <br /> TRAINERS</span>
                                    </div>
                                </div>
                            </div>
                            <a class="pricing-buy-now" href="#">PURCHASE PLAN</a>
                            <p class="short-desc-bottom">1-month pre-pay plan</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="single-pricing special-single-price">
                        <div class="pricing-head">
                            <h2 class="pricing-price"><span>$</span> 5.99</h2>
                            <h4 class="pricing-time">3 Month TRIAL</h4>
                        </div>
                        <div class="pricing-body">
                            <p class="short-desc">$9.99 for 3 months thereafter and recurring</p>
                            <div class="pricing-details">
                                <div class="single-pricing-details clearfix">
                                    <div class="spd-left">
                                        <i class="fa fa-calendar-check-o"></i>
                                    </div>
                                    <div class="spd-right">
                                        <p>4+2</p>
                                        <span>TRAINING <br /> PLANS</span>
                                    </div>
                                </div>
                                <div class="single-pricing-details clearfix">
                                    <div class="spd-left">
                                        <i class="fa fa-file-video-o"></i>
                                    </div>
                                    <div class="spd-right">
                                        <p>80</p>
                                        <span>HOW TO <br /> VIDEOS</span>
                                    </div>
                                </div>
                                <div class="single-pricing-details clearfix">
                                    <div class="spd-left">
                                        <i class="fa fa-newspaper-o"></i>
                                    </div>
                                    <div class="spd-right">
                                        <p>27</p>
                                        <span>KNOWLEDGE <br /> ARTICLES</span>
                                    </div>
                                </div>
                                <div class="single-pricing-details clearfix">
                                    <div class="spd-left">
                                        <i class="fa fa-user-o"></i>
                                    </div>
                                    <div class="spd-right">
                                        <span>INTERACT CERTIFIED <br /> TRAINERS</span>
                                    </div>
                                </div>
                            </div>
                            <a class="pricing-buy-now" href="#">PURCHASE PLAN</a>
                            <p class="short-desc-bottom">1-month pre-pay plan</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="single-pricing">
                        <div class="pricing-head">
                            <h2 class="pricing-price"><span>$</span> 9.99</h2>
                            <h4 class="pricing-time">6 Month TRIAL</h4>
                        </div>
                        <div class="pricing-body">
                            <p class="short-desc">$9.99 for 3 months thereafter and recurring</p>
                            <div class="pricing-details">
                                <div class="single-pricing-details clearfix">
                                    <div class="spd-left">
                                        <i class="fa fa-calendar-check-o"></i>
                                    </div>
                                    <div class="spd-right">
                                        <p>4+2</p>
                                        <span>TRAINING <br /> PLANS</span>
                                    </div>
                                </div>
                                <div class="single-pricing-details clearfix">
                                    <div class="spd-left">
                                        <i class="fa fa-file-video-o"></i>
                                    </div>
                                    <div class="spd-right">
                                        <p>80</p>
                                        <span>HOW TO <br /> VIDEOS</span>
                                    </div>
                                </div>
                                <div class="single-pricing-details clearfix">
                                    <div class="spd-left">
                                        <i class="fa fa-newspaper-o"></i>
                                    </div>
                                    <div class="spd-right">
                                        <p>27</p>
                                        <span>KNOWLEDGE <br /> ARTICLES</span>
                                    </div>
                                </div>
                                <div class="single-pricing-details clearfix">
                                    <div class="spd-left">
                                        <i class="fa fa-user-o"></i>
                                    </div>
                                    <div class="spd-right">
                                        <span>INTERACT CERTIFIED <br /> TRAINERS</span>
                                    </div>
                                </div>
                            </div>
                            <a class="pricing-buy-now" href="#">PURCHASE PLAN</a>
                            <p class="short-desc-bottom">1-month pre-pay plan</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    -->
    <!-- pricing-plan-area-end -->

    <!-- our-events-area-start -->
    <div class="our-events-area">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="our-events-head">
                        <p class="section-title-p">OUR EVENTS</p>
                        <h2 class="sectiont-title">Upcoming <span class="sectiont-title-bold">latest events</span></h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="single-our-events">
                        <div class="soe-img">
                            <img src="img/our-events/events1.png" alt="">
                        </div>
                        <div class="soe-content">
                            <h2>BOSTON <span class="bold">HALF MARATHON</span></h2>
                            <ul class="soe-address-time">
                                <li class="address"><i class="fa fa-map-marker"></i>Boston MA</li>
                                <li class="time"><i class="fa fa-clock-o"></i>8:00 AM</li>
                            </ul>
                            <span class="soe-type"><i class="fa fa-rocket"></i>Paid</span>
                            <div class="join-event"><a class="hover-bs" href="http://www.rundanafarber.org/faf/home/ccp.asp?ievent=1159669&ccp=112822&track=RPTPW051917&msource=RPTPW051917" target="_blank">Join this Event</a></div>
                        </div>
                        <div class="soe-date">
                            <span class="date">08</span>
                            <span class="month">Oct '18</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="single-our-events">
                        <div class="soe-img">
                            <img src="img/our-events/events2.png" alt="">
                        </div>
                        <div class="soe-content">
                            <h2>BOSTON <span class="bold">SPARTAN RACE</span></h2>
                            <ul class="soe-address-time">
                                <li class="address"><i class="fa fa-map-marker"></i>Boston, MA</li>
                                <li class="time"><i class="fa fa-clock-o"></i>7:30 AM</li>
                            </ul>
                            <span class="soe-type"><i class="fa fa-rocket"></i>Paid</span>
                            <div class="join-event"><a class="hover-bs" href="https://www.spartan.com/en/race/detail/3350/overview" target="_blank">Join this Event</a></div>
                        </div>
                        <div class="soe-date">
                            <span class="date">12</span>
                            <span class="month">May '18</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- our-events-area-end -->
   
    <!-- success-story-start -->
    <!--
    <div class="success-story-area">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="success-story-head">
                        <h2 class="sectiont-title">Our Client <span class="sectiont-title-bold">success stories</span></h2>
                        <p class="section-title-p">What others think of our service</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="single-success">
                        <div class="su-img">
                            <img src="img/success-story/client1.jpg" alt="">
                        </div>
                        <div class="su-content">
                            <h4>Oliver Cleveland</h4>
                            <p>This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec</p>
                            <a href="#">Read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="single-success">
                        <div class="su-img">
                            <img src="img/success-story/client2.jpg" alt="">
                        </div>
                        <div class="su-content">
                            <h4>Johan Smith</h4>
                            <p>This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec</p>
                            <a href="#">Read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="single-success">
                        <div class="su-img">
                            <img src="img/success-story/client3.jpg" alt="">
                        </div>
                        <div class="su-content">
                            <h4>Daven Lorner</h4>
                            <p>This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec</p>
                            <a href="#">Read more</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    -->
    <!-- success-story-end -->
    <!-- latest-news-area-start -->
    <div class="latest-news-area">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="latest-news-head">
                        <p class="section-title-p">FITNESS BLOG</p>
                        <h2 class="sectiont-title">Fitness <span class="sectiont-title-bold">latest news</span></h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="single-news clearfix">
                        <div class="sn-img">
                            <img src="img/news/news1.jpg" alt="">
                        </div>
                        <div class="sn-content">
                            <span class="sn-date">03 JAN 2018</span>
                            <h4 class="sn-title">BEST zero belly smoothies <span class="bold">for weight loss</span></h4>
                            <p class="sn-text">Simple, immediate and stress free. That’s what Zero Belly is designed to be: a plan that pays off for you quickly</p>
                            <a class="read-more" href="http://www.zerobelly.com/4-best-zero-belly-smoothies-for-weight-loss"  target="_blank">READ ARTICLE  <i class="fa fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="single-news clearfix">
                        <div class="sn-img">
                            <img src="img/news/news2.jpg" alt="">
                        </div>
                        <div class="sn-content">
                            <span class="sn-date">25 DEC 2017</span>
                            <h4 class="sn-title">5 best foods to make <span class="bold">fresh & healthy</span></h4>
                            <p class="sn-text">These quick and healthy recipes combine fresh ingredients with pantry staples for speedy meals you'll feel great about eating</p>
                            <a class="read-more" href="http://www.cookinglight.com/food/quick-healthy/5-ingredient-healthy-recipes"  target="_blank">READ ARTICLE  <i class="fa fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- latest-news-area-end -->
    <!--subscribe section start-->
    <div class="subscribe-section">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-5 col-xs-12">
                    <div class="row">
                        <div class="ht-newsletter">
                            <h5>JOIN OUR NEWSLETTER</h5>
                            <h2>subscribe <b>newsletter</b></h2>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 col-sm-7 col-xs-12">
                    <div class="row">
                        <form class="form-inline newsletter-forn-in">
                            <div class="col-md-9  col-sm-9 col-xs-12">
                                <div class="form-group">
                                    <input class="form-control newsletter-input" type="text" placeholder="enter your email address">
                                </div>
                            </div>
                            <div class="col-md-3  col-sm-3 col-xs-12">
                                <div class="row text-center">
                                    <button type="submit" class="subscribe-btn">subscribe<i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--subscribe section end-->
    <!-- footer-start -->
    <div class="big-fotter">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-8 col-xs-12">
                    <div class="trainer-aera">
                        <div class="ft-trainer">
                            <h2>We Think <span>Fitness</span></h2>
                            <h5>BE FIT BE HAPPY</h5>
                        </div>
                        <p>We think fitness, offers variety of workout options according to individual's body type. Main motive is to be fit and be happy.</p>
                        <div class="contact-info">
                            <ul>
                                <li><i class="fa fa-map-marker" aria-hidden="true"></i> <span class="bld">5 Bracing Run, Hopkinton, MA,</span> United States</li>
                                <li><i class="fa fa-envelope-square" aria-hidden="true"></i> support@wethinkfitness.com</li>
                                <li><a class="red" href=""><i class="fa fa-phone-square" aria-hidden="true"></i>www.wethinkfitness.com</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-12">
                    <div class="ft-info">
                        <h2>Fitness<span> information</span></h2>
                        <ul>
                            <li><a href="#"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>About Us</a></li>
                            <!-- <li><a href="#"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>top Sellers</a></li> -->
                            <li><a href="#"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>our blog</a></li>
                            
                            <!-- <li><a href="#"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>Secure Shopping</a></li> -->
                        </ul>
                    </div>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-12">
                    <div class="ft-info">
                        <h2>my <span> account</span></h2>
                        <ul>
                            <li><a href="#"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>my account</a></li>
                            <!-- <li><a href="#"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>discount</a></li> -->
                            <li><a href="#"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>personal information</a></li>
                            
                            <!-- <li><a href="#"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>order history</a></li> -->
                        </ul>
                    </div>
                </div>
                <div class="col-md-4 col-sm-8 col-xs-12">
                    <!-- 
                    <div class="banner">
                        <h2>GET NEW OFFER </h2>
                        <div class="banner-box">
                            <h1>Fruits</h1>
                            <h2><span>all</span> summer</h2>
                            <p>35% off in june-july</p>
                            <div class="shop-now"><a href="#">shop now</a>
                                <div class="icon"><i class="fa fa-long-arrow-right"></i></div>
                            </div>
                            <img src="img/shop.png" alt="shop" />
                        </div>
                    </div>
                     -->
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="sticky-fotter">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6  col-xs-12">
                        <div class="sticky-fotter-text">
                            <p>&COPY; 2017 <b>fitness</b> made with <i class="fa fa-heart" aria-hidden="true"></i> by us, All right reserved</p>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6  col-xs-12">
                        <div class="fotter-link">
                            <nav>
                                <ul class="link-list">
                                    <li><a href="#">contact us</a></li>
                                    <li><a href="#">term of use</a></li>
                                    <li><a href="#">site map</a></li>
                                    <!-- <li><a href="#">pricing policy</a></li> -->
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <img src="img/bg/fotterbg.png" alt="" />
                    <a class="go-top" href="#home"><i class="fa fa-arrow-circle-o-up"></i></a>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer-end -->
    <!-- Scripts -->
    <script src="js/jquery-3.2.0.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/countdown.js"></script>
    <script src="js/jquery.meanmenu.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.scrollUp.js"></script>
    <script src="js/jquery.mixitup.min.js"></script>
    <script src="js/jquery.nstSlider.min.js"></script>
    <script src="js/handleCounter.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>
    
    <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-103037713-1', 'auto');
  ga('send', 'pageview');

</script>
</body>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-103037713-1', 'auto');
  ga('send', 'pageview');

</script>

</html>
