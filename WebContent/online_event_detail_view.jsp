<%@ page import="javax.servlet.http.Cookie" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="Dao.Venue_Event_Dao"%>
<%@page import="Model.VenueEvent"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="Model.OnlineEvent" %>
<%@ page import="Model.Online_Event_Ticket" %>
<%@ page import="Dao.Online_Event_Dao" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.sql.Time" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%@ page errorPage="Error.jsp" %>

<html lang="en" class="h-100"><head></head><body class="d-flex flex-column h-100">

	
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
									<a class="nav-link " aria-current="page" href="index.jsp">Home</a>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link active dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
	<%
    int id = Integer.parseInt(request.getParameter("id"));
    Online_Event_Dao OD = new Online_Event_Dao();
    OnlineEvent event = OD.getOneEvent(id);
    System.out.println(event);

     String email = (String) session.getAttribute("email");
	System.out.println("User login ho gya112121fds  "+email); 
	session.setAttribute("id", id);


    String eventName = event.getEvent_name();
    String category = event.getEvent_category();
    
    // Convert Date to String
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    String dateStr = dateFormat.format(event.getEvent_date());

    // Convert Time to String
    SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
    String timeStr = timeFormat.format(event.getEvent_time());

    int duration = event.getEvent_duration();
    String image = event.getEvent_image(); 
    int price =  event.getEvent_price(); 
    String description =  event.getEvent_description();
    String hosting = event.getEvent_hosting();
    int totalTickets = event.getEvent_total_tickets();
%>

<%
    // Assuming the correct class name is Online_Event_Ticket
    Online_Event_Ticket oet = new Online_Event_Ticket(
            email, eventName, category, Date.valueOf(dateStr), Time.valueOf(timeStr), duration, image, description, hosting, price, totalTickets);
%>
<%System.out.print(oet);
 %>
  
    // Assuming your insertOnlineEvent method returns a boolean indicating success
   



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
									<li class="breadcrumb-item active" aria-current="page">Online Event Detail View</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="event-dt-block p-80">
		<form action="checkout.jsp" method="post">
		
				
			<div class="container">
				<div class="row">
					<div class="col-xl-12 col-lg-12 col-md-12">
						<div class="event-top-dts">
							<div class="event-top-date">
								<span class="event-month"><%=event.getEvent_date() %></span>
								<span class="event-date">ID : <%=event.getId() %></span>
							</div>
							<div class="event-top-dt">
								<h3 class="event-main-title"><%=event.getEvent_name() %></h3>
								<div class="event-top-info-status">
									<span class="event-type-name"><i class="fa-solid fa-video"></i>Online Event</span>
									<span class="event-type-name details-hr">Starts on <span class="ev-event-date"><%=event.getEvent_date() %> , <%=event.getEvent_time() %></span></span>
									<span class="event-type-name details-hr"><%=event.getEvent_duration() %> min.</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-8 col-lg-7 col-md-12">
						<div class="main-event-dt">
							<div class="event-img">
										<img src="Online_Event_Image/<%= event.getEvent_image() %>" alt="">	
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
								<p><%=event.getEvent_description() %></p>
							</div>							
						</div>
					</div>
					<div class="col-xl-4 col-lg-5 col-md-12">
						<div class="main-card event-right-dt">
							<div class="bp-title">
								<h4>Event Details</h4>
							</div>
								
							<div class="event-dt-right-group mt-5">
								<div class="event-dt-right-icon">
									<i class="fa-solid fa-circle-user"></i>
								</div>
								<div class="event-dt-right-content">
									<h4>Catogory</h4>
									<h5><%=event.getEvent_category()%></h5>
								</div>
								<div class="event-dt-right-content">
									<h4>Hosting</h4>
									<h5><%=event.getEvent_hosting()%></h5>
								</div>
							</div>
							<div class="event-dt-right-group">
								<div class="event-dt-right-icon">
									<i class="fa-solid fa-calendar-day"></i>
								</div>
								<div class="event-dt-right-content">
									<h4>Date and Time</h4>
									<h5><%=event.getEvent_date() %> , <%=event.getEvent_time() %></h5>
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
									<h5 class="mb-0">Online</h5>
								</div>
							</div>
							<div class="event-dt-right-group">
								<div class="event-dt-right-icon">
									<i class="fa-solid fa-money-check-dollar"></i>
								</div>
								<div class="event-dt-right-content">
									<h4>Rupees</h4>
									<h5 class="mb-0">Rs.<%=event.getEvent_price() %></h5>
								</div>
							</div>
							
							
							
							
							
							
							
							
							
								
							
						<!-- Add a form around your content -->
    <div class="select-tickets-block">
        <h6>Select Tickets</h6>
        <div class="select-ticket-action">
            <div class="ticket-price">Rs.<%=event.getEvent_price() %></div>
            <div class="quantity">
                <div class="counter">
                    <span class="down" onclick="decreaseCount(event, this)">-</span>
                    <!-- Add a hidden input field to store the quantity -->
                    <input type="hidden" name="quantity" id="quantity" value="0">
                    <input type="text" value="0" oninput="updateQuantity(this.value)">
                    <span class="up" onclick="increaseCount(event, this)">+</span>
                </div>
            </div>
        </div>
    </div>

    <!-- Add a submit button to submit the form -->
<div class="booking-btn">
	<button type="submit" class="main-btn btn-hover w-100">Book Now</a>
</div>

<!-- JavaScript to update the hidden input field -->
<script>
    function updateQuantity(value) {
        // Update the hidden input field with the current quantity
        document.getElementById("quantity").value = value;
    }

    function decreaseCount(event, element) {
        // Implement your decrease logic
        // ...
        // After updating the quantity, call updateQuantity function
        updateQuantity(updatedQuantity);
    }

    function increaseCount(event, element) {
        // Implement your increase logic
        // ...
        // After updating the quantity, call updateQuantity function
        updateQuantity(updatedQuantity);
    }
</script>

						</div>
					</div>
					<div class="col-xl-12 col-lg-12 col-md-12">
						<div class="more-events">
							<div class="main-title position-relative">
								<h3>More Events</h3>
								<a href="explore_events.jsp" class="view-all-link">Browse All<i class="fa-solid fa-right-long ms-2"></i></a>
							</div>
							<div class="owl-carousel moreEvents-slider owl-theme">
								
								
								
								<%
									    List<OnlineEvent> todayEvents = new Online_Event_Dao().getAllEventData();
									    int count = 0;
										System.out.print(email);
									for (OnlineEvent event1 : todayEvents) { %>
									
								<div class="item">
									<div class="main-card mt-4">
										<div class="event-thumbnail">
												<a href="online_event_detail_view.jsp?id=<%=event1.getId() %>" class="thumbnail-img">
                            				<img src="Online_Event_Image/<%= event1.getEvent_image() %>" alt="fdgdf">
											</a>
										</div>
										
										
										<div class="event-content">
												<a href="online_event_detail_view.jsp?id=<%=event1.getId() %>" class="event-title"><%= event1.getEvent_name() %></a>
												<div class="duration-price-remaining">
													<span class="duration-price">Rs. <%= event1.getEvent_price() %></span>
													<span class="remaining"></span>
												</div>
											</div>

									<div class="event-footer">
												<div class="event-timing">
													<div class="publish-date">
														<span><i class="fa-solid fa-calendar-day me-2"></i><%= event1.getEvent_date() %></span>
														<span class="dot"><i class="fa-solid fa-circle"></i></span>
														<span><%= event1.getEvent_time()%></span>
													</div>
													<span class="publish-time"><i class="fa-solid fa-clock me-2"></i><%= event1.getEvent_duration()%> min.</span>
												</div>
											</div>
									</div>
								</div>
								<%} %>
							</div>
						</div>
					</div>
				</div>
			</div>
			</form>
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
							<p class="mb-0">© 2022, <strong>Rishabh</strong>. All rights reserved. Powered by Gambolthemes</p>
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