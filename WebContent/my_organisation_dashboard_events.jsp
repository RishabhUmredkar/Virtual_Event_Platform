<%@ page import="java.util.List" %>

    <%@page import="Model.RegisterUser"%>
<%@page import="Model.VenueEvent"%>
<%@page import="Dao.UserDao"%>
<%@page import="Dao.Venue_Event_Dao"%>
<%@page import="Servlet.ProcessEventServlet"%>


<html lang="en" class="h-100"><head></head><body class="d-flex flex-column h-100">

	<style type="text/css">
     /* Add or update these styles in your CSS file or inline styles */
.pagination {
    margin-top: 20px;
    display: flex;
    justify-content: center;
}

.pagination .page-link {
    color: #fff; /* Text color */
    background-color: #000 !important; /* Button background color */
    border: 1px solid #000; /* Border color */
    padding: 0.375rem 0.75rem; /* Adjust padding as needed */
    margin-right: 5px; /* Adjust margin as needed */
    text-decoration: none;
    cursor: pointer;
}

.pagination .page-link:hover {
    background-color: #333 !important; /* Hover background color */
    border: 1px solid #333; /* Hover border color */
}

.pagination .page-item.active .page-link {
    background-color: #333 !important; /* Active page background color */
    border: 1px solid #333; /* Active page border color */
} 
    </style>
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
		<link href="css/responsive.css" rel="stylesheet">
		<link href="css/night-mode.css" rel="stylesheet">
		
		<!-- Vendor Stylesheets -->
		<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
		<link href="vendor/OwlCarousel/assets/owl.carousel.css" rel="stylesheet">
		<link href="vendor/OwlCarousel/assets/owl.theme.default.min.css" rel="stylesheet">
		<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">	
		
	
<script>
    function searchByEvent() {
        var searchEvent = document.getElementById("searchEvent").value;
        window.location.href = "my_organisation_dashboard_events.jsp?event=" + searchEvent;
    }
    function refreshPage() {
        window.location.href = "my_organisation_dashboard_my_user.jsp";
    }
    </script>

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
									<a class="nav-link" href="organiser_profile_view.jsp">
										<i class="fa-solid fa-right-left me-2"></i>My Home
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="explore_events.jsp">
										<i class="fa-solid fa-compass me-2"></i>Explore Events
									</a>
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
						<a href="my_organisation_dashboard_events.jsp" class="menu--link active" title="Events" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-calendar-days menu--icon"></i>
							<span class="menu--label">Events</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_promotion.jsp" class="menu--link" title="Promotion" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-rectangle-ad menu--icon"></i>
							<span class="menu--label">Promotion</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_contact_lists.jsp" class="menu--link" title="Contact List" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-regular fa-address-card menu--icon"></i>
							<span class="menu--label">Contact List</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_payout.jsp" class="menu--link" title="Payouts" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-credit-card menu--icon"></i>
							<span class="menu--label">Payouts</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_reports.jsp" class="menu--link" title="Reports" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-chart-pie menu--icon"></i>
							<span class="menu--label">Reports</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_subscription.jsp" class="menu--link" title="Subscription" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-bahai menu--icon"></i>
							<span class="menu--label">Subscription</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_conversion_setup.jsp" class="menu--link" title="Conversion Setup" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-square-plus menu--icon"></i>
							<span class="menu--label">Conversion Setup</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_about.jsp" class="menu--link" title="About" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-circle-info menu--icon"></i>
							<span class="menu--label">About</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_my_user.jsp" class="menu--link " title="My Team" data-bs-toggle="tooltip" data-bs-placement="right"> 
							<i class="fa-solid fa-user-group menu--icon"></i>
							<span class="menu--label">My User</span>
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
							<h3><i class="fa-solid fa-calendar-days me-3"></i>Events</h3>
						</div>
					</div>
					
					
					
					<div class="col-md-12">
						<div class="main-card mt-5">
							<div class="dashboard-wrap-content p-4">
								<h5 class="mb-4">Events (1)</h5>
								<div class="d-md-flex flex-wrap align-items-center">
									<div class="dashboard-date-wrap">
										<div class="form-group">
											  <div class="d-flex align-items-center">
							                <div class="relative-input position-relative">
							                    <input id="searchEvent" class="form-control h_40" type="text" placeholder="Search by event name" value="">
							                    <i class="uil uil-search"></i>
							                </div>
							                <button onclick="searchByEvent()" class="btn btn-primary ms-2" style="background-color: #48a31d; color: #000;">Search</button>
							                	
							            </div>
										</div>
									</div>
									
									
									
									
									<div class="rs ms-auto mt_r4">
										<div class="nav custom2-tabs btn-group" role="tablist">
											<button class="tab-link active" data-bs-toggle="tab" data-bs-target="#all-tab" type="button" role="tab" aria-controls="all-tab" aria-selected="true">All Event (<span class="total_event_counter">1</span>)</button>
											<button class="tab-link" data-bs-toggle="tab" data-bs-target="#online-tab" type="button" role="tab" aria-controls="online-tab" aria-selected="false">Online Event (<span class="total_event_counter">0</span>)</button>
											<button a href="#"  onclick="refreshPage()" class="tab-link" data-bs-toggle="tab" data-bs-target="#venue-tab" type="button" role="tab" aria-controls="venue-tab" aria-selected="false">Venue Event (<span class="total_event_counter">1</span>)</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						
						
						<div class="event-list">
							<div class="tab-content">
							<% 
														 String searchEvent = request.getParameter("event");
													    List<VenueEvent> le = null;

													    if (searchEvent != null && !searchEvent.isEmpty()) {
													        // If email is provided, get data for that email
													        le = new Venue_Event_Dao().searchUserByEvent(searchEvent);
													    } else {
													        // If no email is provided, get all user data
													        le = new Venue_Event_Dao().getAllEventData();
													    }
						
						   
							
							
							
							
							
							
							
							     int currentPage = 1;
													      int recordsPerPage = 10;
													      if (request.getParameter("page") != null) {
													        currentPage = Integer.parseInt(request.getParameter("page"));
													      }
													      int totalRecords = le.size();
													      int totalPages = (int) Math.ceil((double) totalRecords / recordsPerPage);
													      int start = (currentPage - 1) * recordsPerPage;
													      int end = Math.min(start + recordsPerPage, totalRecords);
													      List<VenueEvent> currentPageData = le.subList(start, end);

														 %>
								<div class="tab-pane fade show active" id="all-tab" role="tabpanel">
								
								 <% for (VenueEvent e : currentPageData) { %>	
									<div class="main-card mt-4">
										<div class="contact-list">
											<div class="card-top event-top p-4 align-items-center top d-md-flex flex-wrap justify-content-between">
												<div class="d-md-flex align-items-center event-top-info">
													<div class="card-event-img">
														<img src="Venue_Event_Image/<%=e.getEvent_image() %>" alt="fdgdf">
													</div>
													<div class="card-event-dt">
														<h5><%=e.getEvent_name() %> || <%=e.getEvent_category() %></h5>
														<p><%=e.getEvent_description() %> </p>													</div>
												</div>
												<div class="dropdown">
													<button class="option-btn" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa-solid fa-ellipsis-vertical"></i></button>
													<div class="dropdown-menu dropdown-menu-right">
														<a href="#" class="dropdown-item"><i class="fa-solid fa-gear me-3"></i>Manage</a>
														<a href="#" class="dropdown-item"><i class="fa-solid fa-eye me-3"></i>Preview Event</a>
														<a href="#" class="dropdown-item"><i class="fa-solid fa-clone me-3"></i>Duplicate</a>
														<a href="#" class="dropdown-item delete-event"><i class="fa-solid fa-trash-can me-3"></i>Delete</a>
													</div>
												</div>
											</div>
											<div class="bottom d-flex flex-wrap justify-content-between align-items-center p-4">
												<div class="icon-box ">
													<span class="icon">
														<i class="fa-solid fa-location-dot"></i>
													</span>
													<p>Location</p>
													<h6 class="coupon-status"><%=e.getEvent_venue() %> <%=" , "+e.getEvent_address1() %><%=" , "+e.getEvent_city() %><%= " , "+ e.getEvent_state() %> <%=" , "+e.getEvent_country() %> <%= " , "+ e.getEvent_pin_code() %></h6>
												</div>
												<div class="icon-box">
													<span class="icon">
														<i class="fa-solid fa-calendar-days"></i>
													</span>
													<p>Starts on</p>
													<h6 class="coupon-status"><%= e.getEvent_date() %> <%=e.getEvent_time() %></h6>
												</div>
												<div class="icon-box">
													<span class="icon">
														<i class="fa-solid fa-ticket"></i>
													</span>
													<p>Ticket Price</p>
													<h6 class="coupon-status"><%=e.getEvent_price() %></h6>
												</div>
												<div class="icon-box">
													<span class="icon">
														<i class="fa-solid fa-tag"></i>
													</span>
													<p>Total Tickets </p>
													<h6 class="coupon-status"><%=e.getEvent_total_tickets() %></h6>
												</div>
											</div>
										</div>
									</div>
									<%} %>
																	
<<!-- Pagination -->
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
</div>
<!-- End Pagination -->			<div class="tab-pane fade" id="online-tab" role="tabpanel">
									<div class="main-card d-none mt-4">
										<div class="d-flex align-items-center justify-content-center flex-column min-height-430">
											<div class="event-list-icon">
												<img src="images/calendar.png" alt="">
											</div>
											<p class="font-16 mt-4 text-light3">No Event found</p>
										</div>
									</div>
									<div class="main-card mt-4">
										<div class="contact-list">
											<div class="card-top event-top p-4 align-items-center top d-md-flex flex-wrap justify-content-between">
												<div class="d-md-flex align-items-center event-top-info">
													<div class="card-event-img">
														<img src="images/event-imgs/img-2.jpg" alt="">
													</div>
													<div class="card-event-dt">
														<h5>Earrings Workshop with Bronwyn David</h5>
													</div>
												</div>
												<div class="dropdown">
													<button class="option-btn" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa-solid fa-ellipsis-vertical"></i></button>
													<div class="dropdown-menu dropdown-menu-right">
														<a href="#" class="dropdown-item"><i class="fa-solid fa-gear me-3"></i>Manage</a>
														<a href="#" class="dropdown-item"><i class="fa-solid fa-eye me-3"></i>Preview Event</a>
														<a href="#" class="dropdown-item"><i class="fa-solid fa-clone me-3"></i>Duplicate</a>
														<a href="#" class="dropdown-item delete-event"><i class="fa-solid fa-trash-can me-3"></i>Delete</a>
													</div>
												</div>
											</div>
											<div class="bottom d-flex flex-wrap justify-content-between align-items-center p-4">
												<div class="icon-box ">
													<span class="icon">
														<i class="fa-solid fa-location-dot"></i>
													</span>
													<p>Status</p>
													<h6 class="coupon-status">Publish</h6>
												</div>
												<div class="icon-box">
													<span class="icon">
														<i class="fa-solid fa-calendar-days"></i>
													</span>
													<p>Starts on</p>
													<h6 class="coupon-status">30 Jun, 2022 10:00 AM</h6>
												</div>
												<div class="icon-box">
													<span class="icon">
														<i class="fa-solid fa-ticket"></i>
													</span>
													<p>Ticket</p>
													<h6 class="coupon-status">250</h6>
												</div>
												<div class="icon-box">
													<span class="icon">
														<i class="fa-solid fa-tag"></i>
													</span>
													<p>Tickets sold</p>
													<h6 class="coupon-status">20</h6>
												</div>
											</div>
										</div>
									</div>
								</div>
						
						
						
						
						
						
						
						
						
						
						
						
								<div class="tab-pane fade" id="venue-tab" role="tabpanel">
									<%List<VenueEvent> le1=null;
									le1=new Venue_Event_Dao().getAllEventData();%>
									 <% for(VenueEvent e:le1){%>
			
									<div class="main-card mt-4">
										<div class="contact-list">
											<div class="card-top event-top p-4 align-items-center top d-md-flex flex-wrap justify-content-between">
												<div class="d-md-flex align-items-center event-top-info">
													<div class="card-event-img">
														<img src="Venue_Event_Image/<%=e.getEvent_image() %>" alt="fdgdf">
													</div>
													<div class="card-event-dt">
														<h5><%=e.getEvent_name() %> || <%=e.getEvent_category() %></h5>
														<p><%=e.getEvent_description() %> </p>
													</div>
												</div>
												<div class="dropdown">
													<button class="option-btn" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa-solid fa-ellipsis-vertical"></i></button>
													<div class="dropdown-menu dropdown-menu-right">
														<a href="#" class="dropdown-item"><i class="fa-solid fa-gear me-3"></i>Manage</a>
														<a href="#" class="dropdown-item"><i class="fa-solid fa-eye me-3"></i>Preview Event</a>
														<a href="#" class="dropdown-item"><i class="fa-solid fa-clone me-3"></i>Duplicate</a>
														<a href="#" class="dropdown-item delete-event"><i class="fa-solid fa-trash-can me-3"></i>Delete</a>
													</div>
												</div>
											</div>
											<div class="bottom d-flex flex-wrap justify-content-between align-items-center p-4">
												<div class="icon-box ">
													<span class="icon">
														<i class="fa-solid fa-location-dot"></i>
													</span>
													<p>Location</p>
													<h6 class="coupon-status"><%=e.getEvent_venue() %> <%=" , "+e.getEvent_address1() %><%=" , "+e.getEvent_city() %><%= " , "+ e.getEvent_state() %> <%=" , "+e.getEvent_country() %> <%= " , "+ e.getEvent_pin_code() %></h6>
												</div>
												<div class="icon-box">
													<span class="icon">
														<i class="fa-solid fa-calendar-days"></i>
													</span>
													<p>Starts on</p>
													<h6 class="coupon-status"><%= e.getEvent_date() %> <%=e.getEvent_time() %></h6>
												</div>
												<div class="icon-box">
													<span class="icon">
														<i class="fa-solid fa-ticket"></i>
													</span>
													<p>Ticket Price</p>
													<h6 class="coupon-status"><%=e.getEvent_price() %></h6>
												</div>
												<div class="icon-box">
													<span class="icon">
														<i class="fa-solid fa-tag"></i>
													</span>
													<p>Total Tickets </p>
													<h6 class="coupon-status"><%=e.getEvent_total_tickets() %></h6>
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
	<script src="js/night-mode.js"></script>


</body></html>