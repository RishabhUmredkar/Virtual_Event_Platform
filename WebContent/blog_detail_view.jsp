<%@ page import="javax.servlet.http.Cookie" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page errorPage="Error.jsp" %>

<html lang="ca" class="h-100">
<head></head>
<body class="d-flex flex-column h-100">

	
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, shrink-to-fit=9">
		<meta name="description" content="Gambolthemes">
		<meta name="author" content="Gambolthemes">		
		<title>Evento - Simple Online Event Ticketing System</title>
		
		
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
									<a class="nav-link " aria-current="page" href="index.jsp">Home</a>
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
									<a class="nav-link active dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
	<div class="wrapper">
		<div class="breadcrumb-block">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-10">
						<div class="barren-breadcrumb">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
									<li class="breadcrumb-item"><a href="our_blog.jsp">Our Blog</a></li>
									<li class="breadcrumb-item active" aria-current="page">Blog Detail View</li>
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
					<div class="col-lg-8 col-md-10">
						<div class="blog-view">
							<div class="blog-img-card p-0">
								<img src="images/blog-imgs/img-1.jpg" alt="">
							</div>
							<div class="blog-content blog-content-view p-0">
								<h3>Organising a Successful Christmas Party with Barren</h3>
								<div class="post-meta border_bottom pb-4">
									<span class="post-date me-4 fs-14"><i class="fa-regular fa-calendar-days me-2"></i>5 May, 2022</span>
									<span class="post-read-time float-none fs-14"><i class="fa-regular fa-clock me-2"></i>10 mins read </span>
								</div>
								<div class="blog-content-meta">
									<p>Phasellus venenatis posuere nibh, sit amet blandit lorem pharetra ac. Phasellus feugiat laoreet laoreet. Praesent eget ex condimentum, malesuada lectus vitae, porta nunc. Vestibulum nec venenatis magna, quis hendrerit justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fringilla, ex sit amet sagittis blandit, justo mi faucibus elit, eget egestas est velit vel libero.</p>
									<div class="blog-description-article">
										<h5>How exactly do we organize a virtual Christmas party?</h5>
										<p>Vestibulum non commodo quam. Morbi dignissim erat nisl, at euismod felis blandit a. Aenean nec sollicitudin turpis, sit amet cursus orci. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed non mauris nulla. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus pretium, lacus quis bibendum accumsan, erat magna ullamcorper libero, quis venenatis turpis neque eget magna.</p>
										<p>Fusce non tortor eros. Quisque tristique tincidunt ullamcorper. Mauris sed sem posuere, varius nibh in, volutpat nisl. Integer ipsum quam, tristique sed ligula vel, tincidunt aliquam dui. Mauris porta vel odio eget aliquam. Suspendisse ultrices leo sit amet erat facilisis porta.</p>
									</div>
									<div class="blog-description-article">
										<h5>Steps of Creating a Successful Virtual Christmas Party</h5>
										<p>Integer blandit elit nibh, sit amet dignissim ligula volutpat sed. Donec consequat luctus nibh a posuere. Fusce vitae commodo neque. Vivamus tempor augue id lorem bibendum finibus. Praesent mauris ante, laoreet ut semper nec, laoreet ac augue. Suspendisse venenatis nisi tellus, at mattis velit tincidunt vitae. </p>
										<p>Nunc viverra eleifend sapien ac blandit. Nam id elit tempor, tempor ante at, euismod nisl. Nullam ante lectus, luctus eget porttitor ut, dignissim non urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut turpis quam, porttitor vel vestibulum ut, venenatis non eros. In hac habitasse platea dictumst.</p>
									</div>
									<div class="blog-description-article">
										<h5>Step-1: Define Your Event Objectives</h5>
										<p>Phasellus posuere nisi quis neque lobortis, vitae aliquet dolor gravida. Pellentesque scelerisque dui felis. Fusce rutrum congue dignissim. Phasellus commodo auctor efficitur. Pellentesque ut aliquam quam. Ut mi odio, aliquet quis felis at, semper rhoncus felis. Vestibulum sollicitudin ultrices turpis quis volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse mollis, quam non lobortis varius, quam enim tempus enim, ut porta lorem lacus sit amet nulla. Donec ut suscipit augue, id fringilla mauris. Duis egestas augue sem, vitae ornare quam facilisis quis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean vel ex facilisis, interdum felis vitae, imperdiet eros.</p>
									</div>
									<div class="blog-description-article">
										<h5>Step-2: Prepare a Potential Attendee List</h5>
										<p>Vestibulum non commodo quam. Morbi dignissim erat nisl, at euismod felis blandit a. Aenean nec sollicitudin turpis, sit amet cursus orci. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce non tortor eros. Quisque tristique tincidunt ullamcorper. Mauris sed sem posuere, varius nibh in, volutpat nisl. Integer ipsum quam, tristique sed ligula vel, tincidunt aliquam dui. Mauris porta vel odio eget aliquam. Suspendisse ultrices leo sit amet erat facilisis porta. Sed non mauris nulla. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus pretium, lacus quis bibendum accumsan, erat magna ullamcorper libero, quis venenatis turpis neque eget magna.</p>
									</div>
									<div class="blog-description-article">
										<h5>Step-3: Set a Budget</h5>
										<p>Morbi lectus nunc, lacinia ut consequat a, semper vel erat. Duis ut lacus nec dui sodales mattis. Mauris tellus dolor, pulvinar sit amet pretium a, malesuada sed tellus. Aliquam ultrices elit neque, quis lacinia ex porttitor non. Donec ac iaculis turpis. Nulla lacinia enim quis orci aliquam, non cursus urna pellentesque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus in mi a nisi auctor interdum.</p>
									</div>
									<div class="blog-description-article">
										<h5>Step-4: Send Virtual Invitation Cards</h5>
										<p>Morbi lectus nunc, lacinia ut consequat a, semper vel erat. Duis ut lacus nec dui sodales mattis. Mauris tellus dolor, pulvinar sit amet pretium a, malesuada sed tellus. Aliquam ultrices elit neque, quis lacinia ex porttitor non. Donec ac iaculis turpis. Nulla lacinia enim quis orci aliquam, non cursus urna pellentesque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus in mi a nisi auctor interdum.</p>
									</div>
									<div class="blog-description-article">
										<h5>Step-5: Plan Out a Number of Engaging Online Activities</h5>
										<p>Morbi lectus nunc, lacinia ut consequat a, semper vel erat. Duis ut lacus nec dui sodales mattis. Mauris tellus dolor, pulvinar sit amet pretium a, malesuada sed tellus. Aliquam ultrices elit neque, quis lacinia ex porttitor non. Donec ac iaculis turpis. Nulla lacinia enim quis orci aliquam, non cursus urna pellentesque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus in mi a nisi auctor interdum.</p>
										<ul class="blog-description-list">
											<li><p class="mb-0">Holiday Bingo</p></li>
											<li><p class="mb-0">Christmas Karaoke</p></li>
											<li><p class="mb-0">Virtual Christmas Trivia</p></li>
											<li><p class="mb-0">Photo-video Montages</p></li>
											<li><p class="mb-0">Virtual secret Santa exchange</p></li>
											<li><p class="mb-0">Gift Revealing session</p></li>
											<li><p class="mb-0">Christmas Scavenger Hunt</p></li>
											<li><p class="mb-0">Holiday Wine Tasting</p></li>
										</ul>
									</div>
									<div class="blog-description-article">
										<h5>Event analytics at the fingertips</h5>
										<p>Morbi lectus nunc, lacinia ut consequat a, semper vel erat. Duis ut lacus nec dui sodales mattis. Mauris tellus dolor, pulvinar sit amet pretium a, malesuada sed tellus. Aliquam ultrices elit neque, quis lacinia ex porttitor non. Donec ac iaculis turpis. Nulla lacinia enim quis orci aliquam, non cursus urna pellentesque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus in mi a nisi auctor interdum.</p>
									</div>
									<div class="social-share">
										<h4>Share This Article</h4>
										<ul>
											<li><a href="#" class="share-link"><i class="fab fa-facebook-f"></i></a></li>
											<li><a href="#" class="share-link"><i class="fab fa-twitter"></i></a></li>
											<li><a href="#" class="share-link"><i class="fab fa-linkedin-in"></i></a></li>
											<li><a href="#" class="share-link"><i class="fas fa-envelope"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="related-posts">
							<div class="main-title checkout-title Bp-top">
								<h3>Related Posts</h3>
							</div>
							<div class="owl-carousel related-posts-slider owl-theme bt_40">
								<div class="item">
									<div class="main-card">
										<div class="blog-thumbnail">
											<a href="blog_detail_view.jsp" class="thumbnail-img">
												<img src="images/blog-imgs/img-2.jpg" alt="">
											</a>
										</div>
										<div class="blog-content">
											<a href="blog_detail_view.jsp" class="blog-title fs-16">How to Live Stream Successfully: Complete Guide for Event Hosts</a>
											<div class="post-meta bt_33">
												<span class="post-date fs-14"><i class="fa-regular fa-calendar-days me-2"></i>5 May, 2022</span>
												<span class="post-read-time fs-14"><i class="fa-regular fa-clock me-2"></i>10 mins read </span>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card">
										<div class="blog-thumbnail">
											<a href="blog_detail_view.jsp" class="thumbnail-img">
												<img src="images/blog-imgs/img-3.jpg" alt="">
											</a>
										</div>
										<div class="blog-content">
											<a href="blog_detail_view.jsp" class="blog-title fs-16">Virtual Event Sponsorship Ideas for Your Next Event</a>
											<div class="post-meta bt_33">
												<span class="post-date fs-14"><i class="fa-regular fa-calendar-days me-2"></i>5 May, 2022</span>
												<span class="post-read-time fs-14"><i class="fa-regular fa-clock me-2"></i>10 mins read </span>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card">
										<div class="blog-thumbnail">
											<a href="blog_detail_view.jsp" class="thumbnail-img">
												<img src="images/blog-imgs/img-4.jpg" alt="">
											</a>
										</div>
										<div class="blog-content">
											<a href="blog_detail_view.jsp" class="blog-title fs-16">13 Awesome Virtual Event Ideas for Your Next Online Event</a>
											<div class="post-meta bt_33">
												<span class="post-date fs-14"><i class="fa-regular fa-calendar-days me-2"></i>5 May, 2022</span>
												<span class="post-read-time fs-14"><i class="fa-regular fa-clock me-2"></i>10 mins read </span>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card">
										<div class="blog-thumbnail">
											<a href="blog_detail_view.jsp" class="thumbnail-img">
												<img src="images/blog-imgs/img-5.jpg" alt="">
											</a>
										</div>
										<div class="blog-content">
											<a href="blog_detail_view.jsp" class="blog-title fs-16">How to organise a virtual event successfully with Barren</a>
											<div class="post-meta bt_33">
												<span class="post-date fs-14"><i class="fa-regular fa-calendar-days me-2"></i>5 May, 2022</span>
												<span class="post-read-time fs-14"><i class="fa-regular fa-clock me-2"></i>10 mins read </span>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card">
										<div class="blog-thumbnail">
											<a href="blog_detail_view.jsp" class="thumbnail-img">
												<img src="images/blog-imgs/img-6.jpg" alt="">
											</a>
										</div>
										<div class="blog-content">
											<a href="blog_detail_view.jsp" class="blog-title fs-16">Make Your Next Webinar Interactive with Barren</a>
											<div class="post-meta bt_33">
												<span class="post-date fs-14"><i class="fa-regular fa-calendar-days me-2"></i>5 May, 2022</span>
												<span class="post-read-time fs-14"><i class="fa-regular fa-clock me-2"></i>10 mins read </span>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card">
										<div class="blog-thumbnail">
											<a href="blog_detail_view.jsp" class="thumbnail-img">
												<img src="images/blog-imgs/img-7.jpg" alt="">
											</a>
										</div>
										<div class="blog-content">
											<a href="blog_detail_view.jsp" class="blog-title fs-16">Monetise Your Online Events with Barren and Earn Money</a>
											<div class="post-meta bt_33">
												<span class="post-date fs-14"><i class="fa-regular fa-calendar-days me-2"></i>5 May, 2022</span>
												<span class="post-read-time fs-14"><i class="fa-regular fa-clock me-2"></i>10 mins read </span>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="main-card">
										<div class="blog-thumbnail">
											<a href="blog_detail_view.jsp" class="thumbnail-img">
												<img src="images/blog-imgs/img-8.jpg" alt="">
											</a>
										</div>
										<div class="blog-content">
											<a href="blog_detail_view.jsp" class="blog-title fs-16">The Organiser’s Guide to Hosting a Successful Virtual Event</a>
											<div class="post-meta bt_33">
												<span class="post-date fs-14"><i class="fa-regular fa-calendar-days me-2"></i>5 May, 2022</span>
												<span class="post-read-time fs-14"><i class="fa-regular fa-clock me-2"></i>10 mins read </span>
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
	<script src="js/night-mode.js"></script>

</c:if>
	
<c:if test="${empty cookie.email.value}">
    <c:redirect url="sign_up.jsp" />
</c:if>
</body></html>