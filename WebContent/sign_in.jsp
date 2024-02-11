<%@ page import="javax.servlet.http.Cookie" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page errorPage="Error.jsp" %>

<!DOCTYPE html><html lang="en" class="h-100"><head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, shrink-to-fit=9">
		<meta name="description" content="Gambolthemes">
		<meta name="author" content="Gambolthemes">		
		<title>Rishabh - Simple Online Event Ticketing System</title>
		
		

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
									New to Barren?<a class="sidebar-register-link" href="sign_up.jsp">Sign up</a>
								</div>
							</div>
						</div>
						<div class="col-xl-5 col-lg-6 col-md-7">
							<div class="registration">
								<form action = "UserLogin.jsp">
									<h2 class="registration-title">Sign in to Barren</h2>
									<div class="form-group mt-5">
										<label class="form-label">Your Email*</label>
										<input class="form-control h_50" type="email" name = "email" placeholder="Enter your email" value="">																								
									</div>
									<div class="form-group mt-4">
										<div class="field-password">
											<label class="form-label">Password*</label>
											<a class="forgot-pass-link" href="forgot_password.jsp">Forgot Password?</a>
										</div>
										<div class="loc-group position-relative">
											<input class="form-control h_50" type="password" name = "password" placeholder="Enter your password">
											<span class="pass-show-eye"><i class="fas fa-eye-slash"></i></span>
										</div>
									</div>
											<button class="main-btn btn-hover w-100 mt-4" type="submit">Sign Up</button>
								</form>
								<div class="divider">
									<span>or</span>
								</div>
								<div class="social-btns-list">
									<button class="social-login-btn">
										<svg class="me-2" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 26.488 27.029"><g transform="translate(-0.126)"><path d="M1258.806,1021.475a11.578,11.578,0,0,0-.285-2.763h-12.688v5.015h7.448a6.605,6.605,0,0,1-2.763,4.384l-.025.168,4.012,3.108.278.028a13.214,13.214,0,0,0,4.024-9.941" transform="translate(-1232.192 -1007.66)" fill="#4285f4"></path><path d="M145.071,1502.921a12.881,12.881,0,0,0,8.949-3.273l-4.265-3.3a8,8,0,0,1-4.685,1.352,8.136,8.136,0,0,1-7.688-5.616l-.158.013-4.172,3.229-.055.152a13.5,13.5,0,0,0,12.073,7.448" transform="translate(-131.431 -1475.893)" fill="#34a853"></path><path d="M5.952,689.263a8.32,8.32,0,0,1-.45-2.673,8.744,8.744,0,0,1,.435-2.673l-.008-.179-4.224-3.28-.138.066a13.486,13.486,0,0,0,0,12.133l4.385-3.393" transform="translate(0 -673.076)" fill="#fbbc05"></path><path d="M145.071,5.225A7.49,7.49,0,0,1,150.3,7.238l3.814-3.724A12.984,12.984,0,0,0,145.071,0,13.5,13.5,0,0,0,133,7.448l4.37,3.394a8.169,8.169,0,0,1,7.7-5.616" transform="translate(-131.431)" fill="#eb4335"></path></g></svg>
										Sign in with Google
									</button>
									<button class="social-login-btn">
										<svg class="me-2" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 27 27"><g transform="translate(0)"><circle cx="13.5" cy="13.5" r="13.5" transform="translate(0 0)" fill="#3b5998"></circle><path d="M851.461,383.684h-3.1c-1.841,0-3.889.735-3.889,3.266.009.882,0,1.727,0,2.678h-2.13v3.215h2.2V402.1h4.035v-9.316h2.663l.241-3.163H848.5s.007-1.407,0-1.816c0-1,1.1-.943,1.164-.943.522,0,1.538,0,1.8,0v-3.176Z" transform="translate(-833.401 -379.385)" fill="#fff"></path></g></svg>
										Sign in with Facebook
									</button>
								</div>
								<div class="new-sign-link">
									New to Barren?<a class="signup-link" href="sign_up.jsp">Sign up</a>
								</div>
							</div>							
						</div>
					</div>
				</div>
				<div class="copyright-footer">
					© 2022, Rishabh. All rights reserved. Powered by Gambolthemes
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