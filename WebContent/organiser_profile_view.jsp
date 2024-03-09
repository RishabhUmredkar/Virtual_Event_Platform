<%@ page import="javax.servlet.http.Cookie" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="Model.RegisterUser" %>
<%@ page import="Dao.Online_Event_Ticket_Dao" %>
<%@ page import="Model.OnlineOrderDetails" %>
<%@ page import="Dao.Venue_Event_Ticket_Dao" %>
<%@ page import="Model.VenueOrderDetails" %>
<%@ page import="Dao.UserDao" %>
<%@ page errorPage="Error.jsp" %>

<html lang="en" class="h-100"><head>
<style type="text/css">
     /* Add or update these styles in your CSS file or inline styles */
.pagination {
    margin-top: 20px;
    display: flex;
    justify-content: center;
}

.pagination .page-link {
    color: #fff; /* Text color */
    background-color: #008000 !important; /* Button background color */
    border: 1px solid #008000; /* Border color */
    padding: 0.375rem 0.75rem; /* Adjust padding as needed */
    margin-right: 5px; /* Adjust margin as needed */
    text-decoration: none;
    cursor: pointer;
}

.pagination .page-link:hover {
    background-color: #70FF00 !important; /* Hover background color */
    border: 1px solid #70FF00; /* Hover border color */
}

.pagination .page-item.active .page-link {
    background-color: #70FF00 !important; /* Active page background color */
    border: 1px solid #70FF00; /* Active page border color */
}

    </style>
</head><body class="d-flex flex-column h-100">

	
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
								
								<div class="user-description">
									<p>Hey I am a <%=user.getFirst_name()  %></p>
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
						</div>
						<div class="col-xl-8 col-lg-7 col-md-12">
							<div class="right-profile">
								<div class="profile-tabs">
									<ul class="nav nav-pills nav-fill p-2 garren-line-tab" id="myTab" role="tablist">
										<li class="nav-item">
											<a class="nav-link active" id="feed-tab" data-bs-toggle="tab" href="#feed" role="tab" aria-controls="feed" aria-selected="true"><i class="fa-solid fa-box"></i>My Online Orders</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" id="venue-tab" data-bs-toggle="tab" href="#venue" role="tab" aria-controls="venue" aria-selected="false"><i class="fa-solid fa-box"></i>My Venue Orders</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" id="about-tab" data-bs-toggle="tab" href="#about" role="tab" aria-controls="about" aria-selected="false"><i class="fa-solid fa-circle-info"></i>About</a>
										</li>
										
										
										
									</ul>
									<div class="tab-content" id="myTabContent">
									
									
										<div class="tab-pane fade active show" id="feed" role="tabpanel" aria-labelledby="feed-tab">
											<%
										int pageSize = 5; // Adjust this value based on the number of items you want to display per page
										int currentPage = (request.getParameter("page") != null) ? Integer.parseInt(request.getParameter("page")) : 1;
										
										if (email != null && !email.isEmpty()) {
										    Online_Event_Ticket_Dao dao = new Online_Event_Ticket_Dao();
										    List<OnlineOrderDetails> orderDetailsList = dao.getOneUser(email);
										
										    out.println("<h2>Order Details</h2>");
										
										    int startIndex = (currentPage - 1) * pageSize;
										    int endIndex = Math.min(startIndex + pageSize, orderDetailsList.size());
										
										    for (int i = startIndex; i < endIndex; i++) {
										        OnlineOrderDetails orderDetails = orderDetailsList.get(i);
										        
										        %>
										     <div class="main-card mt-4">
												<div class="card-top p-4">
													<div class="card-event-img">
												 <img src="Online_Event_Image/<%= orderDetails.getEventImage() %>" alt="">
														
													</div>
													<div class="card-event-dt">
														<h5><%=orderDetails.getEventName() %> || <%=orderDetails.getEventCategory() %></h5>
														<div class="invoice-id">Order ID : <span><%=orderDetails.getId() %></span></div>
													</div>
												</div>
												<div class="card-bottom">
													<div class="card-bottom-item">
														<div class="card-icon">
															<i class="fa-solid fa-calendar-days"></i>
														</div>
														<div class="card-dt-text">
															<h6>Event Starts on</h6>
															<span><%=orderDetails.getEventDate() %> <%=orderDetails.getEventTime() %></span>
														</div>
													</div>
													<div class="card-bottom-item">
														<div class="card-icon">
															<i class="fa-solid fa-ticket"></i>
														</div>
														<div class="card-dt-text">
															<h6>Total Tickets</h6>
															<span><%=orderDetails.getQuantity() %></span>
														</div>
													</div>
													<div class="card-bottom-item">
														<div class="card-icon">
															<i class="fa-solid fa-money-bill"></i>
														</div>
														<div class="card-dt-text">
															<h6>Paid Amount</h6>
															<span>Rs. <%=orderDetails.getTotal() %></span>
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
											 <%
											    }
											
											    // Include the pagination logic here
											    int totalPages = (int) Math.ceil((double) orderDetailsList.size() / pageSize);
											    %>
											    <!-- Pagination -->
											    <div class="pagination">
											        <ul class="pagination justify-content-center">
											            <% if (currentPage > 1) { %>
											                <li class="page-item">
											                    <a class="page-link" href="?page=<%= currentPage - 1 %>" aria-label="Previous">
											                        <span aria-hidden="true">&laquo;</span>
											                    </a>
											                </li>
											            <% } %>
											
											            <% for (int i = 1; i <= totalPages; i++) { %>
											                <li class="page-item <%= (i == currentPage) ? "active" : "" %>">
											                    <a class="page-link" href="?page=<%= i %>"><%= i %></a>
											                </li>
											            <% } %>
											
											            <% if (currentPage < totalPages) { %>
											                <li class="page-item">
											                    <a class="page-link" href="?page=<%= currentPage + 1 %>" aria-label="Next">
											                        <span aria-hidden="true">&raquo;</span>
											                    </a>
											                </li>
											            <% } %>
											        </ul>
											    </div>
											    <!-- End Pagination -->
											    <%
											} else {
											    response.sendRedirect("sign_up.jsp");
											}
											%>
										</div>
										
										<div class="tab-pane fade" id="venue" role="tabpanel" aria-labelledby="venue-tab">
											<%
										int pageSize1 = 5; // Adjust this value based on the number of items you want to display per page
										int currentPage11 = (request.getParameter("page") != null) ? Integer.parseInt(request.getParameter("page")) : 1;
										
										if (email != null && !email.isEmpty()) {
										    Venue_Event_Ticket_Dao dao = new Venue_Event_Ticket_Dao();
										    List<VenueOrderDetails> venueDetailsList = dao.getOneUser(email);
										
										    out.println("<h2>Order Details</h2>");
										
										    int startIndex = (currentPage11 - 1) * pageSize1;
										    int endIndex = Math.min(startIndex + pageSize1, venueDetailsList.size());
										
										    for (int i = startIndex; i < endIndex; i++) {
										        VenueOrderDetails venueDetails = venueDetailsList.get(i);
										        %>
										     <div class="main-card mt-4">
												<div class="card-top p-4">
													<div class="card-event-img">
												 <img src="Venue_Event_Image/<%= venueDetails.getEventImage() %>" alt="">
													</div>
													<div class="card-event-dt">
														<h5><%=venueDetails.getEventName() %> || <%=venueDetails.getEventCategory() %></h5>
														<div class="invoice-id">Order ID : <span><%=venueDetails.getId() %></span></div>
													</div>
												</div>
												<div class="card-bottom">
													<div class="card-bottom-item">
														<div class="card-icon">
															<i class="fa-solid fa-calendar-days"></i>
														</div>
														<div class="card-dt-text">
															<h6>Event Starts on</h6>
															<span><%=venueDetails.getEventDate() %> <%=venueDetails.getEventTime() %></span>
														</div>
													</div>
													<div class="card-bottom-item">
														<div class="card-icon">
															<i class="fa-solid fa-ticket"></i>
														</div>
														<div class="card-dt-text">
															<h6>Total Tickets</h6>
															<span><%=venueDetails.getQuantity() %></span>
														</div>
													</div>
													<div class="card-bottom-item">
														<div class="card-icon">
															<i class="fa-solid fa-money-bill"></i>
														</div>
														<div class="card-dt-text">
															<h6>Paid Amount</h6>
															<span>Rs. <%=venueDetails.getTotal() %></span>
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
											 <%
											    }
											
											    // Include the pagination logic here
											    int totalPages = (int) Math.ceil((double) venueDetailsList.size() / pageSize1);
											    %>
											    <!-- Pagination -->
											    <div class="pagination">
											        <ul class="pagination justify-content-center">
											            <% if (currentPage11 > 1) { %>
											                <li class="page-item">
											                    <a class="page-link" href="?page=<%= currentPage11 - 1 %>" aria-label="Previous">
											                        <span aria-hidden="true">&laquo;</span>
											                    </a>
											                </li>
											            <% } %>
											
											            <% for (int i = 1; i <= totalPages; i++) { %>
											                <li class="page-item <%= (i == currentPage11) ? "active" : "" %>">
											                    <a class="page-link" href="?page=<%= i %>"><%= i %></a>
											                </li>
											            <% } %>
											
											            <% if (currentPage11 < totalPages) { %>
											                <li class="page-item">
											                    <a class="page-link" href="?page=<%= currentPage11 + 1 %>" aria-label="Next">
											                        <span aria-hidden="true">&raquo;</span>
											                    </a>
											                </li>
											            <% } %>
											        </ul>
											    </div>
											    <!-- End Pagination -->
											    <%
											} else {
											    response.sendRedirect("sign_up.jsp");
											}
											%>
										</div>
										
										
										<div class="tab-pane fade" id="about" role="tabpanel" aria-labelledby="about-tab">
											<%
							    if (email != null && !email.isEmpty()) {
							        UserDao dao = new UserDao();
							        List<RegisterUser> registerUsers; // Change variable name to start with a lowercase letter
							
							        try {
							            registerUsers = dao.searchUserByEmail(email);
							
							            out.println("<h2>User Details</h2>");
							
							            for (RegisterUser user : registerUsers) {
							              
							                %>
											<div class="main-card mt-4">
												<div class="bp-title position-relative">
													<h4>About</h4>
													
												</div>
												<div class="about-details">
													<div class="about-step">
														<h5>Name</h5>
														<span><%=user.getFirst_name()  %> <%=user.getLast_name()  %> </span>
													</div>
													<div class="about-step">
														<h5>Tell us about yourself and let people know who you are</h5>
														<p class="mb-0"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt interdum nunc et auctor. Phasellus quis pharetra sapien. Integer ligula sem, sodales vitae varius in, varius eget augue.</p>
													</div>
													<div class="about-step">
														<h5>Password</h5>
														<p class="mb-0"><%=user.getPassword()  %></p>
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

</c:if>
	
<c:if test="${empty cookie.email.value}">
    <c:redirect url="sign_up.jsp" />
</c:if>
</body></html>