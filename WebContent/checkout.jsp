<%@ page import="javax.servlet.http.Cookie" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="Dao.Venue_Event_Dao" %>
<%@ page import="Dao.Online_Event_Ticket_Dao" %>
<%@ page import="Model.VenueEvent" %>
<%@ page import="Model.OnlineEvent" %>
<%@ page import="Model.RegisterUser" %>
<%@ page import="Model.OnlineOrderDetails" %>
<%@ page import="Model.Online_Event_Ticket" %>
<%@ page import="Dao.Online_Event_Dao" %>
<%@ page import="Dao.UserDao" %>
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
	
	
	  <%
                                    HttpSession session1 = request.getSession();
                                    int quantity = Integer.parseInt(request.getParameter("quantity"));
                                    Integer id = (Integer) session1.getAttribute("id");
                                    String email = (String) session.getAttribute("email");
                                    RegisterUser user = new UserDao().getOneUserByEmail(email);
                                    OnlineEvent event = new Online_Event_Dao().getOneEvent(id);
                                    int total = quantity * event.getEvent_price();
                                    System.out.println("ye hai id"+id);
                                    System.out.println("ye hai mail id"+email);
                                %>
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
    <form action="hello" method="post">
	
	
<%-- 
    // Retrieve the quantity parameter from the request
 int quantity = Integer.parseInt(request.getParameter("quantity"));

    // Display the quantity
    out.println("Quantity: " + quantity);

    // Assuming session is of type HttpSession
    HttpSession session1 = request.getSession();

    // Retrieve the attribute "id" from the session
    Integer id = (Integer) session1.getAttribute("id");
    String email = (String) session.getAttribute("email");
  	System.out.println("User login ho gya1 Last......final...."+email);   
  	    System.out.println("Quantity: " + quantity);

  	
  	
  	out.print(email);

    // Check if the attribute is present before using it
    if (id != null) {
        // Use the id variable
        out.println("User ID: " + id);
        
        // Retrieve event details based on the user's ID
        Online_Event_Dao OD = new Online_Event_Dao();
        OnlineEvent event = OD.getOneEvent(id);
        System.out.println(event);
    } else {
        // Handle the case when the attribute is not present
        out.println("User ID not found in the session");
    }
%> --%>
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
									<li class="breadcrumb-item"><a href="online_event_detail_view.jsp?id=<%=event.getId() %>">Online Event Detail View</a></li>
									<li class="breadcrumb-item active" aria-current="page">Checkout</li>
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
					<div class="col-lg-12 col-md-12">
						<div class="main-title checkout-title">
							<h3>Order Confirmation</h3>
						</div>
					</div>
					
					
					
					
					
					<div class="col-xl-8 col-lg-12 col-md-12">
						<div class="checkout-block">
							<div class="main-card">
								<div class="bp-title">
									<h4>Billing information</h4>
								</div>
									
					<%-- Java code to retrieve user and event details --%>
                              
								<div class="bp-content bp-form">
									<div class="row">
										<div class="col-lg-6 col-md-12">
											<div class="form-group mt-4">
												<label class="form-label">First Name*</label>
												Rs.<%=event.getEvent_price() %>
                            <input class="form-control h_50" type="text" placeholder="" value="<%= user.getFirst_name() %>" disabled>
											</div>
										</div>
										<div class="col-lg-6 col-md-12">
											<div class="form-group mt-4">
												<label class="form-label">Last Name*</label>
                            <input class="form-control h_50" type="text" placeholder="" value="<%= user.getLast_name() %>" disabled>
											</div>
										</div>
										<div class="col-lg-6 col-md-12">
											<div class="form-group mt-4">
												<label class="form-label">Email*</label>
                            <input class="form-control h_50" type="text" placeholder="" value="<%= user.getEmail() %>" disabled>
											</div>
										</div>
										<div class="col-lg-6 col-md-12">
											<div class="form-group mt-4">
												<label class="form-label">Address*</label>
												<input class="form-control h_50" type="text" placeholder="" name = "address" value="">																								
											</div>
										</div>
										<div class="col-lg-6 col-md-12">
											<div class="form-group main-form mt-4">
												<label class="form-label">Country*</label>																	
													<select class="selectpicker" data-size="5" title="Nothing selected" data-live-search="true" name="country">
													<option value="Algeria">Algeria</option>
													<option value="Argentina">Argentina</option>
													<option value="Australia" selected="">Australia</option>
													<option value="Austria">Austria (Österreich)</option>
													<option value="Belgium">Belgium (België)</option>
													<option value="Bolivia">Bolivia</option>
													<option value="Brazil">Brazil</option>
													<option value="Canada">Canada</option>
													<option value="Chile">Chile</option>
													<option value="Colombia">Colombia</option>
													<option value="Costa Rica">Costa Rica</option>
													<option value="Cyprus">Cyprus</option>
													<option value="Czech Republic">Czech Republic</option>
													<option value="Denmark">Denmark</option>
													<option value="Dominican Republic">Dominican Republic</option>
													<option value="Estonia">Estonia</option>
													<option value="Finland">Finland</option>
													<option value="France">France</option>
													<option value="Germany">Germany</option>
													<option value="Greece">Greece</option>
													<option value="Hong Kong">Hong Kong</option>
													<option value="Iceland">Iceland</option>
													<option value="India">India</option>
													<option value="Indonesia">Indonesia</option>
													<option value="Ireland">Ireland</option>
													<option value="Israel">Israel</option>
													<option value="Italy">Italy</option>
													<option value="Japan">Japan</option>
													<option value="Latvia">Latvia</option>
													<option value="Lithuania">Lithuania</option>
													<option value="Luxembourg">Luxembourg</option>
													<option value="Malaysia">Malaysia</option>
													<option value="Mexico">Mexico</option>
													<option value="Nepal">Nepal</option>
													<option value="Netherlands">Netherlands</option>
													<option value="New Zealand">New Zealand</option>
													<option value="Norway">Norway</option>
													<option value="Paraguay">Paraguay</option>
													<option value="Peru">Peru</option>
													<option value="Philippines">Philippines</option>
													<option value="Poland">Poland</option>
													<option value="Portugal">Portugal</option>
													<option value="Singapore">Singapore</option>
													<option value="Slovakia">Slovakia</option>
													<option value="Slovenia">Slovenia</option>
													<option value="South Africa">South Africa</option>
													<option value="South Korea">South Korea</option>
													<option value="Spain">Spain</option>
													<option value="Sweden">Sweden</option>
													<option value="Switzerland">Switzerland</option>
													<option value="Tanzania">Tanzania</option>
													<option value="Thailand">Thailand</option>
													<option value="Turkey">Turkey</option>
													<option value="United Kingdom">United Kingdom</option>
													<option value="United States">United States</option>
													<option value="Vietnam">Vietnam</option>																						
												</select>
											</div>
										</div>
										<div class="col-lg-6 col-md-12">
											<div class="form-group mt-4">
												<label class="form-label">State*</label>
												<input class="form-control h_50" type="text" name = "state" placeholder="" value="">																								
											</div>
										</div>
										<div class="col-lg-6 col-md-12">
											<div class="form-group mt-4">
												<label class="form-label">City/Suburb*</label>
												<input class="form-control h_50" type="text" name = "city" placeholder="" value="">																								
											</div>
										</div>
										<div class="col-lg-6 col-md-12">
											<div class="form-group mt-4">
												<label class="form-label">Zip/Post Code*</label>
												<input class="form-control h_50" type="number" name = "pinCode" placeholder="" value="">																								
											</div>
										</div>
									</div>
								</div>
							
								
							</div>
							<div class="main-card mt-5">
								<div class="bp-title">
									<h4>Total Payable Amount Rs.<%=total%></h4>
								</div>
								<div class="bp-content bp-form">
									<div class="row">
										<div class="col-lg-12 col-md-12">
											<div class="form-group mt-4">
												<label class="form-label">Card number*</label>
												<input class="form-control h_50" type="number" name ="card_number" placeholder="" value="">																								
											</div>
										</div>
										<div class="col-lg-6 col-md-12">
											<div class="form-group mt-4">
												<label class="form-label">Expiry date*</label>
												<input class="form-control h_50" type="text" name = "Expiry_date"placeholder="MM/YY" value="">																								
											</div>
										</div>
										<div class="col-lg-6 col-md-12">
											<div class="form-group mt-4">
												<label class="form-label">CVV*</label>
												<input class="form-control h_50" type="text" name = "Cvv" placeholder="" value="">																								
											</div>
										</div>
										<div class="col-lg-12 col-md-12">
											<button class="main-btn btn-hover h_50 w-100 mt-5" type="submit" >Confirm &amp; Pay</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					
					
					
					
					
					
					
					
					<div class="col-xl-4 col-lg-12 col-md-12">
						<div class="main-card order-summary">
  					<div class="bp-title">
								<h4>Billing information</h4>
							</div>
							<div class="order-summary-content p_30">
								<div class="event-order-dt">
									<div class="event-thumbnail-img">
										<img src="Online_Event_Image/<%= event.getEvent_image() %>" alt="">
									</div>
									<div class="event-order-dt-content">
										<h5><%= event.getEvent_name() %></h5>
										<span> <%=event.getEvent_date() %>  ,<%=event.getEvent_time()%> || <%= event.getEvent_duration()%> min.</span>
										<div class="category-type">Online Event</div>
									</div>
								</div>
								<div class="order-total-block">
									<div class="order-total-dt">
										<div class="order-text">quantity</div>
										<div class="order-number"> <%=quantity %></div>
									</div>
									<div class="order-total-dt">
										<div class="order-text">Sub Total</div>
										<div class="order-number">Rs.<%=total%></div>
									</div>
									<div class="divider-line"></div>
									<div class="order-total-dt">
										<div class="order-text">Total</div>
										<div class="order-number ttl-clr">Rs.<%=total%></div>
									</div>
								</div>
								
								<div class="confirmation-btn">
									<button class="main-btn btn-hover h_50 w-100 mt-5" type="submit">Confirm &amp; Pay</button>
									<span>Price is inclusive of all applicable GST</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
	request.setAttribute("firstName", user.getFirst_name());
	request.setAttribute("lastName", user.getLast_name());
	request.setAttribute("email", user.getEmail());
	
	request.setAttribute("eventimage", event.getEvent_image());
	request.setAttribute("eventName", event.getEvent_name());
	request.setAttribute("eventCategory", event.getEvent_category());
	request.setAttribute("eventDate", event.getEvent_date());
	request.setAttribute("eventTime", event.getEvent_time());
	request.setAttribute("eventDuration", event.getEvent_duration());
	request.setAttribute("eventDescription", event.getEvent_description());
	request.setAttribute("eventHost", event.getEvent_hosting());
	request.setAttribute("price", event.getEvent_price());
	request.setAttribute("quantity", quantity);
	request.setAttribute("total", total);%>
	
	
	 <h3>User Details:</h3>
    <p>First Name: <%= request.getAttribute("firstName") %></p>
    <p>Last Name: <%= request.getAttribute("lastName") %></p>
    <p>eamil Name: <%= request.getAttribute("email") %></p>
    <!-- ... Other user details ... -->

    <h3>Event Details:</h3>
    <p>Event Name: <%= request.getAttribute("eventName") %></p>
    <p>Event eventimage: Rs.<%= request.getAttribute("eventimage") %></p>
    <p>Event eventCategory: Rs.<%= request.getAttribute("eventCategory") %></p>
    <p>Event eventdate: Rs.<%= request.getAttribute("eventDate") %></p>
    <p>Event eventTime: Rs.<%= request.getAttribute("eventTime") %></p>
    <p>Event eventDuration: Rs.<%= request.getAttribute("eventDuration") %></p>
    <p>Event eventHost: Rs.<%= request.getAttribute("eventHost") %></p>
    <p>Event eventHost: Rs.<%= request.getAttribute("quantity") %></p>
    <p>Event eventHost: Rs.<%= request.getAttribute("price") %></p>

    <!-- ... Other event details ... -->

    <h3>Order Summary:</h3>
    <p>Total Ticket: <%= request.getAttribute("quantity") %></p>
    <p>Sub Total: Rs.<%= request.getAttribute("total") %></p>
    <p>Total: Rs.<%= request.getAttribute("total") %></p>
<!-- 		user(First Name,Last Name,Email,Address,Country,State,City,pin code,image,event name,event price, date, time,duration description, event hosting , price, total ticket)
 -->	
 
<%
OnlineOrderDetails orderDetails = new OnlineOrderDetails(user.getFirst_name(), user.getLast_name(), user.getEmail(),
        event.getEvent_image(), event.getEvent_name(),
        event.getEvent_category(), event.getEvent_date(), event.getEvent_time(), event.getEvent_duration(),
        event.getEvent_description(), event.getEvent_hosting(), event.getEvent_price(), quantity, total);
System.out.print(orderDetails);
request.setAttribute("orderDetails", orderDetails);

Online_Event_Ticket_Dao ud = new Online_Event_Ticket_Dao();
int orderId = ud.insert(orderDetails);
out.println("Order ID: " + orderDetails.getId());
System.out.print(orderDetails.getId());

session.setAttribute("orderId", orderDetails.getId());

%>
	</form>
	user(First Name,Last Name,Email,Address,Country,State,City,pin code,image,event name,event price, date, time,duration description, event hosting , price, total ticket)
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

</c:if>
	
<c:if test="${empty cookie.email.value}">
    <c:redirect url="sign_up.jsp" />
</c:if>
</body></html>