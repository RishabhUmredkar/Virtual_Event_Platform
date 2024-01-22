<%@ page import="javax.servlet.http.Cookie" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html><html lang="en" class="h-100"><head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, shrink-to-fit=9">
		<meta name="description" content="Gambolthemes">
		<meta name="author" content="Gambolthemes">		
		<title>Barren - Simple Online Event Ticketing System</title>
		
		<!-- Favicon Icon -->
		<link rel="icon" type="image/png" href="images/fav.png">
		
		<!-- Stylesheets -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
		<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap" rel="stylesheet">
		<link href="css/unicons.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<link href="css/responsive.css" rel="stylesheet">
		<link href="css/night-mode.css" rel="stylesheet">
		
		<!-- Vendor Stylesheets -->
		<link href="css/all.min.css" rel="stylesheet">
		<link href="css/owl.carousel.css" rel="stylesheet">
		<link href="css/owl.theme.default.min.css" rel="stylesheet">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/bootstrap-select.min.css" rel="stylesheet">		
		
	</head>

<body>	
<%
Cookie c = new Cookie("email", "");
c.setMaxAge(0);
response.addCookie(c);
System.out.println(c);

%>

			
	<div class="form-wrapper">
		<div class="app-form">
			<div class="app-form-sidebar">
				<div class="sidebar-sign-logo">
					<img src="images/sign-logo.svg" alt="">
				</div>
				<div class="sign_sidebar_text">
					<h1>The Easiest Way to Create Events and Sell More Tickets Online</h1>
				</div>
			</div>
			<div class="app-form-content">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-10 col-md-10">
							<div class="app-top-items">
								<a href="index.jsp">
									<div class="sign-logo" id="logo">
										<img src="images/RishabhLight Final.png" alt="">
							<img class="logo-inverse" src="images/RishabhDark Final.png" alt="">
									</div>
								</a>
								<div class="app-top-right-link">
									Already have an account?<a class="sidebar-register-link" href="sign_in.jsp">Sign In</a>
								</div>
							</div>
						</div>
						<div class="col-xl-5 col-lg-6 col-md-7">
							<div class="registration">
								<form action ="UserRegister.jsp">
									<h2 class="registration-title">Sign up to Barren</h2>
									<div class="row mt-3">
										<div class="col-lg-6 col-md-12">
											<div class="form-group mt-4">
												<label class="form-label">First Name*</label>
												<input class="form-control h_50" type="text" name = "first_name" placeholder="" value="">																								
											</div>
										</div>
										<div class="col-lg-6 col-md-12">
											<div class="form-group mt-4">
												<label class="form-label">Last Name*</label>
												<input class="form-control h_50" type="text" name = "last_name" placeholder="" value="">																								
											</div>
										</div>
										<div class="col-lg-12 col-md-12">
											<div class="form-group mt-4">
												<label class="form-label">Your Email*</label>
												<input class="form-control h_50" type="email" name = "email" placeholder="" value="">																								
											</div>
										</div>
										<div class="col-lg-12 col-md-12">	
											<div class="form-group mt-4">
												<div class="field-password">
													<label class="form-label">Password*</label>
												</div>
												<div class="loc-group position-relative">
													<input class="form-control h_50" type="password" name = "password" placeholder="">
													<span class="pass-show-eye"><i class="fas fa-eye-slash"></i></span>
												</div>
											</div>
										</div>
										<div class="col-lg-12 col-md-12">		
											<button class="main-btn btn-hover w-100 mt-4" type="submit">Sign Up</button>
										</div>
									</div>
								</form>
								<div class="agree-text">
									By clicking "Sign up", you agree to Barren <a href="#">Terms &amp; Conditions</a> and have read the <a href="#">Privacy Policy</a>.
								</div>								
								
								<div class="new-sign-link">
									Already have an account?<a class="signup-link" href="sign_in.jsp">Sign In</a>
								</div>
							</div>							
						</div>
					</div>
				</div>
				<div class="copyright-footer">
					© 2022, Barren. All rights reserved. Powered by Gambolthemes
				</div>
			</div>			
		</div>
	</div>
	
	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/bootstrap-select.min.js"></script>	
	<script src="js/custom.js"></script>
	<script src="js/night-mode.js"></script>


</body></html>