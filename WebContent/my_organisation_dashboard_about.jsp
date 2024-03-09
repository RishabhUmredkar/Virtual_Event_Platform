<html lang="en" class="h-100"><head></head><body class="d-flex flex-column h-100">

	
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
		<link href="vendor/unicons-2.0.1/css/unicons.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<link href="css/vertical-responsive-menu.min.css" rel="stylesheet">
		<link href="css/datepicker.min.css" rel="stylesheet">
		<link href="css/responsive.css" rel="stylesheet">
		<link href="css/night-mode.css" rel="stylesheet">
		
		<!-- Vendor Stylesheets -->
		<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
		<link href="vendor/OwlCarousel/assets/owl.carousel.css" rel="stylesheet">
		<link href="vendor/OwlCarousel/assets/owl.theme.default.min.css" rel="stylesheet">
		<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">	
		
	<!-- Header Start-->
	<header class="header">
		<div class="header-inner">		
			<nav class="navbar navbar-expand-lg bg-barren barren-head navbar fixed-top justify-content-sm-start pt-0 pb-0 ps-lg-0 pe-2">
				<div class="container-fluid ps-0">
					<button type="button" id="toggleMenu" class="toggle_menu">
						<i class="fa-solid fa-bars-staggered"></i>
					</button>
					<button id="collapse_menu" class="collapse_menu me-4">
						<i class="fa-solid fa-bars collapse_menu--icon "></i>
						<span class="collapse_menu--label"></span>
					</button>
					<button class="navbar-toggler order-3 ms-2 pe-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
						<span class="navbar-toggler-icon">
							<i class="fa-solid fa-bars"></i>
						</span>
					</button>
					<a class="navbar-brand order-1 order-lg-0 ml-lg-0 ml-2 me-auto" href="index.jsp">
						<div class="res-main-logo">
							<img src="images/logo-icon.svg" alt="">
						</div>
						<div class="main-logo" id="logo">
							<img src="images/Evento.png"  alt="">
							<img class="logo-inverse" src="images/EventoDark.png" alt="">
						</div>
					</a>
					<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
						<div class="offcanvas-header">
							<div class="offcanvas-logo" id="offcanvasNavbarLabel">
								<img src="images/logo-icon.svg" alt="">
							</div>
							<button type="button" class="close-btn" data-bs-dismiss="offcanvas" aria-label="Close">
								<i class="fa-solid fa-xmark"></i>
							</button>
						</div>
						<div class="offcanvas-body">
							<div class="offcanvas-top-area">
								<div class="create-bg">
									<a href="create.jsp" class="offcanvas-create-btn">
										<i class="fa-solid fa-calendar-days"></i>
										<span>Create Event</span>
									</a>
								</div>
							</div>
							
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
							<li>
								<a href="create.jsp" class="create-btn btn-hover">
									<i class="fa-solid fa-calendar-days"></i>
									<span>Create Event</span>
								</a>
							</li>
							<li class="dropdown account-dropdown order-3">
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
										<a href="sign_in.jsp" class="link-item">Sign Out</a>									
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
	<!-- Left Sidebar Start -->
	<nav class="vertical_nav">
		<div class="left_section menu_left" id="js-menu">
			<div class="left_section">
				<ul>
					<li class="menu--item">
						<a href="my_organisation_dashboard.jsp" class="menu--link" title="Dashboard" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-gauge menu--icon"></i>
							<span class="menu--label">Dashboard</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_events.jsp" class="menu--link" title="Events" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-calendar-days menu--icon"></i>
							<span class="menu--label">Events</span>
						</a>
					</li>
					
					<li class="menu--item">
						<a href="my_organisation_dashboard_contact_lists.jsp" class="menu--link" title="Contact List" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-regular fa-address-card menu--icon"></i>
							<span class="menu--label">Contact List</span>
						</a>
					</li>
					
					<li class="menu--item">
						<a href="my_organisation_dashboard_about.jsp" class="menu--link active" title="About" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-circle-info menu--icon"></i>
							<span class="menu--label">About</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_my_user.jsp" class="menu--link team-lock" title="My Team" data-bs-toggle="tooltip" data-bs-placement="right"> 
							<i class="fa-solid fa-user-group menu--icon"></i>
							<span class="menu--label">My Team</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Left Sidebar End -->
	<!-- Body Start -->
	<div class="wrapper wrapper-body">
		<div class="dashboard-body">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="d-main-title">
							<h3><i class="fa-solid fa-circle-info me-3"></i>About My Organisation</h3>
						</div>
					</div>
					<div class="col-lg-6 col-md-12">
						<div class="conversion-setup">
							<div class="main-card mt-5">
								<div class="bp-title position-relative">
									<h4>About</h4>
									<div class="profile-edit-btn">
										<a href="#" data-bs-toggle="modal" data-bs-target="#orgSettings" class="btn"><i class="fa-solid fa-user-gear"></i></a>
										<a href="#" data-bs-toggle="modal" data-bs-target="#orgPrivacySettings" class="btn"><i class="fa-solid fa-gear"></i></a>
										<a href="#" data-bs-toggle="modal" data-bs-target="#org-profile-update-pop" class="btn"><i class="fa-solid fa-pen"></i></a>
									</div>
								</div>
								<div class="about-details">
									<div class="about-step text-center">
										<div class="user-avatar-img">
											<img src="images/profile-imgs/img-13.jpg" alt="">
										</div>
										<div class="user-dts">
											<h4 class="user-name">John Doe<span class="verify-badge"><i class="fa-solid fa-circle-check"></i></span></h4>
											<span class="user-email">johndoe@example.com</span>
										</div>
									</div>
									<div class="about-step">
										<h5>Tell us about yourself and let people know who you are</h5>
										<p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt interdum nunc et auctor. Phasellus quis pharetra sapien. Integer ligula sem, sodales vitae varius in, varius eget augue.</p>
									</div>
									<div class="about-step">
										<h5>Find me on</h5>
										<div class="social-links">
											<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Facebook" aria-label="Facebook"><i class="fab fa-facebook-square"></i></a>
											<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Instagram" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
											<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Twitter" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
											<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="LinkedIn" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
											<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Youtube" aria-label="Youtube"><i class="fab fa-youtube"></i></a>
											<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Website" aria-label="Website"><i class="fa-solid fa-globe"></i></a>
										</div>
									</div>
									<div class="about-step">
										<h5>Address</h5>
										<p class="mb-0">00 Challis St, Newport, Victoria, 0000, Australia</p>
									</div>
									<div class="about-step">
										<a href="#" class="view-profile-link a-link">View Public Profile<i class="fa-solid fa-arrow-up-right-from-square ms-2"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Body End -->
	

	<script src="js/vertical-responsive-menu.min.js"></script>
	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="vendor/OwlCarousel/owl.carousel.js"></script>
	<script src="vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>	
	<script src="js/custom.js"></script>
	<script src="js/datepicker.min.js"></script>
	<script src="js/i18n/datepicker.en.js"></script>
	<script src="js/night-mode.js"></script>


</body></html>