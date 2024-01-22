<%@ page import="javax.servlet.http.Cookie" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>


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
		<link href="css/datepicker.min.css" rel="stylesheet">
		<link href="css/jquery-steps.css" rel="stylesheet">
		<link href="css/responsive.css" rel="stylesheet">
		<link href="css/night-mode.css" rel="stylesheet">
		
		<!-- Vendor Stylesheets -->
		<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
		<link href="vendor/OwlCarousel/assets/owl.carousel.css" rel="stylesheet">
		<link href="vendor/OwlCarousel/assets/owl.theme.default.min.css" rel="stylesheet">
		<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">		
		<link href="vendor/ckeditor5/sample/css/sample.css" rel="stylesheet">
		
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
							<img src="images/logo.svg" alt="">
							<img class="logo-inverse" src="images/dark-logo.svg" alt="">
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
									<a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Explore Events
									</a>
									<ul class="dropdown-menu dropdown-submenu">
										<li><a class="dropdown-item" href="explore_events.jsp">Explore Events</a></li>
										<li><a class="dropdown-item" href="venue_event_detail_view.jsp">Venue Event Detail View</a></li>
										<li><a class="dropdown-item" href="online_event_detail_view.jsp">Online Event Detail View</a></li>
									</ul>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="pricing.jsp">Pricing</a>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Blog
									</a>
									<ul class="dropdown-menu dropdown-submenu">
										<li><a class="dropdown-item" href="our_blog.jsp">Our Blog</a></li>
										<li><a class="dropdown-item" href="blog_detail_view.jsp">Blog Detail View</a></li>
									</ul>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Help
									</a>
									<ul class="dropdown-menu dropdown-submenu">
										<li><a class="dropdown-item" href="faq.jsp">FAQ</a></li>
										<li><a class="dropdown-item" href="help_center.jsp">Help Center</a></li>
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
							<li>
								<a href="create.jsp" class="create-btn btn-hover">
									<i class="fa-solid fa-calendar-days"></i>
									<span>Create Event</span>
								</a>
							</li>
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
										<a href="my_organisation_dashboard.jsp" class="link-item">My Organisation</a>
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
									<li class="breadcrumb-item"><a href="create.jsp">Create</a></li>
									<li class="breadcrumb-item active" aria-current="page">Create Online Event</li>
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
						<div class="main-title text-center">
							<h3>Create Online Event</h3>
						</div>
					</div>
					<div class="col-xl-8 col-lg-9 col-md-12">
						<div class="wizard-steps-block">
							<div id="add-event-tab" class="step-app">
								<ul class="step-steps">
									<li class="active">
										<a href="#tab_step1">
											<span class="number"></span>
											<span class="step-name">Details</span>
										</a>
									</li>
									<li>
										<a href="#tab_step2">
											<span class="number"></span>
											<span class="step-name">Tickets</span>
										</a>
									</li>
									<li>
										<a href="#tab_step3">
											<span class="number"></span>
											<span class="step-name">Setting</span>
										</a>
									</li>
								</ul>
								<div class="step-content">
									<div class="step-tab-panel step-tab-info active" id="tab_step1"> 
										<div class="tab-from-content">
											<div class="main-card">
												<div class="bp-title">
													<h4><i class="fa-solid fa-circle-info step_icon me-3"></i>Details</h4>
												</div>
												<div class="p-4 bp-form main-form">
													<div class="row">
														<div class="col-lg-12 col-md-12">
															<div class="form-group border_bottom pb_30">
																<label class="form-label fs-16">Give your event a name.*</label>
																<p class="mt-2 d-block fs-14 mb-3">See how your name appears on the event page and a list of all places where your event name will be used. <a href="#" class="a-link">Learn more</a></p>
																<input class="form-control h_50" type="text" placeholder="Enter event name here" value="">
															</div>
															<div class="form-group border_bottom pt_30 pb_30">
																<label class="form-label fs-16">Choose a category for your event.*</label>
																<p class="mt-2 d-block fs-14 mb-3">Choosing relevant categories helps to improve the discoverability of your event. <a href="#" class="a-link">Learn more</a></p>
																<select class="selectpicker" multiple="" data-size="5" title="Select category" data-live-search="true">
																	<option value="01">Arts</option>
																	<option value="02">Business</option>
																	<option value="03">Coaching and Consulting</option>
																	<option value="04">Community and Culture</option>
																	<option value="05">Entrepreneurship</option>
																	<option value="06">Education and Training</option>
																	<option value="07">Family and Friends</option>
																	<option value="08">Fashion and Beauty</option>
																	<option value="09">Film and Entertainment</option>
																	<option value="10">Food and Drink</option>
																	<option value="11">Government and Politics</option>
																	<option value="12">Health and Wellbeing</option>
																	<option value="13">Hobbies and Interest</option>
																	<option value="14">Music and Theater</option>
																	<option value="15">Religion and Spirituality</option>
																	<option value="16">Science and Technology</option>
																	<option value="17">Sports and Fitness</option>
																	<option value="18">Travel and Outdoor</option>
																	<option value="19">Visual Arts</option>
																	<option value="20">Others</option>
																</select>
															</div>
															<div class="form-group border_bottom pt_30 pb_30">
																<label class="form-label fs-16">When is your event?*</label>
																<p class="mt-2 fs-14 d-block mb-3">Tell your attendees when your event starts so they can get ready to attend.</p>
																<div class="row g-2">
																	<div class="col-md-6">
																		<label class="form-label mt-3 fs-6">Event Date.*</label>																
																		<div class="loc-group position-relative">
																			<input class="form-control h_50 datepicker-here" data-language="en" type="text" placeholder="MM/DD/YYYY" value="">
																			<span class="absolute-icon"><i class="fa-solid fa-calendar-days"></i></span>
																		</div>
																	</div>
																	<div class="col-md-6">																		
																		<div class="row g-2">
																			<div class="col-md-6">
																				<div class="clock-icon">
																					<label class="form-label mt-3 fs-6">Time</label>	
																					<select class="selectpicker" data-size="5" data-live-search="true">
																						<option value="00:00">12:00 AM</option>
																						<option value="00:15">12:15 AM</option>
																						<option value="00:30">12:30 AM</option>
																						<option value="00:45">12:45 AM</option>
																						<option value="01:00">01:00 AM</option>
																						<option value="01:15">01:15 AM</option>
																						<option value="01:30">01:30 AM</option>
																						<option value="01:45">01:45 AM</option>
																						<option value="02:00">02:00 AM</option>
																						<option value="02:15">02:15 AM</option>
																						<option value="02:30">02:30 AM</option>
																						<option value="02:45">02:45 AM</option>
																						<option value="03:00">03:00 AM</option>
																						<option value="03:15">03:15 AM</option>
																						<option value="03:30">03:30 AM</option>
																						<option value="03:45">03:45 AM</option>
																						<option value="04:00">04:00 AM</option>
																						<option value="04:15">04:15 AM</option>
																						<option value="04:30">04:30 AM</option>
																						<option value="04:45">04:45 AM</option>
																						<option value="05:00">05:00 AM</option>
																						<option value="05:15">05:15 AM</option>
																						<option value="05:30">05:30 AM</option>
																						<option value="05:45">05:45 AM</option>
																						<option value="06:00">06:00 AM</option>
																						<option value="06:15">06:15 AM</option>
																						<option value="06:30">06:30 AM</option>
																						<option value="06:45">06:45 AM</option>
																						<option value="07:00">07:00 AM</option>
																						<option value="07:15">07:15 AM</option>
																						<option value="07:30">07:30 AM</option>
																						<option value="07:45">07:45 AM</option>
																						<option value="08:00">08:00 AM</option>
																						<option value="08:15">08:15 AM</option>
																						<option value="08:30">08:30 AM</option>
																						<option value="08:45">08:45 AM</option>
																						<option value="09:00">09:00 AM</option>
																						<option value="09:15">09:15 AM</option>
																						<option value="09:30">09:30 AM</option>
																						<option value="09:45">09:45 AM</option>
																						<option value="10:00" selected="selected">10:00 AM</option>
																						<option value="10:15">10:15 AM</option>
																						<option value="10:30">10:30 AM</option>
																						<option value="10:45">10:45 AM</option>
																						<option value="11:00">11:00 AM</option>
																						<option value="11:15">11:15 AM</option>
																						<option value="11:30">11:30 AM</option>
																						<option value="11:45">11:45 AM</option>
																						<option value="12:00">12:00 PM</option>
																						<option value="12:15">12:15 PM</option>
																						<option value="12:30">12:30 PM</option>
																						<option value="12:45">12:45 PM</option>
																						<option value="13:00">01:00 PM</option>
																						<option value="13:15">01:15 PM</option>
																						<option value="13:30">01:30 PM</option>
																						<option value="13:45">01:45 PM</option>
																						<option value="14:00">02:00 PM</option>
																						<option value="14:15">02:15 PM</option>
																						<option value="14:30">02:30 PM</option>
																						<option value="14:45">02:45 PM</option>
																						<option value="15:00">03:00 PM</option>
																						<option value="15:15">03:15 PM</option>
																						<option value="15:30">03:30 PM</option>
																						<option value="15:45">03:45 PM</option>
																						<option value="16:00">04:00 PM</option>
																						<option value="16:15">04:15 PM</option>
																						<option value="16:30">04:30 PM</option>
																						<option value="16:45">04:45 PM</option>
																						<option value="17:00">05:00 PM</option>
																						<option value="17:15">05:15 PM</option>
																						<option value="17:30">05:30 PM</option>
																						<option value="17:45">05:45 PM</option>
																						<option value="18:00">06:00 PM</option>
																						<option value="18:15">06:15 PM</option>
																						<option value="18:30">06:30 PM</option>
																						<option value="18:45">06:45 PM</option>
																						<option value="19:00">07:00 PM</option>
																						<option value="19:15">07:15 PM</option>
																						<option value="19:30">07:30 PM</option>
																						<option value="19:45">07:45 PM</option>
																						<option value="20:00">08:00 PM</option>
																						<option value="20:15">08:15 PM</option>
																						<option value="20:30">08:30 PM</option>
																						<option value="20:45">08:45 PM</option>
																						<option value="21:00">09:00 PM</option>
																						<option value="21:15">09:15 PM</option>
																						<option value="21:30">09:30 PM</option>
																						<option value="21:45">09:45 PM</option>
																						<option value="22:00">10:00 PM</option>
																						<option value="22:15">10:15 PM</option>
																						<option value="22:30">10:30 PM</option>
																						<option value="22:45">10:45 PM</option>
																						<option value="23:00">11:00 PM</option>
																						<option value="23:15">11:15 PM</option>
																						<option value="23:30">11:30 PM</option>
																						<option value="23:45">11:45 PM</option>
																					</select>
																				</div>
																			</div>
																			<div class="col-md-6">
																				<label class="form-label mt-3 fs-6">Duration</label>	
																				<select class="selectpicker" data-size="5" data-live-search="true">
																					<option value="15">15m</option>
																					<option value="30">30m</option>
																					<option value="45">45m</option>
																					<option value="60" selected="selected">1h</option>
																					<option value="75">1h 15m</option>
																					<option value="90">1h 30m</option>
																					<option value="105">1h 45m</option>
																					<option value="120">2h</option>
																					<option value="135">2h 15m</option>
																					<option value="150">2h 30m</option>
																					<option value="165">2h 45m</option>
																					<option value="180">3h</option>
																					<option value="195">3h 15m</option>
																					<option value="210">3h 30m</option>
																					<option value="225">3h 45m</option>
																				</select>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="form-group pt_30 pb_30">
																<label class="form-label fs-16">Add a few images to your event banner.</label>
																<p class="mt-2 fs-14 d-block mb-3 pe_right">Upload colorful and vibrant images as the banner for your event! See how beautiful images help your event details page. <a href="#" class="a-link">Learn more</a></p>
																<div class="content-holder mt-4">
																	<div class="default-event-thumb">   
																		<div class="default-event-thumb-btn">
																			<div class="thumb-change-btn">
																				<input type="file" id="thumb-img">
																				<label for="thumb-img">Change Image</label>
																			</div>
																		</div>
																		<img src="images/banners/custom-img.jpg" alt="">
																	</div>
																</div>
															</div>
															<div class="form-group border_bottom pb_30">
																<label class="form-label fs-16">Please describe your event.</label>
																<p class="mt-2 fs-14 d-block mb-3">Write a few words below to describe your event and provide any extra information such as schedules, itinerary or any special instructions required to attend your event.</p>
																<div class="text-editor mt-4">
																	<div id="pd_editor"></div>
																</div>
															</div>
															<div class="form-group pt_30 pb-2">
																<label class="form-label fs-16">What type of online event are you hosting?*</label>
																<p class="mt-2 fs-14 d-block mb-3">Choosing the type of your event helps us to create a more tailored experience for you. <a href="#" class="a-link">Learn more</a></p>
																<div class="stepper-data-set">
																	<div class="content-holder template-selector">
																		<div class="row g-3">
																			<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-6">
																				<div class="template-item mt-3">
																					<input id="standard_webinar" type="radio" name="template_id" value="standard webinar">
																					<label class="template sw-template" for="standard_webinar">
																						<img src="images/icons/standard-webinar.png" alt="">
																					</label>											
																					<h6 class="hosting-title fs-14 mt-2 mb-0">Standard Webinar</h6>
																				</div>
																			</div>
																			<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-6">
																				<div class="template-item mt-3">
																					<input id="traning_workshop" type="radio" name="template_id" value="traning workshop">
																					<label class="template tw-template" for="traning_workshop">
																						<img src="images/icons/health-and-welbeing.png" alt="">
																					</label>											
																					<h6 class="hosting-title fs-14 mt-2 mb-0">Training and Workshop</h6>
																				</div>
																			</div>
																			<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-6">
																				<div class="template-item mt-3">
																					<input id="online_classes" type="radio" name="template_id" value="online classes">
																					<label class="template oc-template" for="online_classes">
																						<img src="images/icons/e-learning.png" alt="">
																					</label>											
																					<h6 class="hosting-title fs-14 mt-2 mb-0">Online Classes</h6>
																				</div>
																			</div>
																			<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-6">
																				<div class="template-item mt-3">
																					<input id="talk_show" type="radio" name="template_id" value="talk show">
																					<label class="template ts-template" for="talk_show">
																						<img src="images/icons/talk-show-1.png" alt="">
																					</label>											
																					<h6 class="hosting-title fs-14 mt-2 mb-0">Talk Show</h6>
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
									</div>
									
									<div class="step-tab-panel step-tab-gallery" id="tab_step2">
										<div class="tab-from-content">
											<div class="main-card">
												<div class="bp-title">
													<h4><i class="fa-solid fa-ticket step_icon me-3"></i>Tickets</h4>
												</div>
												<div class="p-4 bp-form main-form">
													<div class="form-group border_bottom pb_30">
														<div class="ticket-section">
															<label class="form-label fs-16">Let's create tickets!</label>
															<p class="mt-2 fs-14 d-block mb-3 pe_right">Add the ticket price and the number of your attendees. For free events, keep the price at $0.</p>
															<div class="content-holder">
																<div class="row g-3">
																	<div class="col-md-6 disabled-action">
																		<label class="form-label mt-3 fs-6">Price*</label>
																		<div class="loc-group position-relative input-group">
																			<input class="form-control h_50" type="text" placeholder="" value="10.00">
																			<div class="pp-select">
																				<select class="selectpicker dropdown-no-bg">
																					<option value="AUD" selected="selected">AUD</option>
																				</select>
																			</div>
																		</div>
																	</div>
																	<div class="col-md-6">
																		<label class="form-label mt-3 fs-6">Total number of tickets available*</label>
																		<div class="input-number">
																			<input class="form-control h_50" type="number" placeholder="" value="5">
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="free-event pt_30">
															<div class="content-holder">
																<div class="form-group">
																	<div class="d-flex align-items-start">
																		<label class="btn-switch m-0 me-3">
																			<input type="checkbox" class="" id="free-event-ticketing" value="">
																			<span class="checkbox-slider"></span>
																		</label>
																		<div class="d-flex flex-column">
																			<label class="color-black fs-14 fw-bold mb-1">Tickets are free</label>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="stepper-data-set pt_30 disabled-action">
														<div class="content-holder">
															<div class="form-group">
																<div class="d-flex align-items-start">
																	<label class="btn-switch m-0 me-3">
																		<input type="checkbox" class="" id="bird-discount" value="">
																		<span class="checkbox-slider"></span>
																	</label>
																	<div class="d-flex flex-column">
																		<label class="color-black mb-1">I want to offer early bird discount.</label>
																		<p class="mt-2 fs-14 d-block mb-3">Enabling this discount lets your attendees get all the regular tickets features at a discounted price. <a href="#" class="a-link">Learn more</a></p>
																	</div>
																</div>
																<div class="online-event-discount-wrapper" style="display: none;">
																	<div class="row g-3">
																		<div class="col-md-3">
																			<label class="form-label mt-3 fs-6">Discount*</label>
																			<input class="form-control h_50" type="text" placeholder="0" value="">
																		</div>
																		<div class="col-md-3">
																			<label class="form-label mt-3 fs-6">Price*</label>
																			<select class="selectpicker">
																				<option value="Percentage" selected="">Percent(%)</option>
																				<option value="Fixed">Fixed($)</option>
																			</select>
																		</div>
																		<div class="col-md-3">
																			<label class="form-label mt-3 fs-6">Discount ends on*</label>
																			<div class="loc-group position-relative">
																				<input class="form-control h_50 datepicker-here" data-language="en" type="text" placeholder="MM/DD/YYYY" value="">
																				<span class="absolute-icon"><i class="fa-solid fa-calendar-days"></i></span>
																			</div>
																		</div>
																		<div class="col-md-3">
																			<div class="clock-icon">
																				<label class="form-label mt-3 fs-6">Time</label>	
																				<select class="selectpicker" data-size="5" data-live-search="true">
																					<option value="00:00">12:00 AM</option>
																					<option value="00:15">12:15 AM</option>
																					<option value="00:30">12:30 AM</option>
																					<option value="00:45">12:45 AM</option>
																					<option value="01:00">01:00 AM</option>
																					<option value="01:15">01:15 AM</option>
																					<option value="01:30">01:30 AM</option>
																					<option value="01:45">01:45 AM</option>
																					<option value="02:00">02:00 AM</option>
																					<option value="02:15">02:15 AM</option>
																					<option value="02:30">02:30 AM</option>
																					<option value="02:45">02:45 AM</option>
																					<option value="03:00">03:00 AM</option>
																					<option value="03:15">03:15 AM</option>
																					<option value="03:30">03:30 AM</option>
																					<option value="03:45">03:45 AM</option>
																					<option value="04:00">04:00 AM</option>
																					<option value="04:15">04:15 AM</option>
																					<option value="04:30">04:30 AM</option>
																					<option value="04:45">04:45 AM</option>
																					<option value="05:00">05:00 AM</option>
																					<option value="05:15">05:15 AM</option>
																					<option value="05:30">05:30 AM</option>
																					<option value="05:45">05:45 AM</option>
																					<option value="06:00">06:00 AM</option>
																					<option value="06:15">06:15 AM</option>
																					<option value="06:30">06:30 AM</option>
																					<option value="06:45">06:45 AM</option>
																					<option value="07:00">07:00 AM</option>
																					<option value="07:15">07:15 AM</option>
																					<option value="07:30">07:30 AM</option>
																					<option value="07:45">07:45 AM</option>
																					<option value="08:00">08:00 AM</option>
																					<option value="08:15">08:15 AM</option>
																					<option value="08:30">08:30 AM</option>
																					<option value="08:45">08:45 AM</option>
																					<option value="09:00">09:00 AM</option>
																					<option value="09:15">09:15 AM</option>
																					<option value="09:30">09:30 AM</option>
																					<option value="09:45">09:45 AM</option>
																					<option value="10:00" selected="selected">10:00 AM</option>
																					<option value="10:15">10:15 AM</option>
																					<option value="10:30">10:30 AM</option>
																					<option value="10:45">10:45 AM</option>
																					<option value="11:00">11:00 AM</option>
																					<option value="11:15">11:15 AM</option>
																					<option value="11:30">11:30 AM</option>
																					<option value="11:45">11:45 AM</option>
																					<option value="12:00">12:00 PM</option>
																					<option value="12:15">12:15 PM</option>
																					<option value="12:30">12:30 PM</option>
																					<option value="12:45">12:45 PM</option>
																					<option value="13:00">01:00 PM</option>
																					<option value="13:15">01:15 PM</option>
																					<option value="13:30">01:30 PM</option>
																					<option value="13:45">01:45 PM</option>
																					<option value="14:00">02:00 PM</option>
																					<option value="14:15">02:15 PM</option>
																					<option value="14:30">02:30 PM</option>
																					<option value="14:45">02:45 PM</option>
																					<option value="15:00">03:00 PM</option>
																					<option value="15:15">03:15 PM</option>
																					<option value="15:30">03:30 PM</option>
																					<option value="15:45">03:45 PM</option>
																					<option value="16:00">04:00 PM</option>
																					<option value="16:15">04:15 PM</option>
																					<option value="16:30">04:30 PM</option>
																					<option value="16:45">04:45 PM</option>
																					<option value="17:00">05:00 PM</option>
																					<option value="17:15">05:15 PM</option>
																					<option value="17:30">05:30 PM</option>
																					<option value="17:45">05:45 PM</option>
																					<option value="18:00">06:00 PM</option>
																					<option value="18:15">06:15 PM</option>
																					<option value="18:30">06:30 PM</option>
																					<option value="18:45">06:45 PM</option>
																					<option value="19:00">07:00 PM</option>
																					<option value="19:15">07:15 PM</option>
																					<option value="19:30">07:30 PM</option>
																					<option value="19:45">07:45 PM</option>
																					<option value="20:00">08:00 PM</option>
																					<option value="20:15">08:15 PM</option>
																					<option value="20:30">08:30 PM</option>
																					<option value="20:45">08:45 PM</option>
																					<option value="21:00">09:00 PM</option>
																					<option value="21:15">09:15 PM</option>
																					<option value="21:30">09:30 PM</option>
																					<option value="21:45">09:45 PM</option>
																					<option value="22:00">10:00 PM</option>
																					<option value="22:15">10:15 PM</option>
																					<option value="22:30">10:30 PM</option>
																					<option value="22:45">10:45 PM</option>
																					<option value="23:00">11:00 PM</option>
																					<option value="23:15">11:15 PM</option>
																					<option value="23:30">11:30 PM</option>
																					<option value="23:45">11:45 PM</option>
																				</select>
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
									 <div class="step-tab-panel step-tab-location" id="tab_step3">
										<div class="tab-from-content">											
											<div class="main-card">
												<div class="bp-title">
													<h4><i class="fa-solid fa-gear step_icon me-3"></i>Setting</h4>
												</div>
												<div class="p_30 bp-form main-form">
													<div class="form-group">
														<div class="ticket-section">
															<label class="form-label fs-16">Let's configure a few additional options for your event!</label>
															<p class="mt-2 fs-14 d-block mb-3 pe_right">Change the following settings based on your preferences to customise your event accordingly.</p>
															<div class="content-holder">
																<div class="setting-item border_bottom pb_30 pt-4">
																	<div class="d-flex align-items-start">
																		<label class="btn-switch m-0 me-3">
																			<input type="checkbox" class="" id="booking-start-time-btn" value="" checked="">
																			<span class="checkbox-slider"></span>
																		</label>
																		<div class="d-flex flex-column">
																			<label class="color-black fw-bold mb-1">I want the bookings to start immediately.</label>
																			<p class="mt-2 fs-14 d-block mb-0">Disable this option if you want to start your booking from a specific date and time.</p>
																		</div>
																	</div>
																	<div class="booking-start-time-holder" style="display:none;">
																		<div class="form-group pt_30">
																			<label class="form-label fs-16">Booking starts on</label>
																			<p class="mt-2 fs-14 d-block mb-0">Specify the date and time when you want the booking to start.</p>
																			<div class="row g-3">
																				<div class="col-md-6">
																					<label class="form-label mt-3 fs-6">Event Date.*</label>																
																					<div class="loc-group position-relative">
																						<input class="form-control h_50 datepicker-here" data-language="en" type="text" placeholder="MM/DD/YYYY" value="">
																						<span class="absolute-icon"><i class="fa-solid fa-calendar-days"></i></span>
																					</div>
																				</div>
																				<div class="col-md-6">																		
																					<div class="clock-icon">
																						<label class="form-label mt-3 fs-6">Time</label>	
																						<select class="selectpicker" data-size="5" data-live-search="true">
																							<option value="00:00">12:00 AM</option>
																							<option value="00:15">12:15 AM</option>
																							<option value="00:30">12:30 AM</option>
																							<option value="00:45">12:45 AM</option>
																							<option value="01:00">01:00 AM</option>
																							<option value="01:15">01:15 AM</option>
																							<option value="01:30">01:30 AM</option>
																							<option value="01:45">01:45 AM</option>
																							<option value="02:00">02:00 AM</option>
																							<option value="02:15">02:15 AM</option>
																							<option value="02:30">02:30 AM</option>
																							<option value="02:45">02:45 AM</option>
																							<option value="03:00">03:00 AM</option>
																							<option value="03:15">03:15 AM</option>
																							<option value="03:30">03:30 AM</option>
																							<option value="03:45">03:45 AM</option>
																							<option value="04:00">04:00 AM</option>
																							<option value="04:15">04:15 AM</option>
																							<option value="04:30">04:30 AM</option>
																							<option value="04:45">04:45 AM</option>
																							<option value="05:00">05:00 AM</option>
																							<option value="05:15">05:15 AM</option>
																							<option value="05:30">05:30 AM</option>
																							<option value="05:45">05:45 AM</option>
																							<option value="06:00">06:00 AM</option>
																							<option value="06:15">06:15 AM</option>
																							<option value="06:30">06:30 AM</option>
																							<option value="06:45">06:45 AM</option>
																							<option value="07:00">07:00 AM</option>
																							<option value="07:15">07:15 AM</option>
																							<option value="07:30">07:30 AM</option>
																							<option value="07:45">07:45 AM</option>
																							<option value="08:00">08:00 AM</option>
																							<option value="08:15">08:15 AM</option>
																							<option value="08:30">08:30 AM</option>
																							<option value="08:45">08:45 AM</option>
																							<option value="09:00">09:00 AM</option>
																							<option value="09:15">09:15 AM</option>
																							<option value="09:30">09:30 AM</option>
																							<option value="09:45">09:45 AM</option>
																							<option value="10:00" selected="selected">10:00 AM</option>
																							<option value="10:15">10:15 AM</option>
																							<option value="10:30">10:30 AM</option>
																							<option value="10:45">10:45 AM</option>
																							<option value="11:00">11:00 AM</option>
																							<option value="11:15">11:15 AM</option>
																							<option value="11:30">11:30 AM</option>
																							<option value="11:45">11:45 AM</option>
																							<option value="12:00">12:00 PM</option>
																							<option value="12:15">12:15 PM</option>
																							<option value="12:30">12:30 PM</option>
																							<option value="12:45">12:45 PM</option>
																							<option value="13:00">01:00 PM</option>
																							<option value="13:15">01:15 PM</option>
																							<option value="13:30">01:30 PM</option>
																							<option value="13:45">01:45 PM</option>
																							<option value="14:00">02:00 PM</option>
																							<option value="14:15">02:15 PM</option>
																							<option value="14:30">02:30 PM</option>
																							<option value="14:45">02:45 PM</option>
																							<option value="15:00">03:00 PM</option>
																							<option value="15:15">03:15 PM</option>
																							<option value="15:30">03:30 PM</option>
																							<option value="15:45">03:45 PM</option>
																							<option value="16:00">04:00 PM</option>
																							<option value="16:15">04:15 PM</option>
																							<option value="16:30">04:30 PM</option>
																							<option value="16:45">04:45 PM</option>
																							<option value="17:00">05:00 PM</option>
																							<option value="17:15">05:15 PM</option>
																							<option value="17:30">05:30 PM</option>
																							<option value="17:45">05:45 PM</option>
																							<option value="18:00">06:00 PM</option>
																							<option value="18:15">06:15 PM</option>
																							<option value="18:30">06:30 PM</option>
																							<option value="18:45">06:45 PM</option>
																							<option value="19:00">07:00 PM</option>
																							<option value="19:15">07:15 PM</option>
																							<option value="19:30">07:30 PM</option>
																							<option value="19:45">07:45 PM</option>
																							<option value="20:00">08:00 PM</option>
																							<option value="20:15">08:15 PM</option>
																							<option value="20:30">08:30 PM</option>
																							<option value="20:45">08:45 PM</option>
																							<option value="21:00">09:00 PM</option>
																							<option value="21:15">09:15 PM</option>
																							<option value="21:30">09:30 PM</option>
																							<option value="21:45">09:45 PM</option>
																							<option value="22:00">10:00 PM</option>
																							<option value="22:15">10:15 PM</option>
																							<option value="22:30">10:30 PM</option>
																							<option value="22:45">10:45 PM</option>
																							<option value="23:00">11:00 PM</option>
																							<option value="23:15">11:15 PM</option>
																							<option value="23:30">11:30 PM</option>
																							<option value="23:45">11:45 PM</option>
																						</select>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="setting-item border_bottom pb_30 pt_30">
																	<div class="d-flex align-items-start">
																		<label class="btn-switch m-0 me-3">
																			<input type="checkbox" class="" id="booking-end-time-btn" value="" checked="">
																			<span class="checkbox-slider"></span>
																		</label>
																		<div class="d-flex flex-column">
																			<label class="color-black fw-bold mb-1">I want the bookings to continue until my event ends.</label>
																			<p class="mt-2 fs-14 d-block mb-0">Disable this option if you want to end your booking from a specific date and time.</p>
																		</div>
																	</div>
																	<div class="booking-end-time-holder" style="display:none;">
																		<div class="form-group pt_30">
																			<label class="form-label fs-16">Booking ends on</label>
																			<p class="mt-2 fs-14 d-block mb-0">Specify the date and time when you want the booking to start.</p>
																			<div class="row g-3">
																				<div class="col-md-6">
																					<label class="form-label mt-3 fs-6">Event Date.*</label>																
																					<div class="loc-group position-relative">
																						<input class="form-control h_50 datepicker-here" data-language="en" type="text" placeholder="MM/DD/YYYY" value="">
																						<span class="absolute-icon"><i class="fa-solid fa-calendar-days"></i></span>
																					</div>
																				</div>
																				<div class="col-md-6">																		
																					<div class="clock-icon">
																						<label class="form-label mt-3 fs-6">Time</label>	
																						<select class="selectpicker" data-size="5" data-live-search="true">
																							<option value="00:00">12:00 AM</option>
																							<option value="00:15">12:15 AM</option>
																							<option value="00:30">12:30 AM</option>
																							<option value="00:45">12:45 AM</option>
																							<option value="01:00">01:00 AM</option>
																							<option value="01:15">01:15 AM</option>
																							<option value="01:30">01:30 AM</option>
																							<option value="01:45">01:45 AM</option>
																							<option value="02:00">02:00 AM</option>
																							<option value="02:15">02:15 AM</option>
																							<option value="02:30">02:30 AM</option>
																							<option value="02:45">02:45 AM</option>
																							<option value="03:00">03:00 AM</option>
																							<option value="03:15">03:15 AM</option>
																							<option value="03:30">03:30 AM</option>
																							<option value="03:45">03:45 AM</option>
																							<option value="04:00">04:00 AM</option>
																							<option value="04:15">04:15 AM</option>
																							<option value="04:30">04:30 AM</option>
																							<option value="04:45">04:45 AM</option>
																							<option value="05:00">05:00 AM</option>
																							<option value="05:15">05:15 AM</option>
																							<option value="05:30">05:30 AM</option>
																							<option value="05:45">05:45 AM</option>
																							<option value="06:00">06:00 AM</option>
																							<option value="06:15">06:15 AM</option>
																							<option value="06:30">06:30 AM</option>
																							<option value="06:45">06:45 AM</option>
																							<option value="07:00">07:00 AM</option>
																							<option value="07:15">07:15 AM</option>
																							<option value="07:30">07:30 AM</option>
																							<option value="07:45">07:45 AM</option>
																							<option value="08:00">08:00 AM</option>
																							<option value="08:15">08:15 AM</option>
																							<option value="08:30">08:30 AM</option>
																							<option value="08:45">08:45 AM</option>
																							<option value="09:00">09:00 AM</option>
																							<option value="09:15">09:15 AM</option>
																							<option value="09:30">09:30 AM</option>
																							<option value="09:45">09:45 AM</option>
																							<option value="10:00" selected="selected">10:00 AM</option>
																							<option value="10:15">10:15 AM</option>
																							<option value="10:30">10:30 AM</option>
																							<option value="10:45">10:45 AM</option>
																							<option value="11:00">11:00 AM</option>
																							<option value="11:15">11:15 AM</option>
																							<option value="11:30">11:30 AM</option>
																							<option value="11:45">11:45 AM</option>
																							<option value="12:00">12:00 PM</option>
																							<option value="12:15">12:15 PM</option>
																							<option value="12:30">12:30 PM</option>
																							<option value="12:45">12:45 PM</option>
																							<option value="13:00">01:00 PM</option>
																							<option value="13:15">01:15 PM</option>
																							<option value="13:30">01:30 PM</option>
																							<option value="13:45">01:45 PM</option>
																							<option value="14:00">02:00 PM</option>
																							<option value="14:15">02:15 PM</option>
																							<option value="14:30">02:30 PM</option>
																							<option value="14:45">02:45 PM</option>
																							<option value="15:00">03:00 PM</option>
																							<option value="15:15">03:15 PM</option>
																							<option value="15:30">03:30 PM</option>
																							<option value="15:45">03:45 PM</option>
																							<option value="16:00">04:00 PM</option>
																							<option value="16:15">04:15 PM</option>
																							<option value="16:30">04:30 PM</option>
																							<option value="16:45">04:45 PM</option>
																							<option value="17:00">05:00 PM</option>
																							<option value="17:15">05:15 PM</option>
																							<option value="17:30">05:30 PM</option>
																							<option value="17:45">05:45 PM</option>
																							<option value="18:00">06:00 PM</option>
																							<option value="18:15">06:15 PM</option>
																							<option value="18:30">06:30 PM</option>
																							<option value="18:45">06:45 PM</option>
																							<option value="19:00">07:00 PM</option>
																							<option value="19:15">07:15 PM</option>
																							<option value="19:30">07:30 PM</option>
																							<option value="19:45">07:45 PM</option>
																							<option value="20:00">08:00 PM</option>
																							<option value="20:15">08:15 PM</option>
																							<option value="20:30">08:30 PM</option>
																							<option value="20:45">08:45 PM</option>
																							<option value="21:00">09:00 PM</option>
																							<option value="21:15">09:15 PM</option>
																							<option value="21:30">09:30 PM</option>
																							<option value="21:45">09:45 PM</option>
																							<option value="22:00">10:00 PM</option>
																							<option value="22:15">10:15 PM</option>
																							<option value="22:30">10:30 PM</option>
																							<option value="22:45">10:45 PM</option>
																							<option value="23:00">11:00 PM</option>
																							<option value="23:15">11:15 PM</option>
																							<option value="23:30">11:30 PM</option>
																							<option value="23:45">11:45 PM</option>
																						</select>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="setting-item border_bottom pb_30 pt_30">
																	<div class="d-flex align-items-start">
																		<label class="btn-switch m-0 me-3">
																			<input type="checkbox" class="" id="passing-service-charge-btn" value="" checked="">
																			<span class="checkbox-slider"></span>
																		</label>
																		<div class="d-flex flex-column">
																			<label class="color-black fw-bold mb-1">I want my customers to pay the applicable service fees at the time when they make the bookings.</label>
																			<p class="mt-2 fs-14 d-block mb-0 pe_right">Passing your service charge means your attendees will pay your service charge in addition to the ticket price. <a href="#" class="a-link">Learn more</a></p>
																		</div>
																	</div>
																</div>
																<div class="setting-item border_bottom pb_30 pt_30">
																	<div class="d-flex align-items-start">
																		<label class="btn-switch m-0 me-3">
																			<input type="checkbox" class="" id="refund-policies-btn" value="" checked="">
																			<span class="checkbox-slider"></span>
																		</label>
																		<div class="d-flex flex-column">
																			<label class="color-black fw-bold mb-1">I do not wish to offer my customers with option to cancel their orders and receive refund.</label>
																			<p class="mt-2 fs-14 d-block mb-0">Disable this slider if you want to let your customers cancel their order and select a refund policy.</p>
																		</div>
																	</div>
																	<div class="refund-policies-holder" style="display:none;">
																		<div class="refund-policies-content border_top mt-4">
																			<div class="row grid-padding-8">
																				<div class="col-md-12 mb-6">
																					<div class="refund-method">
																						<div class="form-group mb-0">
																							<label class="brn-checkbox-radio mb-0 mt-4">
																								<input type="radio" required="" name="refund_policy_id" value="refund-id-1" class="form-check-input br-checkbox refund-policy1" checked="">
																								<span class="fs-14 fw-bold ms-xl-2">I wish to offer my customers with option to cancel their orders. However, I will handle refund manually.</span>
																								<span class="ms-xl-4 d-block sub-label mt-2 mb-4">Select this option if you want to refund your customer manually.</span>
																							</label>
																							<div class="refund-input-content" data-method="refund-id-1">
																								<div class="input-content mb-3">
																									<label class="color-black mb-2 fs-14 fw-bold">Cancellation must be made<span class="red">*</span></label>
																									<div class="d-block d-md-flex align-items-center flex-wrap flex-lg-wrap-reverse">
																										<div class="col-md-4 pl-0">
																											<div class="input-group mr-3 mx-width-135 input-number">
																												<input type="number" min="0" max="30" class="form-control" placeholder="">
																											</div>
																										</div>
																										<div class="input-sign ms-md-3 mt-3 mb-3">days before the event</div>
																									</div>
																								</div>
																							</div>
																						</div>
																					</div>
																					<div class="refund-method">
																						<label class="brn-checkbox-radio mb-0 mt-4">
																							<input type="radio" name="refund_policy_id" value="refund-id-2" class="form-check-input br-checkbox refund-polic-2">
																							<span class="fs-14 fw-bold ms-xl-2">I wish to offer my customers with option to cancel their orders and receive refund automatically.</span>
																							<span class="ms-xl-4 d-block sub-label mt-2 mb-4">Select this option if you want to refund your customer automatically.</span>
																						</label>
																						<div class="refund-input-content" data-method="refund-id-2">
																							<div class="input-content mb-3">
																								<label class="color-black mb-2 fs-14 fw-bold">Cancellation must be made <span class="red">*</span></label>
																								<div class="d-block d-md-flex align-items-center flex-wrap flex-lg-wrap-reverse">
																									<div class="col-md-4">
																										<div class="input-group input-number">
																											<input type="number" min="0" max="30" class="form-control" placeholder="">
																										</div>
																									</div>
																									<div class="input-sign ms-md-3 mt-3 mb-3">days before the event</div>
																								</div>
																							</div>
																							<div class="input-content mb-3">
																								<label class="color-black mb-2 fs-14 fw-bold">Refund amount <span class="red">*</span></label>
																								<div class="d-block d-md-flex align-items-center flex-wrap flex-lg-wrap-reverse">
																									<div class="col-md-4">
																										<div class="input-group loc-group position-relative">
																											<input type="text" value="" class="form-control" placeholder="">
																											<span class="percentage-icon"><i class="fa-solid fa-percent"></i></span>
																										</div>
																									</div>
																									<div class="input-sign ms-md-3 mt-3 mb-3">days before the event</div>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																			</div>																	
																		</div>
																	</div>
																</div>
																<div class="setting-item border_bottom pb_30 pt_30">
																	<div class="d-flex align-items-start">
																		<label class="btn-switch m-0 me-3">
																			<input type="checkbox" class="" id="ticket-instructions-btn" value="" checked="">
																			<span class="checkbox-slider"></span>
																		</label>
																		<div class="d-flex flex-column">
																			<label class="color-black fw-bold mb-1">I do not require adding any special instructions on the tickets.</label>
																			<p class="mt-2 fs-14 d-block mb-0">Use this space to provide any last minute checklists your attendees must know in order to attend your event. Anything you provide here will be printed on your ticket.</p>
																		</div>
																	</div>		
																	<div class="ticket-instructions-holder" style="display:none;">
																		<div class="ticket-instructions-content mt-4">
																			<textarea class="form-textarea" placeholder="About"></textarea>
																		</div>
																	</div>
																</div>
																<div class="setting-item pb-0 pt_30">
																	<div class="d-flex align-items-start">
																		<label class="btn-switch m-0 me-3">
																			<input type="checkbox" class="" id="tags-btn" value="" checked="">
																			<span class="checkbox-slider"></span>
																		</label>
																		<div class="d-flex flex-column">
																			<label class="color-black fw-bold mb-1">I do not want to add tags in my event</label>
																			<p class="mt-2 fs-14 d-block mb-0">Use relevant words as your tags to improve the discoverability of your event. <a href="#" class="a-link">Learn more</a></p>
																		</div>
																	</div>
																	<div class="tags-holder" style="display:none;">
																		<div class="ticket-instructions-content tags-container mt-4">
																			<input class="form-control tags-input" type="text" placeholder="Type your tags and press enter">
																			<div class="tags-list">
																				<!-- keywords go here -->									
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
								</div>
								<div class="step-footer step-tab-pager mt-4">
									<button data-direction="prev" class="btn btn-default btn-hover steps_btn">Previous</button>
									<button data-direction="next" class="btn btn-default btn-hover steps_btn">Next</button>
									<button data-direction="finish" class="btn btn-default btn-hover steps_btn">Create</button>
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
	<script src="vendor/ckeditor5/ckeditor.js"></script>
	<script src="js/jquery-steps.min.js"></script>
	<script src="js/datepicker.min.js"></script>
	<script src="js/i18n/datepicker.en.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/night-mode.js"></script>	
	<script>
		$('#add-event-tab').steps({
		  onFinish: function () {
			alert('Wizard Completed');
		  }
		});		
	</script>
	<script>
		ClassicEditor
		.create( document.querySelector( '#pd_editor' ), {
			// toolbar: [ 'heading', '|', 'bold', 'italic', 'link' ]
		} )
		.then( editor => {
			window.editor = editor;
		} )
		.catch( err => {
			console.error( err.stack );
		} );
	</script>

</c:if>
	
<c:if test="${empty cookie.email.value}">
    <c:redirect url="sign_up.jsp" />
</c:if>

</body></html>