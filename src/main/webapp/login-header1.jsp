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

function getVal(str) {
    var v = window.location.search.match(new RegExp('(?:[\?\&]'+str+'=)([^&]+)'));
    return v ? v[1] : null;
}
	
$( document ).ready(function() {

	// initaially, user is consideres as not logged in 
	$('#header_loggedin').hide();
    $.get("loggedinuser1/", function(data, status){
        // User has credentials
        if(data.username != 'anonymousUser') {
        	$('#header_loggedout').hide();
        	$('#header_loggedin').show();
        	
        	$('#logged_in').text(data.username);
        	
			if(data.userId > 0) {
				// This call is used to check if user already has a plan
				$.get("userplan/"+data.userId , function(userplan, status){
					// Assumption here FOR NOW is that user will have ONLY one plan
					var userPlan = userplan[0].plan_id;
					// userPlan = 0 means no plan selected
					if(userPlan == 0) {
						//window.location.href='pricing-table.html';
					}
					else {
						//window.location.href='exercise-plan.html?userid=' + userplan[0].user_id;
					}
						
				});
				
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
		 

            $.ajax({      
                url: "register",
                type: "POST",
                data: data,
                Accept : "application/json",
                contentType: "application/json", 
                dataType: "json",
                    success: function(resultData) {
						alert('Registration successful..');
                         //do stuff
                    },

              });
		    
		});
});
 
</script>

<body>
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
</html>