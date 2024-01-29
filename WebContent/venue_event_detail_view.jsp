<%@ page import="javax.servlet.http.Cookie" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en" class="h-100"><head></head><body class="d-flex flex-column h-100">﻿

	
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
		<link href="css/responsive.css" rel="stylesheet">
		<link href="css/night-mode.css" rel="stylesheet">
		
		<!-- Vendor Stylesheets -->
		<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
		<link href="vendor/OwlCarousel/assets/owl.carousel.css" rel="stylesheet">
		<link href="vendor/OwlCarousel/assets/owl.theme.default.min.css" rel="stylesheet">
		<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">		
		
	<c:if test="${not empty cookie.email.value}">
	


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
							<img src="images/logo-icon.svg" alt="">
						</div>
						<div class="main-logo" id="logo">
							<img src="images/RishabhLight Final.png" alt="">
							<img class="logo-inverse" src="images/RishabhDark Final.png" alt="">
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
							<ul class="navbar-nav justify-content-end flex-grow-1 pe_5">
								<li class="nav-item">
									<a class="nav-link " aria-current="page" href="index.jsp">Home</a>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link active dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Explore Events
									</a>
									<ul class="dropdown-menu dropdown-submenu">
										<li><a class="dropdown-item" href="explore_events.jsp">Explore Events</a></li>
										<li><a class="dropdown-item" href="venue_event_detail_view.jsp">Venue Event Detail View</a></li>
										<li><a class="dropdown-item" href="online_event_detail_view.jsp">Online Event Detail View</a></li>
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
									<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Help
									</a>
									<ul class="dropdown-menu dropdown-submenu">
										<li><a class="dropdown-item" href="contact_us.jsp">Contact Us</a></li>
									</ul>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Pages
									</a>
									<ul class="dropdown-menu dropdown-submenu">
										<li>
											<a class="dropdown-item submenu-item" href="#">Other Pages</a>
											<ul class="submenu dropdown-menu">
												<li><a class="dropdown-item pe-5" href="sign_in.jsp">Sign In</a></li>
												<li><a class="dropdown-item pe-5" href="sign_up.jsp">Sign Up</a></li>
												<li><a class="dropdown-item pe-5" href="forgot_password.jsp">Forgot Password</a></li>
												<li><a class="dropdown-item pe-5" href="about_us.jsp">About Us</a></li>
												<li><a class="dropdown-item pe-5" href="checkout.jsp">Checkout</a></li>
												<li><a class="dropdown-item pe-5" href="checkout_premium.jsp">Checkout Premium</a></li>
												<li><a class="dropdown-item pe-5" href="invoice.jsp">Invoice</a></li>
												<li><a class="dropdown-item pe-5" href="coming_soon.jsp">Coming Soon</a></li>
												<li><a class="dropdown-item pe-5" href="error_404.jsp">Error 404</a></li>
											</ul>
										</li>
										<li>
											<a class="dropdown-item submenu-item" href="#">Create Event</a>
											<ul class="submenu dropdown-menu">
												<li><a class="dropdown-item pe-5" href="create.jsp">Create</a></li>
												<li><a class="dropdown-item pe-5" href="create_venue_event.jsp">Create Venue Event</a></li>
												<li><a class="dropdown-item pe-5" href="create_online_event.jsp">Create Online Event</a></li>
											</ul>
										</li>
										<li>
											<a class="dropdown-item submenu-item" href="#">Events View</a>
											<ul class="submenu dropdown-menu">
												<li><a class="dropdown-item pe-5" href="online_event_detail_view.jsp">Online Event Detail View</a></li>
												<li><a class="dropdown-item pe-5" href="venue_event_detail_view.jsp">Venue Event Detail View</a></li>
											</ul>
										</li>
										<li><a class="dropdown-item" href="booking_confirmed.jsp">Booking Confirmed</a></li>
										<li><a class="dropdown-item" href="attendee_profile_view.jsp">Attendee Profile View</a></li>
										<li><a class="dropdown-item" href="organiser_profile_view.jsp">Organiser Profile View</a></li>
										<li><a class="dropdown-item" href="my_organisation_dashboard.jsp">Organization Dashboard</a></li>
										<li><a class="dropdown-item" href="sell_tickets_online.jsp">Sell Tickets Online</a></li>
										<li><a class="dropdown-item" href="refer_a_friend.jsp">Refer a Friend</a></li>
										<li><a class="dropdown-item" href="term_and_conditions.jsp">Terms &amp; Conditions</a></li>
										<li><a class="dropdown-item" href="privacy_policy.jsp">Privacy Policy</a></li>
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
									<li class="breadcrumb-item"><a href="explore_events.jsp">Explore Events</a></li>
									<li class="breadcrumb-item active" aria-current="page">Venue Event Detail View</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="event-dt-block p-80">
			<div class="container">
				<div class="row">
					<div class="col-xl-12 col-lg-12 col-md-12">
						<div class="event-top-dts">
							<div class="event-top-date">
								<span class="event-month">Apr</span>
								<span class="event-date">30</span>
							</div>
							<div class="event-top-dt">
								<h3 class="event-main-title">Spring Showcase Saturday April 30th 2022 at 7pm</h3>
								<div class="event-top-info-status">
									<span class="event-type-name"><i class="fa-solid fa-location-dot"></i>Venue Event</span>
									<span class="event-type-name details-hr">Starts on <span class="ev-event-date">Sat, Apr 30, 2022 11:30 AM</span></span>
									<span class="event-type-name details-hr">2h</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-8 col-lg-7 col-md-12">
						<div class="main-event-dt">
							<div class="event-img">
								<img src="images/event-imgs/big-2.jpg" alt="">		
							</div>
							<div class="share-save-btns dropdown">
								<button class="sv-btn me-2"><i class="fa-regular fa-bookmark me-2"></i>Save</button>
								<button class="sv-btn" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-share-nodes me-2"></i>Share</button>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="#"><i class="fa-brands fa-facebook me-3"></i>Facebook</a></li>
									<li><a class="dropdown-item" href="#"><i class="fa-brands fa-twitter me-3"></i>Twitter</a></li>
									<li><a class="dropdown-item" href="#"><i class="fa-brands fa-linkedin-in me-3"></i>LinkedIn</a></li>
									<li><a class="dropdown-item" href="#"><i class="fa-regular fa-envelope me-3"></i>Email</a></li>
								</ul>
							</div>
							<div class="main-event-content">
								<h4>About This Event</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dolor justo, sodales mattis orci et, mattis faucibus est. Nulla semper consectetur sapien a tempor. Ut vel lacus lorem. Nulla mauris massa, pharetra a mi ut, mattis euismod libero. Ut pretium bibendum urna nec egestas. Etiam tempor vehicula libero. Aenean cursus venenatis orci, ac porttitor leo porta sit amet. Nulla eleifend mollis enim sed rutrum. Nunc cursus ex a ligula consequat aliquet. Donec semper tellus ac ante vestibulum, vitae varius leo mattis. In vestibulum blandit tempus. Etiam elit turpis, volutpat hendrerit varius ut, posuere a sapien. Maecenas molestie bibendum finibus. Nulla euismod neque vel sem hendrerit faucibus. Nam sit amet metus sollicitudin, luctus eros at, consectetur libero.</p>
								<p>In malesuada luctus libero sed gravida. Suspendisse nunc est, maximus vel viverra nec, suscipit non massa. Maecenas efficitur vestibulum pellentesque. Ut finibus ullamcorper congue. Sed ut libero sit amet lorem venenatis facilisis. Mauris egestas tortor vel massa auctor, eget gravida mauris cursus. Etiam elementum semper fermentum. Suspendisse potenti. Morbi lobortis leo urna, non laoreet enim ultricies id. Integer id felis nec sapien consectetur porttitor. Proin tempor mauris in odio iaculis semper. Cras ultricies nulla et dui viverra, eu convallis orci fermentum.</p>
							</div>							
						</div>
					</div>
					<div class="col-xl-4 col-lg-5 col-md-12">
						<div class="main-card event-right-dt">
							<div class="bp-title">
								<h4>Event Details</h4>
							</div>
							<div class="time-left">
								<div class="countdown">
									<div class="countdown-item">
										<span id="day"></span>days
									</div>  
									<div class="countdown-item">							
										<span id="hour"></span>Hours
									</div>
									<div class="countdown-item">
										<span id="minute"></span>Minutes
									</div> 
									<div class="countdown-item">
										<span id="second"></span>Seconds
									</div>														
								</div>
							</div>
							<div class="event-dt-right-group mt-5">
								<div class="event-dt-right-icon">
									<i class="fa-solid fa-circle-user"></i>
								</div>
								<div class="event-dt-right-content">
									<h4>Organised by</h4>
									<h5>The Teeny Rabbit</h5>
									<a href="attendee_profile_view.jsp">View Profile</a>
								</div>
							</div>
							<div class="event-dt-right-group">
								<div class="event-dt-right-icon">
									<i class="fa-solid fa-calendar-day"></i>
								</div>
								<div class="event-dt-right-content">
									<h4>Date and Time</h4>
									<h5>Sat, Apr 30, 2022 11:30 AM</h5>
									<div class="add-to-calendar">
										<a href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
											<i class="fa-regular fa-calendar-days me-3"></i>Add to Calendar
										</a>
										<ul class="dropdown-menu">
											<li><a class="dropdown-item" href="#"><i class="fa-brands fa-windows me-3"></i>Outlook</a></li>
											<li><a class="dropdown-item" href="#"><i class="fa-brands fa-apple me-3"></i>Apple</a></li>
											<li><a class="dropdown-item" href="#"><i class="fa-brands fa-google me-3"></i>Google</a></li>
											<li><a class="dropdown-item" href="#"><i class="fa-brands fa-yahoo me-3"></i>Yahoo</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="event-dt-right-group">
								<div class="event-dt-right-icon">
									<i class="fa-solid fa-location-dot"></i>
								</div>
								<div class="event-dt-right-content">
									<h4>Location</h4>
									<h5 class="mb-0">00 Challis St, Newport, Victoria, 0000, Australia</h5>
									<a href="#"><i class="fa-solid fa-location-dot me-2"></i>View Map</a>
								</div>
							</div>
							<div class="select-tickets-block">
								<h6>Select Tickets</h6>
								<div class="select-ticket-action">
									<div class="ticket-price">AUD $75.00</div>
									<div class="quantity">
										<div class="counter">
											<span class="down" onclick="decreaseCount(event, this)">-</span>
											<input type="text" value="0">
											<span class="up" onclick="increaseCount(event, this)">+</span>
										</div>
									</div>
								</div>
								<p>2 x pair hand painted leather earrings 1 x glass of bubbles / or coffee Individual grazing box / fruit cup</p>
								<div class="xtotel-tickets-count">
									<div class="x-title">1x Ticket(s)</div>
									<h4>AUD <span>$0.00</span></h4>
								</div>
							</div>
							<div class="booking-btn">
								<a href="checkout.jsp" class="main-btn btn-hover w-100">Book Now</a>
							</div>
						</div>
					</div>
					<div class="col-xl-12 col-lg-12 col-md-12">
						<div class="more-events">
							<div class="main-title position-relative">
								<h3>More Events</h3>
								<a href="explore_events.jsp" class="view-all-link">Browse All<i class="fa-solid fa-right-long ms-2"></i></a>
							</div>
							<div class="owl-carousel moreEvents-slider owl-theme">
								<div class="item">
									<div class="main-card mt-4">
										<div class="event-thumbnail">
											<a href="venue_event_detail_view.jsp" class="thumbnail-img">
												<img src="images/event-imgs/img-1.jpg" alt="">
											</a>
											<span class="bookmark-icon" title="Bookmark"></span>
										</div>
										<div class="event-content">
											<a href="venue_event_detail_view.jsp" class="event-title">A New Way Of Life</a>
											<div class="duration-price-remaining">
												<span class="duration-price">AUD $100.00*</span>
												<span class="remaining"></span>
											</div>
										</div>
										<div class="event-footer">
											<div class="event-timing">
												<div class="publish-date">
													<span><i class="fa-solid fa-calendar-day me-2"></i>15 Apr</span>
													<span class="dot"><i class="fa-solid fa-circle"></i></span>
													<span>Fri, 3.45 PM</span>
												</div>
												<span class="publish-time"><i class="fa-solid fa-clock me-2"></i>1h</span>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card mt-4">
										<div class="event-thumbnail">
											<a href="online_event_detail_view.jsp" class="thumbnail-img">
												<img src="images/event-imgs/img-2.jpg" alt="">
											</a>
											<span class="bookmark-icon" title="Bookmark"></span>
										</div>
										<div class="event-content">
											<a href="online_event_detail_view.jsp" class="event-title">Earrings Workshop with Bronwyn David</a>
											<div class="duration-price-remaining">
												<span class="duration-price">AUD $75.00*</span>
												<span class="remaining"><i class="fa-solid fa-ticket fa-rotate-90"></i>6 Remaining</span>
											</div>
										</div>
										<div class="event-footer">
											<div class="event-timing">
												<div class="publish-date">
													<span><i class="fa-solid fa-calendar-day me-2"></i>30 Apr</span>
													<span class="dot"><i class="fa-solid fa-circle"></i></span>
													<span>Sat, 11.20 PM</span>
												</div>
												<span class="publish-time"><i class="fa-solid fa-clock me-2"></i>2h</span>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card mt-4">
										<div class="event-thumbnail">
											<a href="venue_event_detail_view.jsp" class="thumbnail-img">
												<img src="images/event-imgs/img-3.jpg" alt="">
											</a>
											<span class="bookmark-icon" title="Bookmark"></span>
										</div>
										<div class="event-content">
											<a href="venue_event_detail_view.jsp" class="event-title">Spring Showcase Saturday April 30th 2022 at 7pm</a>
											<div class="duration-price-remaining">
												<span class="duration-price">Free*</span>
												<span class="remaining"></span>
											</div>
										</div>
										<div class="event-footer">
											<div class="event-timing">
												<div class="publish-date">
													<span><i class="fa-solid fa-calendar-day me-2"></i>1 May</span>
													<span class="dot"><i class="fa-solid fa-circle"></i></span>
													<span>Sun, 4.30 PM</span>
												</div>
												<span class="publish-time"><i class="fa-solid fa-clock me-2"></i>3h</span>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card mt-4">
										<div class="event-thumbnail">
											<a href="online_event_detail_view.jsp" class="thumbnail-img">
												<img src="images/event-imgs/img-4.jpg" alt="">
											</a>
											<span class="bookmark-icon" title="Bookmark"></span>
										</div>
										<div class="event-content">
											<a href="online_event_detail_view.jsp" class="event-title">Shutter Life</a>
											<div class="duration-price-remaining">
												<span class="duration-price">AUD $85.00</span>
												<span class="remaining"><i class="fa-solid fa-ticket fa-rotate-90"></i>7 Remaining</span>
											</div>
										</div>
										<div class="event-footer">
											<div class="event-timing">
												<div class="publish-date">
													<span><i class="fa-solid fa-calendar-day me-2"></i>1 May</span>
													<span class="dot"><i class="fa-solid fa-circle"></i></span>
													<span>Sun, 5.30 PM</span>
												</div>
												<span class="publish-time"><i class="fa-solid fa-clock me-2"></i>1h</span>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card mt-4">
										<div class="event-thumbnail">
											<a href="venue_event_detail_view.jsp" class="thumbnail-img">
												<img src="images/event-imgs/img-5.jpg" alt="">
											</a>
											<span class="bookmark-icon" title="Bookmark"></span>
										</div>
										<div class="event-content">
											<a href="venue_event_detail_view.jsp" class="event-title">Friday Night Dinner at The Old Station May 27 2022</a>
											<div class="duration-price-remaining">
												<span class="duration-price">AUD $41.50*</span>
												<span class="remaining"></span>
											</div>
										</div>
										<div class="event-footer">
											<div class="event-timing">
												<div class="publish-date">
													<span><i class="fa-solid fa-calendar-day me-2"></i>27 May</span>
													<span class="dot"><i class="fa-solid fa-circle"></i></span>
													<span>Fri, 12.00 PM</span>
												</div>
												<span class="publish-time"><i class="fa-solid fa-clock me-2"></i>5h</span>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card mt-4">
										<div class="event-thumbnail">
											<a href="venue_event_detail_view.jsp" class="thumbnail-img">
												<img src="images/event-imgs/img-6.jpg" alt="">
											</a>
											<span class="bookmark-icon" title="Bookmark"></span>
										</div>
										<div class="event-content">
											<a href="venue_event_detail_view.jsp" class="event-title">Step Up Open Mic Show</a>
											<div class="duration-price-remaining">
												<span class="duration-price">AUD $200.00*</span>
												<span class="remaining"></span>
											</div>
										</div>
										<div class="event-footer">
											<div class="event-timing">
												<div class="publish-date">
													<span><i class="fa-solid fa-calendar-day me-2"></i>30 Jun</span>
													<span class="dot"><i class="fa-solid fa-circle"></i></span>
													<span>Thu, 4.30 PM</span>
												</div>
												<span class="publish-time"><i class="fa-solid fa-clock me-2"></i>1h</span>
											</div>
										</div>
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
							<p class="mb-0">© 2022, <strong>Barren</strong>. All rights reserved. Powered by Gambolthemes</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer End-->
	
	
	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="vendor/OwlCarousel/owl.carousel.js"></script>
	<script src="vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>	
	<script src="js/custom.js"></script>
	<script src="js/timer.js"></script>
	<script src="js/night-mode.js"></script>

</c:if>
	
<c:if test="${empty cookie.email.value}">
    <c:redirect url="sign_up.jsp" />
</c:if>
</body></html>