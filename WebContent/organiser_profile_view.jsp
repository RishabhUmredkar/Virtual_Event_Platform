<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="Model.RegisterUser" %>
<%@ page import="Dao.Online_Event_Ticket_Dao" %>
<%@ page import="Dao.UserDao" %>
<html lang="en" class="h-100"><head></head><body class="d-flex flex-column h-100">

	
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, shrink-to-fit=9">
		<meta name="description" content="Gambolthemes">
		<meta name="author" content="Gambolthemes">		
		<title>Rishabh - Simple Online Event Ticketing System</title>
		
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
											<h5></h5>
											<p></p>
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
		<div class="profile-banner">
			<div class="hero-cover-block">
				<div class="hero-cover">
					<div class="hero-cover-img"></div>	
				</div>
				<div class="upload-cover">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<div class="cover-img-btn">
									<input type="file" id="cover-img">
									
									<label for="cover-img"><i class="fa-solid fa-panorama me-3"></i>Change Image</label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="user-dt-block">
				<div class="container">
					<div class="row">
						<div class="col-xl-4 col-lg-5 col-md-12">
							
	
<%
    String email = (String) session.getAttribute("email");
    out.print(email);
    if (email != null && !email.isEmpty()) {
        UserDao dao = new UserDao();
        List<RegisterUser> registerUsers; // Change variable name to start with a lowercase letter

        try {
            registerUsers = dao.searchUserByEmail(email);

            out.println("<h2>User Details</h2>");

            for (RegisterUser user : registerUsers) {
                out.println("<p>User ID: " + user.getId() + "</p>");
                out.println("<p>First Name: " + user.getFirst_name() + "</p>");
                out.println("<p>Last Name: " + user.getLast_name() + "</p>");
                out.println("<p>Email: " + user.getEmail() + "</p>");
                // Add other properties as needed
                out.println("<hr/>");
                %>

	
							<div class="main-card user-left-dt">
								<div class="user-avatar-img">
									<img src="images/profile-imgs/img-13.jpg" alt="">
									<div class="avatar-img-btn">
										<input type="file" id="avatar-img">
										<label for="avatar-img"><i class="fa-solid fa-camera"></i></label>
									</div>
								</div>
								<div class="user-dts">
									<h4 class="user-name"><%=user.getFirst_name()  %><span class="verify-badge"><i class="fa-solid fa-circle-check"></i></span></h4>
									<span class="user-email"> <%=user.getEmail()%></span>
								</div>
								<div class="ff-block">
									<a href="#" class="" role="button" data-bs-toggle="modal" data-bs-target="#FFModal"><span>0</span>Followers</a>
									<a href="#" class="" role="button" data-bs-toggle="modal" data-bs-target="#FFModal"><span>2</span>Following</a>
								</div>
								<div class="user-description">
									<p>Hey I am a <%=user.getFirst_name()  %></p>
								</div>
								<div class="user-btns">
									<a href="my_organisation_dashboard.jsp" class="co-main-btn co-btn-width min-width d-inline-block h_40">My Organisation<i class="fa-solid fa-right-left ms-3"></i></a>
								</div>
								<div class="profile-social-link">
									<h6>Find me on</h6>
									<div class="social-links">
										<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="Facebook"><i class="fab fa-facebook-square"></i></a>
										<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="Instagram"><i class="fab fa-instagram"></i></a>
										<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="Twitter"><i class="fab fa-twitter"></i></a>
										<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
										<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="Youtube"><i class="fab fa-youtube"></i></a>
										<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="Website"><i class="fa-solid fa-globe"></i></a>
									</div>
								</div>
							</div>
						</div>
						<%
            }
        } catch (Exception e) {
            // Handle exceptions appropriately, e.g., log or display an error message
            e.printStackTrace();
        }
    } else {
        response.sendRedirect("sign_up.jsp");
    }
%>
						<div class="col-xl-8 col-lg-7 col-md-12">
							<div class="right-profile">
								<div class="profile-tabs">
									<ul class="nav nav-pills nav-fill p-2 garren-line-tab" id="myTab" role="tablist">
										<li class="nav-item">
											<a class="nav-link active" id="feed-tab" data-bs-toggle="tab" href="#feed" role="tab" aria-controls="feed" aria-selected="true"><i class="fa-solid fa-house"></i>Home</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" id="about-tab" data-bs-toggle="tab" href="#about" role="tab" aria-controls="about" aria-selected="false"><i class="fa-solid fa-circle-info"></i>About</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" id="setting-tab" data-bs-toggle="tab" href="#setting" role="tab" aria-controls="setting" aria-selected="false"><i class="fa-solid fa-gear"></i>Setting</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" id="orders-tab" data-bs-toggle="tab" href="#orders" role="tab" aria-controls="orders" aria-selected="false"><i class="fa-solid fa-box"></i>My Orders</a>
										</li>
									</ul>
									<div class="tab-content" id="myTabContent">
										<div class="tab-pane fade active show" id="feed" role="tabpanel" aria-labelledby="feed-tab">
											<div class="nav my-event-tabs mt-4" role="tablist">
												<button class="event-link active" data-bs-toggle="tab" data-bs-target="#saved" type="button" role="tab" aria-controls="saved" aria-selected="true"><span class="event-count">1</span><span>Saved Events</span></button>
												<button class="event-link" data-bs-toggle="tab" data-bs-target="#organised" type="button" role="tab" aria-controls="organised" aria-selected="false"><span class="event-count">2</span><span>Organised Events</span></button>
												<button class="event-link" data-bs-toggle="tab" data-bs-target="#attending" type="button" role="tab" aria-controls="attending" aria-selected="false"><span class="event-count">1</span><span>Attending Events</span></button>
											</div>
											<div class="tab-content">
												<div class="tab-pane fade show active" id="saved" role="tabpanel">
													<div class="row">	
														<div class="col-md-12">														
															<div class="main-card mt-4">
																<div class="card-top p-4">
																	<div class="card-event-img">
																		<img src="images/event-imgs/img-6.jpg" alt="">
																	</div>
																	<div class="card-event-dt">
																		<h5>Step Up Open Mic Show</h5>
																		<div class="evnt-time">Thu, Jun 30, 2022 4:30 AM</div>
																		<div class="event-btn-group">
																			<button class="esv-btn saved-btn me-2"><i class="fa-regular fa-bookmark me-2"></i>Save</button>
																			<button class="esv-btn me-2" onclick="window.location.href='online_event_detail_view.jsp'"><i class="fa-solid fa-arrow-up-from-bracket me-2"></i>View</button>
																		</div>
																	</div>
																</div>																
															</div>
														</div>
													</div>
												</div>
												<div class="tab-pane fade" id="organised" role="tabpanel">
													<div class="row">	
														<div class="col-md-12">														
															<div class="main-card mt-4">
																<div class="card-top p-4">
																	<div class="card-event-img">
																		<img src="images/event-imgs/img-6.jpg" alt="">
																	</div>
																	<div class="card-event-dt">
																		<h5>Step Up Open Mic Show</h5>
																		<div class="evnt-time">Thu, Jun 30, 2022 4:30 AM</div>
																		<div class="event-btn-group">
																			<button class="esv-btn me-2" onclick="window.location.href='create_online_event.jsp'"><i class="fa-solid fa-gear me-2"></i>Manage Event</button>
																		</div>
																	</div>
																</div>																
															</div>
															<div class="main-card mt-4">
																<div class="card-top p-4">
																	<div class="card-event-img">
																		<img src="images/event-imgs/img-7.jpg" alt="">
																	</div>
																	<div class="card-event-dt">
																		<h5>Tutorial on Canvas Painting for Beginners</h5>
																		<div class="evnt-time">Sun, Jul 17, 2022 5:30 AM</div>
																		<div class="event-btn-group">
																			<button class="esv-btn me-2" onclick="window.location.href='create_online_event.jsp'"><i class="fa-solid fa-gear me-2"></i>Manage Event</button>
																		</div>
																	</div>
																</div>																
															</div>
														</div>												
													</div>
												</div>
												<div class="tab-pane fade" id="attending" role="tabpanel">
													<div class="row">	
														<div class="col-md-12">														
															<div class="main-card mt-4">
																<div class="card-top p-4">
																	<div class="card-event-img">
																		<img src="images/event-imgs/img-6.jpg" alt="">
																	</div>
																	<div class="card-event-dt">
																		<h5>Step Up Open Mic Show</h5>
																		<div class="evnt-time">Thu, Jun 30, 2022 4:30 AM</div>
																		<div class="event-btn-group">
																			<button class="esv-btn me-2" onclick="window.location.href='invoice.jsp'"><i class="fa-solid fa-arrow-up-from-bracket me-2"></i>View Ticket</button>
																		</div>
																	</div>
																</div>																
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane fade" id="about" role="tabpanel" aria-labelledby="about-tab">
											<div class="main-card mt-4">
												<div class="bp-title position-relative">
													<h4>About</h4>
													<button class="main-btn btn-hover ms-auto edit-btn me-3 pe-4 ps-4 h_40" data-bs-toggle="modal" data-bs-target="#aboutModal">
														<i class="fa-regular fa-pen-to-square me-2"></i>Edit
													</button>
												</div>
												<div class="about-details">
													<div class="about-step">
														<h5>Name</h5>
														<span>Joginder Singh</span>
													</div>
													<div class="about-step">
														<h5>Tell us about yourself and let people know who you are</h5>
														<p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt interdum nunc et auctor. Phasellus quis pharetra sapien. Integer ligula sem, sodales vitae varius in, varius eget augue.</p>
													</div>
													<div class="about-step">
														<h5>Find me on</h5>
														<div class="social-links">
															<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="Facebook"><i class="fab fa-facebook-square"></i></a>
															<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="Instagram"><i class="fab fa-instagram"></i></a>
															<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="Twitter"><i class="fab fa-twitter"></i></a>
															<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
															<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="Youtube"><i class="fab fa-youtube"></i></a>
															<a href="#" class="social-link" data-bs-toggle="tooltip" data-bs-placement="top" title="Website"><i class="fa-solid fa-globe"></i></a>
														</div>
													</div>
													<div class="about-step">
														<h5>Address</h5>
														<p class="mb-0">00 Challis St, Newport, Victoria, 0000, Australia</p>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane fade" id="setting" role="tabpanel" aria-labelledby="setting-tab">
											<div class="row">
												<div class="col-lg-12">
													<div class="main-card mt-4 p-0">
														<div class="nav custom-tabs" role="tablist">
															<button class="tab-link active" data-bs-toggle="tab" data-bs-target="#tab-01" type="button" role="tab" aria-controls="tab-01" aria-selected="true"><i class="fa-solid fa-envelope me-3"></i>Email Preferences</button>
															<button class="tab-link" data-bs-toggle="tab" data-bs-target="#tab-02" type="button" role="tab" aria-controls="tab-02" aria-selected="false"><i class="fa-solid fa-key me-3"></i>Password Settings</button>
															<button class="tab-link" data-bs-toggle="tab" data-bs-target="#tab-03" type="button" role="tab" aria-controls="tab-03" aria-selected="false"><i class="fa-solid fa-gear me-3"></i>Privacy Settings</button>
														</div>
													</div>
												</div>
												<div class="col-lg-12">
													<div class="main-card mt-4">
														<div class="tab-content">
															<div class="tab-pane fade show active" id="tab-01" role="tabpanel">
																<div class="bp-title">
																	<h4>Email Preferences</h4>
																</div>
																<div class="profile-setting p-4">
																	<div class="setting-step">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Receive order confirmation</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox" checked="">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-4">On purchasing an event you will receive an order confirmation email.</p>
																	</div>
																	<div class="setting-step pt-4">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Receive communication from event organisers for my purchased events</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox" checked="">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-4">The organisations whose events you have bought will be able send you further follow up emails.</p>
																	</div>
																	<div class="setting-step pt-4">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Receive event invitations from event organisers sent to my email address</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox" checked="">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-4">Organisations will be able to send you Invitations in their events.</p>
																	</div>
																	<div class="setting-step pt-4">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Receive reminder from Rishabh for my purchased events</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox" checked="">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-4">After purchasing event you will receive reminder emails before the event starts so that you can get prepared.</p>
																	</div>
																	<div class="setting-step pt-4">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Receive critical notifications on Rishabh service status and product updates</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox" checked="">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-4">Get updates on new features and insights so that you can make the best use of Rishabh.</p>
																	</div>
																	<div class="setting-step pt-4">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Receive newsletters from Rishabh with general and other information</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox" checked="">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-4">Get more insights on Rishabh that can help to boost your event business.</p>
																	</div>
																	<div class="setting-step pt-4">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Receive notification when someone follows me</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox" checked="">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-4">We will notify you when someone starts following you or your organisation.</p>
																	</div>
																	<div class="setting-step pt-4">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Review review notification when someone shares my events</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox" checked="">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-0">We will notify you when someone shares event created by your organisation.</p>
																	</div>
																	<div class="setting-step pt-4">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Receive notification on review related activities</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox" checked="">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-0">We will notify you when someone leaves review for your organisation.</p>
																	</div>
																</div>
															</div>
															<div class="tab-pane fade" id="tab-02" role="tabpanel">
																<div class="bp-title">
																	<h4>Password Settings</h4>
																</div>
																<div class="password-setting p-4">
																	<div class="password-des">
																		<h4>Change password</h4>
																		<p>You can update your password from here. If you can't remember your current password, just log out and click on Forgot password.</p>
																	</div>
																	<div class="change-password-form">
																		<div class="form-group mt-4">
																			<label class="form-label">Current password*</label>
																			<div class="loc-group position-relative">
																				<input class="form-control h_50" type="password" placeholder="Enter your password">
																				<span class="pass-show-eye"><i class="fas fa-eye-slash"></i></span>
																			</div>
																		</div>
																		<div class="form-group mt-4">
																			<label class="form-label">New password*</label>
																			<div class="loc-group position-relative">
																				<input class="form-control h_50" type="password" placeholder="Enter your password">
																				<span class="pass-show-eye"><i class="fas fa-eye-slash"></i></span>
																			</div>
																		</div>
																		<div class="form-group mt-4">
																			<label class="form-label">Confirm new password*</label>
																			<div class="loc-group position-relative">
																				<input class="form-control h_50" type="password" placeholder="Enter your password">
																				<span class="pass-show-eye"><i class="fas fa-eye-slash"></i></span>
																			</div>
																		</div>
																		<button class="main-btn btn-hover w-100 mt-5" type="submit">Update Password</button>
																	</div>
																</div>
															</div>
															<div class="tab-pane fade" id="tab-03" role="tabpanel">
																<div class="bp-title">
																	<h4>Privacy Settings</h4>
																</div>
																<div class="privacy-setting p-4">
																	<div class="setting-step">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Lock my user profile</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-4">Locking profile hides all kinds of user information, activities and interaction from public profile</p>
																	</div>
																	<div class="setting-step pt-4">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Allow people to contact me</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-4">People will be able to send you emails through Rishabh who visits your profile</p>
																	</div>
																	<div class="setting-step pt-4">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Allow people to find and invite me to relevant events</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox" checked="">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-4">Based on your preferences event organisers will be able to send you invitations in their events</p>
																	</div>
																	<div class="setting-step pt-4">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Allow people to follow me</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-4">People will be able to follow you</p>
																	</div>
																	<div class="setting-step pt-4">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Allow people to see my followings</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-4">People will be able to see whom and which organisations you are following</p>
																	</div>
																	<div class="setting-step pt-4">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Allow people to see my join date</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-4">People will be able to see when you have started using Rishabh</p>
																	</div>
																	<div class="setting-step pt-4">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Allow people to see the events I attend</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-4">People will be able to see the events you have purchased</p>
																	</div>
																	<div class="setting-step pt-4">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Allow people to see the events I join as speaker</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-0">People will be able to see the events you have joined as Speaker</p>
																	</div>
																	<div class="setting-step pt-4">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Allow people to see the events I share</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox" checked="">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-0">People will be able to see the events you have shared in Rishabh</p>
																	</div>
																	<div class="setting-step pt-4">
																		<div class="d-flex align-items-center justify-content-between">
																			<h3 class="setting-title">Hide review interactions from public</h3>
																			<label class="btn-switch m-0 ml-2">
																				<input type="checkbox">
																				<span class="checkbox-slider"></span>
																			</label>
																		</div>
																		<p class="mt-1 mb-0">The reviews and ratings given by you will not appear in your public profile</p>
																	</div>																	
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane fade" id="orders" role="tabpanel" aria-labelledby="orders-tab">
											<div class="main-card mt-4">
												<div class="card-top p-4">
													<div class="card-event-img">
														<img src="images/event-imgs/img-7.jpg" alt="">
													</div>
													<div class="card-event-dt">
														<h5>Tutorial on Canvas Painting for Beginners</h5>
														<div class="invoice-id">Invoice ID : <span>BRCCRW-11111111</span></div>
													</div>
												</div>
												<div class="card-bottom">
													<div class="card-bottom-item">
														<div class="card-icon">
															<i class="fa-solid fa-calendar-days"></i>
														</div>
														<div class="card-dt-text">
															<h6>Event Starts on</h6>
															<span>01 June 2022</span>
														</div>
													</div>
													<div class="card-bottom-item">
														<div class="card-icon">
															<i class="fa-solid fa-ticket"></i>
														</div>
														<div class="card-dt-text">
															<h6>Total Tickets</h6>
															<span>1</span>
														</div>
													</div>
													<div class="card-bottom-item">
														<div class="card-icon">
															<i class="fa-solid fa-money-bill"></i>
														</div>
														<div class="card-dt-text">
															<h6>Paid Amount</h6>
															<span>AUD $50.00</span>
														</div>
													</div>
													<div class="card-bottom-item">
														<div class="card-icon">
															<i class="fa-solid fa-money-bill"></i>
														</div>
														<div class="card-dt-text">
															<h6>Invoice</h6>
															<a href="invoice.jsp">Download</a>
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
							<p class="mb-0">Â© 2022, <strong>Rishabh</strong>. All rights reserved. Powered by Gambolthemes</p>
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
	<script src="js/night-mode.js"></script>

</body></html>