<%@ page import="javax.servlet.http.Cookie" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page errorPage="Error.jsp" %>

<!DOCTYPE html><html lang="en" class="h-100"><head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, shrink-to-fit=9">
		<meta name="description" content="Gambolthemes">
		<meta name="author" content="Gambolthemes">		
		<title>Evento - Simple Online Event Ticketing System</title>
		
		

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

<body class="d-flex flex-column h-100">
	<!-- Header Start-->
		<header class="header">
		<div class="header-inner">
			<nav class="navbar navbar-expand-lg bg-barren barren-head navbar fixed-top justify-content-sm-start pt-0 pb-0">
				<div class="container">	
					<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
						<span class="navbar-toggler-icon">
							<i class="fa-solid fa-bars"></i>
						</span>
					</button>
					<a class="navbar-brand order-1 order-lg-0 ml-lg-0 ml-2 me-auto" href="index.jsp">
						<div class="res-main-logo">
							<img src="images/Evento.png"  alt="">
							<img class="logo-inverse" src="images/EventoDark.png" alt="">
						</div>
						<div class="main-logo" id="logo">
							<img src="images/Evento.png"  alt="">
							<img class="logo-inverse" src="images/EventoDark.png" alt="">
						</div>
					</a>
					<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
						<div class="offcanvas-header">
							<div class="offcanvas-logo" id="offcanvasNavbarLabel">
								<img src="images/RishabhDark-Final (1).svg" alt="">
							</div>
							<button type="button" class="close-btn" data-bs-dismiss="offcanvas" aria-label="Close">
								<i class="fa-solid fa-xmark"></i>
							</button>
						</div>
						<div class="offcanvas-body">				
							<ul class="navbar-nav justify-content-end flex-grow-1 pe_5">
								<li class="nav-item">
									<a class="nav-link" aria-current="page" href="index.jsp">Home</a>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Explore Events
									</a>
									<ul class="dropdown-menu dropdown-submenu">
										<li><a class="dropdown-item" href="explore_events.jsp">Explore Events</a></li>
									</ul>
								</li>
								
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Blog
									</a>
									<ul class="dropdown-menu dropdown-submenu">
										<li><a class="dropdown-item" href="blog_detail_view.jsp">Blog Detail View</a></li>
									</ul>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link active dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Help
									</a>
									<ul class="dropdown-menu dropdown-submenu">
										<li><a class="dropdown-item" href="contact_us.jsp">Contact Us</a></li>
									</ul>
								</li>
								
							</ul>
						</div>
						<div class="offcanvas-footer">
							<div class="offcanvas-social">
								<h5>Follow Us</h5>
								<ul class="social-links">
									<li><a href="#" class="social-link"><i class="fab fa-facebook-square"></i></a>
									</li><li><a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
									</li><li><a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
									</li><li><a href="#" class="social-link"><i class="fab fa-linkedin-in"></i></a>
									</li><li><a href="#" class="social-link"><i class="fab fa-youtube"></i></a>
								</li></ul>
							</div>
						</div>
					</div>
					<div class="right-header order-2">
						<ul class="align-self-stretch">
							
							<li class="dropdown account-dropdown">
								<a href="#" class="account-link" role="button" id="accountClick" data-bs-auto-close="outside" data-bs-toggle="dropdown" aria-expanded="false">
									<img src="images/profile-imgs/img-13.jpg" alt="">
									<i class="fas fa-caret-down arrow-icon"></i>
								</a>
								<ul class="dropdown-menu dropdown-menu-account dropdown-menu-end" aria-labelledby="accountClick">
									<li>
										<div class="dropdown-account-header">
											<div class="account-holder-avatar">
												<img src="images/profile-imgs/img-13.jpg" alt="">
											</div>
											<h5>John Doe</h5>
											<p>johndoe@example.com</p>
										</div>
									</li>
									<li class="profile-link">
										<a href="organiser_profile_view.jsp" class="link-item">My Profile</a>									
										<a href="sign_in.jsp" class="link-item">Sign in / Sign Out</a>									
									</li>
								</ul>
							</li>
							<li>
								<div class="night_mode_switch__btn">
									<div id="night-mode" class="fas fa-moon fa-sun"></div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</nav>
			<div class="overlay"></div>
		</div>
	</header>
	<!-- Header End-->
	<!-- Body Start-->
	<div class="wrapper">
		<div class="breadcrumb-block">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-10">
						<div class="barren-breadcrumb">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Contact Us</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="event-dt-block p-80">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-12 col-md-12">
						<div class="main-title checkout-title text-center">
							<h3>Contact Us</h3>
							<p class="mb-0">Have any questions? We'd love to hear from you.</p>
						</div>
					</div>
					<div class="col-lg-10">
						<div class="main-card mt-5">
							<div class="row">
								<div class="col-xl-7 col-lg-12 col-md-12 order-lg-2">
									<div class="contact-form bp-form p-lg-5 ps-lg-4 pt-lg-4 pb-5 p-4">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group mt-4">
													<label class="form-label">First Name*</label>
													<input class="form-control h_50" type="text" placeholder="" value="">																								
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group mt-4">
													<label class="form-label">Last Name*</label>
													<input class="form-control h_50" type="text" placeholder="" value="">																								
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group mt-4">
													<label class="form-label">Email*</label>
													<input class="form-control h_50" type="Email" placeholder="" value="">																								
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group mt-4">
													<label class="form-label">Phone*</label>
													<input class="form-control h_50" type="text" placeholder="" value="">																								
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group mt-4">
													<label class="form-label">Message*</label>
													<textarea class="form-textarea" placeholder="About"></textarea>																								
												</div>
											</div>
											<div class="col-md-12">
												<div class="text-center mt-4">
													<button class="main-btn btn-hover h_50 w-100" type="submit">Submit</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-5 col-lg-12 col-md-12 order-lg-1 d-none d-xl-block">
									<div class="contact-banner-block">
										<div class="contact-hero-banner">
											<div class="contact-hero-banner-info">
												<h3>Contact information</h3>
												<p>Fill out the form and our team will get back to you soon.</p>
												<ul>
													<li>
														<div class="contact-info d-flex align-items-center">
															<div class="contact-icon">
																<i class="fa-solid fa-square-phone fa-beat-fade" style="--fa-beat-fade-opacity: 0.67; --fa-beat-fade-scale: 1.075;"></i>
															</div>
															<a href="#">+1(000)00-00000</a>
														</div>
													</li>
													<li>
														<div class="contact-info d-flex align-items-center">
															<div class="contact-icon">
																<i class="fa-solid fa-envelope fa-beat-fade" style="--fa-beat-fade-opacity: 0.67; --fa-beat-fade-scale: 1.075;"></i>
															</div>
															<a href="#">contact@Rishabh.com</a>
														</div>
													</li>
													<li>
														<div class="contact-info d-flex align-items-center">
															<div class="contact-icon">
																<i class="fa-solid fa-life-ring fa-beat-fade" style="--fa-beat-fade-opacity: 0.67; --fa-beat-fade-scale: 1.075;"></i>
															</div>
															<a href="#">Help Center</a>
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>	
							</div>
						</div>
					</div>
					<div class="col-lg-10 col-md-12 d-block d-xl-none">
						<div class="main-card mt-4">
							<div class="contact-banner-block">
								<div class="contact-hero-banner p_30 min-h-auto">
									<div class="contact-hero-banner-info">
										<h3>Contact information</h3>
										<p>Fill out the form and our team will get back to you soon.</p>
										<ul>
											<li>
												<div class="contact-info d-flex align-items-center">
													<div class="contact-icon">
														<i class="fa-solid fa-square-phone fa-beat-fade" style="--fa-beat-fade-opacity: 0.67; --fa-beat-fade-scale: 1.075;"></i>
													</div>
													<a href="#">+1(000)00-00000</a>
												</div>
											</li>
											<li>
												<div class="contact-info d-flex align-items-center">
													<div class="contact-icon">
														<i class="fa-solid fa-envelope fa-beat-fade" style="--fa-beat-fade-opacity: 0.67; --fa-beat-fade-scale: 1.075;"></i>
													</div>
													<a href="#">contact@Rishabh.com</a>
												</div>
											</li>
											<li>
												<div class="contact-info d-flex align-items-center">
													<div class="contact-icon">
														<i class="fa-solid fa-life-ring fa-beat-fade" style="--fa-beat-fade-opacity: 0.67; --fa-beat-fade-scale: 1.075;"></i>
													</div>
													<a href="#">Help Center</a>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Body End-->
	<!-- Footer Start-->
	<footer class="footer mt-auto">
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-6">
						<div class="footer-content">
							<h4>Company</h4>
							<ul class="footer-link-list">
								<li><a href="about_us.jsp" class="footer-link">About Us</a></li>
								<li><a href="help_center.jsp" class="footer-link">Help Center</a></li>
								<li><a href="faq.jsp" class="footer-link">FAQ</a></li>
								<li><a href="contact_us.jsp" class="footer-link">Contact Us</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="footer-content">
							<h4>Useful Links</h4>
							<ul class="footer-link-list">
								<li><a href="create.jsp" class="footer-link">Create Event</a></li>
								<li><a href="sell_tickets_online.jsp" class="footer-link">Sell Tickets Online</a></li>
								<li><a href="privacy_policy.jsp" class="footer-link">Privacy Policy</a></li>
								<li><a href="term_and_conditions.jsp" class="footer-link">Terms &amp; Conditions</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="footer-content">
							<h4>Resources</h4>
							<ul class="footer-link-list">
								<li><a href="pricing.jsp" class="footer-link">Pricing</a></li>
								<li><a href="our_blog.jsp" class="footer-link">Blog</a></li>
								<li><a href="refer_a_friend.jsp" class="footer-link">Refer a Friend</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="footer-content">
							<h4>Follow Us</h4>
							<ul class="social-links">
								<li><a href="#" class="social-link"><i class="fab fa-facebook-square"></i></a>
								</li><li><a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
								</li><li><a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
								</li><li><a href="#" class="social-link"><i class="fab fa-linkedin-in"></i></a>
								</li><li><a href="#" class="social-link"><i class="fab fa-youtube"></i></a>
							</li></ul>
						</div>
						<div class="footer-content">
							<h4>Download Mobile App</h4>
							<div class="download-app-link">
								<a href="#" class="download-btn"><img src="images/app-store.png" alt=""></a>
								<a href="#" class="download-btn"><img src="images/google-play.png" alt=""></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="footer-copyright-text">
							<p class="mb-0">© 2024, <strong>Rishabh</strong>. All rights reserved. Powered by Gambolthemes</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer End-->
	
	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/bootstrap-select.min.js"></script>	
	<script src="js/custom.js"></script>
	<script src="js/night-mode.js"></script>

</body>
</html>