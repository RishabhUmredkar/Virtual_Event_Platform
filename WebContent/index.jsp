<%@page import="Dao.Venue_Event_Dao"%>
<%@page import="Model.VenueEvent"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.List" %>
<%@ page import="Model.OnlineEvent" %>
<%@ page import="Dao.Online_Event_Dao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<body>
<html lang="en" class="h-100">
<head></head>
<body class="d-flex flex-column h-100">

	
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
							<img src="images/RishabhLight Final.png"  alt="">
							<img class="logo-inverse" src="images/RishabhDark Final.png" alt="">
						</div>
						<div class="main-logo" id="logo">
							<img src="images/RishabhLight Final.png" alt="">
							<img class="logo-inverse" src="images/RishabhDark Final.png" alt="">
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
									<a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
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
									<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Help
									</a>
									<ul class="dropdown-menu dropdown-submenu">
										<li><a class="dropdown-item" href="contact_us.jsp">Contact Us</a></li>
									</ul>
								</li>
								
								
								
							<!-- 	<li class="nav-item dropdown">
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
								</li> -->
								
								
								
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
		<div class="hero-banner">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-xl-7 col-lg-9 col-md-10">
						<div class="hero-banner-content">
							<h2>The Easiest and Most Powerful Online Event Booking and Ticketing System</h2>
							<p>Rishabh is an all-in-one event ticketing platform for event organisers, promoters, and managers. Easily create, promote and manage your events of any type and size.</p>
							<a href="explore_events.jsp" class="main-btn btn-hover">Explore Event <i class="fa-solid fa-arrow-right ms-3"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="explore-events p-80">
			<div class="container">
				<div class="row">
					<div class="col-xl-12 col-lg-12 col-md-12">
						<div class="main-title">
							<h3>Explore Events</h3>
						</div>
					</div>
					<div class="col-xl-12 col-lg-12 col-md-12">
						<div class="event-filter-items">
							<div class="featured-controls">
								
								<div class="controls">
									<button type="button" class="control" data-filter="all">Online Event</button>
									
								</div>
								
								<div class="row" data-ref="event-filter-content">
									<%
									    List<OnlineEvent> todayEvents = new Online_Event_Dao().getAllEventData();
									    int count = 0;
									%>
									<% for (OnlineEvent event : todayEvents) { %>
									    <% if (count < 4) { %>
											<div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 mix arts concert workshops volunteer sports health_Wellness" data-ref="mixitup-target">
												<div class="main-card mt-4">
										
											<div class="event-thumbnail">
												<a href="online_event_detail_view.jsp?id=<%=event.getId() %>" class="thumbnail-img">
                            				<img src="Online_Event_Image/<%= event.getEvent_image() %>" alt="fdgdf">
												</a>
												<span class="" title="Bookmark"></span>
											</div>
											
											<div class="event-content">
												<a href="online_event_detail_view.jsp?id=<%=event.getId() %>" class="event-title"><%= event.getEvent_name() %></a>
												<div class="duration-price-remaining">
													<span class="duration-price">Rs. <%= event.getEvent_price() %></span>
													<span class="remaining"><i class="fa-solid fa-ticket fa-rotate-90"></i><%=event.getEvent_total_tickets() %> Remaining</span>
												</div>
											</div>
											<div class="event-footer">
												<div class="event-timing">
													<div class="publish-date">
														<span><i class="fa-solid fa-calendar-day me-2"></i><%= event.getEvent_date() %></span>
														<span class="dot"><i class="fa-solid fa-circle"></i></span>
														<span><%= event.getEvent_time()%></span>
													</div>
													<span class="publish-time"><i class="fa-solid fa-clock me-2"></i><%= event.getEvent_duration()%> min.</span>
												</div>
											</div>
										</div>
										</div>
									<% count++; %>
								    <% } else {
								           // Break the loop after displaying four events
								           break;
								    } %>
								<% } %>
								
								</div>
								
								
									<br>
								<div class="controls">
									<button type="button" class="control" data-filter="all">Venue Event</button>
								</div>
								
								
								<div class="row" data-ref="event-filter-content">
									
										
										<%
										    List<VenueEvent> todayEvents1 = new Venue_Event_Dao().getAllEventData();
										    int count1 = 0;
										%>
										<% for (VenueEvent event : todayEvents1) { %>
										    <% if (count < 8) { %>
										<div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 mix arts concert workshops volunteer sports health_Wellness" data-ref="mixitup-target">
									
											<div class="main-card mt-4">
										
											<div class="event-thumbnail">
													<a href="venue_event_detail_view.jsp?id=<%=event.getId() %>" class="thumbnail-img">
													<img src="Venue_Event_Image/<%= event.getEvent_image() %>" alt="fdgdf">
												
												</a>
												<span class="" title="Bookmark"></span>
											</div>
											
											<div class="event-content">
												<a href="venue_event_detail_view.jsp?id=<%=event.getId() %>" class="event-title"><%= event.getEvent_name() %></a>online<Br>
												<div class="duration-price-remaining">
													<span class="duration-price">Rs. <%= event.getEvent_price() %></span>
													<span class="remaining"><i class="fa-solid fa-ticket fa-rotate-90"></i><%=event.getEvent_total_tickets() %> Remaining</span>
												</div>
											</div>
											<div class="event-footer">
												<div class="event-timing">
													<div class="publish-date">
														<span><i class="fa-solid fa-calendar-day me-2"></i><%= event.getEvent_date() %></span>
														<span class="dot"><i class="fa-solid fa-circle"></i></span>
														<span><%= event.getEvent_time()%></span>
													</div>
													<span class="publish-time"><i class="fa-solid fa-clock me-2"></i><%= event.getEvent_duration()%> min.</span>
												</div>
											</div>
										</div>
									</div>			
								<% count++; %>
								    <% } else {
								           // Break the loop after displaying four events
								           break;
								    } %>
								<% } %>
			
								</div>
								<div class="browse-btn">
									<a href="explore_events.jsp" class="main-btn btn-hover ">Browse All</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<div class="host-engaging-event-block p-80">
			<div class="container">
				<div class="row">
					<div class="col-lg-10">
						<div class="main-title">
							<h3>Host Engaging Online and Venue Events with Rishabh</h3>
							<p>Organise venue events and host online events with unlimited possibilities using our built-in virtual event platform. Build a unique event experience for you and your attendees.</p>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="engaging-block">
							<div class="owl-carousel engaging-slider owl-theme">
								<div class="item">
									<div class="main-card">
										<div class="host-item">
											<div class="host-img">
												<img src="images/icons/venue-events.png" alt="">
											</div>
											<h4>Venue Events</h4>
											<p>Create outstanding event page for your venue events, attract attendees and sell more tickets.</p>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card">
										<div class="host-item">
											<div class="host-img">
												<img src="images/icons/webinar.png" alt="">
											</div>
											<h4>Webinar</h4>
											<p>Webinars tend to be one-way events. Rishabh helps to make them more engaging.</p>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card">
										<div class="host-item">
											<div class="host-img">
												<img src="images/icons/training-workshop.png" alt="">
											</div>
											<h4>Training &amp; Workshop </h4>
											<p>Create and host profitable workshops and training sessions online, sell tickets and earn money.</p>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card">
										<div class="host-item">
											<div class="host-img">
												<img src="images/icons/online-class.png" alt="">
											</div>
											<h4>Online Class</h4>
											<p>Try our e-learning template to create a fantastic e-learning event page and drive engagement. </p>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card">
										<div class="host-item">
											<div class="host-img">
												<img src="images/icons/talk-show.png" alt="">
											</div>
											<h4>Talk Show</h4>
											<p>Use our intuitive built-in event template to create and host an engaging Talk Show.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="feature-block p-80">
			<div class="container">
				<div class="row">
					<div class="col-lg-10">
						<div class="main-title">
							<h3>No Feature Overload, Get Exactly What You Need</h3>
							<p>As well as being the most affordable online-based event registration tool and one of the best online event ticketing systems in Australia, Rishabh is super easy-to-use and built with a simplistic layout which is totally convenient for the organisers to operate.</p>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="feature-group-list">
							<div class="row">
								<div class="col-xl-3 col-lg-4 col-md-6">
									<div class="feature-item mt-46">
										<div class="feature-icon">
											<img src="images/icons/feature-icon-1.png" alt="">
										</div>
										<h4>Online Events</h4>
										<p>Built-in video conferencing platform to save you time and cost.</p>
									</div>
								</div>
								<div class="col-xl-3 col-lg-4 col-md-6">
									<div class="feature-item mt-46">
										<div class="feature-icon">
											<img src="images/icons/feature-icon-2.png" alt="">
										</div>
										<h4>Venue Event</h4>
										<p>Easy-to-use features to create and manage your venue events.</p>
									</div>
								</div>
								<div class="col-xl-3 col-lg-4 col-md-6">
									<div class="feature-item mt-46">
										<div class="feature-icon">
											<img src="images/icons/feature-icon-3.png" alt="">
										</div>
										<h4>Engaging Event Page</h4>
										<p>Create engaging event pages with your logo and our hero image collage gallery.</p>
									</div>
								</div>
								<div class="col-xl-3 col-lg-4 col-md-6">
									<div class="feature-item mt-46">
										<div class="feature-icon">
											<img src="images/icons/feature-icon-4.png" alt="">
										</div>
										<h4>Marketing Automation</h4>
										<p>Use our marketing automation tools to promote your events on social media and email.</p>
									</div>
								</div>
								<div class="col-xl-3 col-lg-4 col-md-6">
									<div class="feature-item mt-46">
										<div class="feature-icon">
											<img src="images/icons/feature-icon-5.png" alt="">
										</div>
										<h4>Sell Tickets</h4>
										<p>Start monetising your online and venue events, sell unlimited* tickets.</p>
									</div>
								</div>
								<div class="col-xl-3 col-lg-4 col-md-6">
									<div class="feature-item mt-46">
										<div class="feature-icon">
											<img src="images/icons/feature-icon-6.png" alt="">
										</div>
										<h4>Networking</h4>
										<p>Engage your attendees with the speakers using our interactive tools and build your own network.</p>
									</div>
								</div>
								<div class="col-xl-3 col-lg-4 col-md-6">
									<div class="feature-item mt-46">
										<div class="feature-icon">
											<img src="images/icons/feature-icon-7.png" alt="">
										</div>
										<h4>Recording</h4>
										<p>Securely record your online events and save on the cloud of your choice*.</p>
									</div>
								</div>
								<div class="col-xl-3 col-lg-4 col-md-6">
									<div class="feature-item mt-46">
										<div class="feature-icon">
											<img src="images/icons/feature-icon-8.png" alt="">
										</div>
										<h4>Live Streaming</h4>
										<p>Livestream your online events on Facebook, YouTube and other social networks.</p>
									</div>
								</div>
								<div class="col-xl-3 col-lg-4 col-md-6">
									<div class="feature-item mt-46">
										<div class="feature-icon">
											<img src="images/icons/feature-icon-9.png" alt="">
										</div>
										<h4>Engagement Metrics</h4>
										<p>Track your event engagement metrics like visitors, ticket sales, etc. from your dashboard.</p>
									</div>
								</div>
								<div class="col-xl-3 col-lg-4 col-md-6">
									<div class="feature-item mt-46">
										<div class="feature-icon">
											<img src="images/icons/feature-icon-10.png" alt="">
										</div>
										<h4>Security &amp; Support</h4>
										<p>Secure data and payment processing backed by a team eager to see you succeed.</p>
									</div>
								</div>
								<div class="col-xl-3 col-lg-4 col-md-6">
									<div class="feature-item mt-46">
										<div class="feature-icon">
											<img src="images/icons/feature-icon-11.png" alt="">
										</div>
										<h4>Reports &amp; Analytics</h4>
										<p>Get useful reports and insights to boost your sales and marketing activities.</p>
									</div>
								</div>
								<div class="col-xl-3 col-lg-4 col-md-6">
									<div class="feature-item mt-46">
										<div class="feature-icon">
											<img src="images/icons/feature-icon-12.png" alt="">
										</div>
										<h4>Mobile &amp; Desktop App</h4>
										<p>Stay on top of things, manage and monitor your events using the organiser app.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		 <div class="host-step-block p-80">
			<div class="container">
				<div class="row">
					<div class="col-lg-10">
						<div class="main-title">
							<h3>Transforming Thousands of Event Hosts Just Like You</h3>
							<p>Be part of a winning team. We are continuously thriving to bring the best to our customers. Be that a new product feature, help in setting up your events or even supporting your customers so that they can easily buy tickets and participate your in events. Here is what some of the clients have to say,</p>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="testimonial-slider-area">
							<div class="owl-carousel testimonial-slider owl-theme">
								<div class="item">
									<div class="main-card">
										<div class="testimonial-content">
											<div class="testimonial-text">
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus maximus arcu et ligula maximus vehicula. Phasellus at luctus lacus, quis eleifend nibh. Nam vitae convallis nisi, vitae tempus risus.</p>
											</div>
											<div class="testimonial-user-dt">
												<h5>Madeline S.</h5>
												<span>Events Co-ordinator</span>
												<ul>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
												</ul>
											</div>
											<span class="quote-icon"><i class="fa-solid fa-quote-right"></i></span>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card">
										<div class="testimonial-content">
											<div class="testimonial-text">
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus maximus arcu et ligula maximus vehicula. Phasellus at luctus lacus, quis eleifend nibh. Nam vitae convallis nisi, vitae tempus risus.</p>
											</div>
											<div class="testimonial-user-dt">
												<h5>Gabrielle B.</h5>
												<span>Administration</span>
												<ul>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
												</ul>
											</div>
											<span class="quote-icon"><i class="fa-solid fa-quote-right"></i></span>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card">
										<div class="testimonial-content">
											<div class="testimonial-text">
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus maximus arcu et ligula maximus vehicula. Phasellus at luctus lacus, quis eleifend nibh. Nam vitae convallis nisi, vitae tempus risus.</p>
											</div>
											<div class="testimonial-user-dt">
												<h5>Piyush G.</h5>
												<span>Application Developer</span>
												<ul>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
												</ul>
											</div>
											<span class="quote-icon"><i class="fa-solid fa-quote-right"></i></span>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card">
										<div class="testimonial-content">
											<div class="testimonial-text">
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus maximus arcu et ligula maximus vehicula. Phasellus at luctus lacus, quis eleifend nibh. Nam vitae convallis nisi, vitae tempus risus.</p>
											</div>
											<div class="testimonial-user-dt">
												<h5>Joanna P.</h5>
												<span>Event manager</span>
												<ul>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
												</ul>
											</div>
											<span class="quote-icon"><i class="fa-solid fa-quote-right"></i></span>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card">
										<div class="testimonial-content">
											<div class="testimonial-text">
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus maximus arcu et ligula maximus vehicula. Phasellus at luctus lacus, quis eleifend nibh. Nam vitae convallis nisi, vitae tempus risus.</p>
											</div>
											<div class="testimonial-user-dt">
												<h5>Romo S.</h5>
												<span>Admin</span>
												<ul>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
												</ul>
											</div>
											<span class="quote-icon"><i class="fa-solid fa-quote-right"></i></span>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card">
										<div class="testimonial-content">
											<div class="testimonial-text">
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus maximus arcu et ligula maximus vehicula. Phasellus at luctus lacus, quis eleifend nibh. Nam vitae convallis nisi, vitae tempus risus.</p>
											</div>
											<div class="testimonial-user-dt">
												<h5>Christopher F.</h5>
												<span>Online Marketing Executive</span>
												<ul>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
													<li><i class="fa-solid fa-star"></i></li>
												</ul>
											</div>
											<span class="quote-icon"><i class="fa-solid fa-quote-right"></i></span>
										</div>
									</div>
								</div>								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="our-organisations-block p-80">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="main-title text-center">
							<h3>321+ events created by thousands of organisations around the globe</h3>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="organisations-area">
							<div class="owl-carousel organisations-slider owl-theme">
								<div class="item">
									<div class="sponsor">
										<a href="#"><img src="images/icons/sponsor-1.png" alt=""></a>
									</div>
								</div>
								<div class="item">
									<div class="sponsor">
										<a href="#"><img src="images/icons/sponsor-2.png" alt=""></a>
									</div>
								</div>
								<div class="item">
									<div class="sponsor">
										<a href="#"><img src="images/icons/sponsor-3.png" alt=""></a>
									</div>
								</div>
								<div class="item">
									<div class="sponsor">
										<a href="#"><img src="images/icons/sponsor-4.png" alt=""></a>
									</div>
								</div>
								<div class="item">
									<div class="sponsor">
										<a href="#"><img src="images/icons/sponsor-5.png" alt=""></a>
									</div>
								</div>
								<div class="item">
									<div class="sponsor">
										<a href="#"><img src="images/icons/sponsor-6.png" alt=""></a>
									</div>
								</div>
								<div class="item">
									<div class="sponsor">
										<a href="#"><img src="images/icons/sponsor-7.png" alt=""></a>
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
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="vendor/OwlCarousel/owl.carousel.js"></script>
	<script src="vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>	
	<script src="vendor/mixitup/dist/mixitup.min.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/night-mode.js"></script>
	<script>	
		var containerEl = document.querySelector('[data-ref~="event-filter-content"]');

            var mixer = mixitup(containerEl, {
                selectors: {
                    target: '[data-ref~="mixitup-target"]'
                }
            });
	</script>

</body></html>