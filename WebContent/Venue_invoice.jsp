<%@ page import="javax.servlet.http.Cookie" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="Dao.Venue_Event_Dao" %>
<%@ page import="Dao.Venue_Event_Ticket_Dao" %>
<%@ page import="Model.VenueEvent" %>
<%@ page import="Model.OnlineEvent" %>
<%@ page import="Model.RegisterUser" %>
<%@ page import="Model.VenueOrderDetails" %>
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
		

    <%
        Integer orderId = (Integer) session.getAttribute("orderId");
        System.out.println("orderId: " + orderId);
        try {
            Venue_Event_Ticket_Dao dao = new Venue_Event_Ticket_Dao();
            VenueOrderDetails ticket = dao.getTicketById(orderId);

            if (ticket != null) {
                // Data retrieval success, you can use the 'ticket' object
                System.out.println("Ticket retrieved successfully:");
                System.out.println("ID: " + ticket.getId());
                System.out.println("Address: " + ticket.getAddress());
                System.out.println("Country: " + ticket.getCountry());
                System.out.println("State: " + ticket.getState());
                System.out.println("City: " + ticket.getCity());
                System.out.println("Pin Code: " + ticket.getPinCode());
                System.out.println("Card Number: " + ticket.getEventCardNumber());

                // Format Expiry Date using SimpleDateFormat
                SimpleDateFormat dateFormat = new SimpleDateFormat("MM/yy");
                String formattedExpiryDate = dateFormat.format(ticket.getEventExpiryDate());
                System.out.println("Expiry Date: " + formattedExpiryDate);

                System.out.println("CVV: " + ticket.getCvv());
                // Print other properties as needed
          
    %>
	


	<!-- Invoice Start-->
    <div class="invoice clearfix" id="invoiceContent">
		<div class="container">
			<div class="row justify-content-md-center">
				<div class="col-lg-8 col-md-10">
					<div class="invoice-header justify-content-between">
						<div class="invoice-header-logo">
							<img src="images/Evento.png"  alt="">
							<img class="logo-inverse" src="images/EventoDark.png" alt="">						</div>
						<div class="invoice-header-text">
        					<a  class="download-link" onclick="downloadPDF()">Download PDF</a>
						</div>
					</div>
					<div class="invoice-body">
						<div class="invoice_dts">
							<div class="row">
								<div class="col-md-12">
									<h2 class="invoice_title">Invoice</h2>
								</div>
								<div class="col-md-6">
									<div class="vhls140">
										<ul>
											<li><div class="vdt-list">Invoice to <%=ticket.getFirstName() %></div></li>
											<li><div class="vdt-list"><%=ticket.getAddress() %></div></li>
											<li><div class="vdt-list"><%=ticket.getCity() %> ,  <%=ticket.getState()%></div></li>
											<li><div class="vdt-list"><%=ticket.getCountry() %> ,  <%=ticket.getPinCode()%></div></li>
										</ul>
									</div>
								</div>
								<div class="col-md-6">
									<div class="vhls140">
										<ul>
											<li><div class="vdt-list">Invoice ID : YCCURW-000000</div></li>
											<li><div class="vdt-list">Order Date : <%=ticket.getEventDate() %></div></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="main-table bt_40">
							<div class="table-responsive">
								<table class="table">
									<thead class="thead-dark">
										<tr>
											<th scope="col">#</th>
											<th scope="col">Event Details</th>
											<th scope="col">Type</th>
											<th scope="col">Qty</th>
											<th scope="col">Unit Price</th>
											<th scope="col">Total</th>
										</tr>
									</thead>
									<tbody>
										<tr>										
											<td>1</td>	
											<td><a href="#" target="_blank"><%=ticket.getEventCategory() %></a></td>	
											<td>Online</td>	
											<td><%=ticket.getQuantity() %></td>
											<td>Rs. <%=ticket.getPrice() %></td>
											<td>Rs. <%=ticket.getTotal() %></td>
										</tr>
										<tr>
											<td colspan="1"></td>
											<td colspan="5">
												<div class="user_dt_trans text-end pe-xl-4">
													<div class="totalinv2">Rs. <%=ticket.getTotal() %></div>
													<p>Paid via Paypal</p>
												</div>
											</td>
										</tr>
									</tbody>									
								</table>
							</div>
						</div>
						<div class="invoice_footer">
							<div class="cut-line">
								<i class="fa-solid fa-scissors"></i>
							</div>
							<div class="main-card">
								<div class="row g-0">
									<div class="col-lg-7">
										<div class="event-order-dt p-4">
											<div class="event-thumbnail-img">
												<img src="Venue_Event_Image/<%= ticket.getEventImage() %>" alt="">
											</div>
											<div class="event-order-dt-content">
											<h5><%=ticket.getEventCategory() %></h5>
												<span><%=ticket.getEventDate() %> || <%=ticket.getEventTime() %></span>
												<div class="buyer-name"><%=ticket.getFirstName() %>  <%=ticket.getLastName() %> </div>
												<div class="booking-total-tickets">
													<i class="fa-solid fa-ticket rotate-icon"></i>
													<span class="booking-count-tickets mx-2"><%=ticket.getQuantity() %></span>x Ticket
												</div>
												<div class="booking-total-grand">
													Total : <span>Rs.<%=ticket.getTotal() %></span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-5">
										<div class="QR-dt p-4">
                                                <ul class="QR-counter-type">
                                                    <li>Online</li>
                                                    <li>Counter</li>
                                                    <li>0000000001</li>
                                                </ul>
                                                <div class="QR-scanner" id="qrcode"></div>
                                                <p>Powered by Barren</p>
                                            </div>
									</div>
								</div>
							</div>
							<div class="cut-line">
								<i class="fa-solid fa-scissors"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Invoice End-->
	
	  
        <script src="js/jquery-3.6.0.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="vendor/OwlCarousel/owl.carousel.js"></script>
        <script src="vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
        <script src="js/custom.js"></script>
        <script src="js/night-mode.js"></script>
        <script src="https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script>
  <script src="https://rawgit.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>

        <script>
     // Function to generate QR code dynamically based on first name and total amount
        function generateQRCode() {
            var qrcode = new QRCode(document.getElementById("qrcode"), {
                text: `Event: <%=ticket.getEventCategory()%>\nAmount: <%=ticket.getTotal()%> Rs.\nDate: <%=ticket.getEventDate()%>\nTime: <%=ticket.getEventTime()%>\n`,
                width: 100,
                height: 100
            });
        }





        function downloadPDF() {
            // Generate QR code first
            generateQRCode();

            // Get the HTML element to be converted to PDF
            var element = document.getElementById("invoiceContent");

            // Use html2pdf library to generate PDF
            html2pdf(element, {
                margin: 4,
                filename: '<%= ticket.getFirstName() %>_invoice.pdf',
                image: { type: 'jpeg', quality: 1 },
                html2canvas: { scale: 2 },
                jsPDF: { unit: 'mm', format: 'a4', orientation: 'portrait' }
            }).then(function (pdf) {
                // Save the PDF on the server (you need to implement this on the server side)
                savePDFOnServer(pdf.output('blob'));
            });
        }

            function savePDFOnServer(pdfBlob) {
                // Create a new XMLHttpRequest
                var xhr = new XMLHttpRequest();

                // Specify the server-side script that handles saving the PDF (replace 'save_pdf.jsp' with the correct URL)
                xhr.open('POST', 'save_pdf.jsp', true);

                // Set the request header for the PDF content
                xhr.setRequestHeader('Content-Type', 'application/pdf');

                // Send the PDF blob to the server
                xhr.send(pdfBlob);

                // Handle the server response
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4) {
                        // Check for a successful response (status 200)
                        if (xhr.status == 200) {
                            // Optionally handle the server response
                            console.log('PDF saved successfully on the server.');
                        } else {
                            // Handle errors or unexpected responses
                            console.error('Error saving PDF on the server. Status:', xhr.status);
                        }
                    }
                };
            }
            generateQRCode();
        </script>


        <%
          } else {
                        // No record found for the given order ID
                        System.out.println("No ticket found for ID: " + orderId);
                    }
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                    // Handle exceptions appropriately
                } catch (java.sql.SQLException e) {
                    e.printStackTrace();
                    // Handle exceptions appropriately
                }
            %>
        </c:if>

        <c:if test="${empty cookie.email.value}">
            <c:redirect url="sign_up.jsp" />
        </c:if>

    </body>
    </html>