<%@ page import="javax.servlet.http.Cookie" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>

<%@page import="Dao.UserDao"%>
<%@page import="Model.RegisterUser"%>
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
    <script>
    function searchByEmail() {
        var searchEmail = document.getElementById("searchEmail").value;
        window.location.href = "my_organisation_dashboard_my_user.jsp?email=" + searchEmail;
    }
    function refreshPage() {
        window.location.href = "my_organisation_dashboard_my_user.jsp";
    }
</script>
</head><body class="d-flex flex-column h-100">
<c:if test="${not empty cookie.email.value}">

	
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
		
	

	<!-- Add Bank Account Model Start-->
	<div class="modal fade" id="bankModal" tabindex="-1" aria-labelledby="bankModalLabel" aria-hidden="false">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="bankModalLabel">Update User Details..</h5>
					<button type="button" class="close-model-btn" data-bs-dismiss="modal" aria-label="Close"><i class="uil uil-multiply"></i></button>
				</div>
				<div class="modal-body">
					<div class="model-content main-form">
						<div class="row">
							<div class="col-lg-6 col-md-12">
								<div class="form-group mt-4">
									<label class="form-label">First Name*</label>
									<input class="form-control h_40" type="text" placeholder="" value="">																								
								</div>
							</div>
							<div class="col-lg-6 col-md-12">
								<div class="form-group mt-4">
									<label class="form-label">Last Name*</label>
									<input class="form-control h_40" type="text" placeholder="" value="">																								
								</div>
							</div>
							
							<div class="col-lg-12 col-md-12">
								<div class="form-group mt-4">
									<label class="form-label">Email Id*</label>
									<input class="form-control h_40" type="text" placeholder="" value="">																								
								</div>
							</div>
							<div class="col-lg-12 col-md-12">
								<div class="form-group mt-4">
									<label class="form-label">Password*</label>
									<input class="form-control h_40" type="text" placeholder="" value="">																								
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="co-main-btn min-width btn-hover h_40" data-bs-target="#aboutModal" data-bs-toggle="modal" data-bs-dismiss="modal">Cancel</button>
					<button type="button" class="main-btn min-width btn-hover h_40">Update</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Add Bank Account Model End-->
	
	
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
						<a href="my_organisation_dashboard_events.jsp" class="menu--link" title="Events" data-bs-toggle="tooltip" data-bs-placement="right">
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
						<a href="my_organisation_dashboard_payout.jsp" class="menu--link " title="Payouts" data-bs-toggle="tooltip" data-bs-placement="right">
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
						<a href="my_organisation_dashboard_my_user.jsp" class="menu--link active" title="My Team" data-bs-toggle="tooltip" data-bs-placement="right"> 
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
							<h3><i class="fa-solid fa-user-group me-3"></i>Users</h3>
						</div>
					</div>
					<div class="col-md-12">
						<div class="main-card mt-5">
						    <div class="dashboard-wrap-content p-4">
							    <div class="dashboard-date-wrap">
							        <div class="form-group">
							            <div class="d-flex align-items-center">
							                <div class="relative-input position-relative">
							                    <input id="searchEmail" class="form-control h_40" type="text" placeholder="Search by Email Id" value="">
							                    <i class="uil uil-search"></i>
							                </div>
							                <button onclick="searchByEmail()" class="btn btn-primary ms-2" style="background-color: #48a31d; color: #000;">Search</button>
							                <button onclick="refreshPage()" class="btn btn-secondary ms-2">Refresh</button>
							            </div>
							        </div>
							    </div>
							</div>

						</div>

						<div class="conversion-setup">
							
							<div class="tab-content">
								<div class="tab-pane fade active show" id="overview-tab" role="tabpanel">
									<div class="table-card mt-4">
										<div class="main-table">
											<div class="table-responsive">
												<table class="table">
													<thead class="thead-dark">
														<tr>
															<th scope="col">ID</th>
															<th scope="col">First Name</th>
															<th scope="col">Last Name</th>
															<th scope="col">Emal ID</th>
															<th scope="col">Password</th>
															<th scope="col">Action</th>
														</tr>
													</thead>
													<tbody>
													
												
														<% 
														 String searchEmail = request.getParameter("email");
													    List<RegisterUser> le = null;

													    if (searchEmail != null && !searchEmail.isEmpty()) {
													        // If email is provided, get data for that email
													        le = new UserDao().searchUserByEmail(searchEmail);
													    } else {
													        // If no email is provided, get all user data
													        le = new UserDao().getAllUserData();
													    }
													    
													    
													    
													    
														
													      // Pagination
													      int currentPage = 1;
													      int recordsPerPage = 10;
													      if (request.getParameter("page") != null) {
													        currentPage = Integer.parseInt(request.getParameter("page"));
													      }
													      int totalRecords = le.size();
													      int totalPages = (int) Math.ceil((double) totalRecords / recordsPerPage);
													      int start = (currentPage - 1) * recordsPerPage;
													      int end = Math.min(start + recordsPerPage, totalRecords);
													      List<RegisterUser> currentPageData = le.subList(start, end);
											               for (RegisterUser e : currentPageData) { 

														 %>
										                <tr>
										                  <td class="custom-td"><%= e.getId() %></td>
										                  <td class="custom-td"><%= e.getFirst_name() %></td>
										                  <td class="custom-td"><%= e.getLast_name() %></td>
										                  <td class="custom-td"><%= e.getEmail() %></td>
										                  <td class="custom-td"><%= e.getPassword() %></td>
										                 <td>
						    <a href="deleteUser.jsp?id=<%= e.getId() %>" class="btn btn-sm btn-danger">
						        <i class="fa-solid fa-trash-can fa-1x"></i>
						    </a>
						    <span> &nbsp; &nbsp;&nbsp; &nbsp;</span>
						    <a href="editmedicineserv?id=<%= e.getId() %>" class="btn btn-sm btn-warning"  data-bs-toggle="modal" data-bs-target="#bankModal">
						        <i class="fa-solid fa-pen fa-1x"></i>
						    </a>
						  
						</td>
							
										                </tr>
										              <% } %>
													</tbody>									
												</table>
											</div>
											
													
										</div>
										
									</div>
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

</c:if>
	
<c:if test="${empty cookie.email.value}">
    <c:redirect url="sign_up.jsp" />
</c:if>

</body></html>