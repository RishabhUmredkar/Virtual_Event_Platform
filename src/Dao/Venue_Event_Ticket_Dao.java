package Dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import Model.OnlineEvent;
import Model.OnlineOrderDetails;
import Model.RegisterUser;
import Model.VenueEvent;
import Model.VenueOrderDetails;

public class Venue_Event_Ticket_Dao
{
	
	String url = "jdbc:mysql://localhost:3306/Virtual_Event_platform";
	String uname = "root";
	String upass = "abc123";
	String driver = "com.mysql.cj.jdbc.Driver";
	Connection con;
	
	private Connection getconnect() throws ClassNotFoundException, SQLException
	{
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url,uname,upass);
		return con;
	}
	
	
	public int insert(VenueOrderDetails ticket) throws ClassNotFoundException, SQLException 
	{
	    String sql = "INSERT INTO Virtual_Event_platform.VenueEventTicketBook (" +
	            "first_name, last_name, email, address, country, state, city, pin_code, " +
	            "event_image, event_name, event_category, event_date, event_time, event_duration, " +
	            "event_description, event_address1, event_address2, event_city, event_state, " +
	            "event_country, event_pin_code, price, quantity,total) " +
	            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?, ?, ?)";

	    con = getconnect();
	    PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

	    ps.setString(1, ticket.getFirstName());
	    ps.setString(2, ticket.getLastName());
	    ps.setString(3, ticket.getEmail());
	    ps.setString(4, ticket.getAddress());
	    ps.setString(5, ticket.getCountry());
	    ps.setString(6, ticket.getState());
	    ps.setString(7, ticket.getCity());
	    ps.setInt(8, ticket.getPinCode());
	    ps.setString(9, ticket.getEventImage());
	    ps.setString(10, ticket.getEventName());
	    ps.setString(11, ticket.getEventCategory());
	    ps.setDate(12, new java.sql.Date(ticket.getEventDate().getTime()));
	    ps.setTime(13, ticket.getEventTime());
	    ps.setInt(14, ticket.getEventDuration());
	    ps.setString(15, ticket.getEventDescription());
	    ps.setString(16, ticket.getEventAddress1());
	    ps.setString(17, ticket.getEventAddress2());
	    ps.setString(18, ticket.getEventCity());
	    ps.setString(19, ticket.getEventState());
	    ps.setString(20, ticket.getEventCountry());
	    ps.setString(21, ticket.getEventPinCode());
	    ps.setInt(22, ticket.getPrice());
	    ps.setInt(23, ticket.getQuantity());
	    ps.setInt(24, ticket.getTotal());

	    int result = ps.executeUpdate();

	    ResultSet generatedKeys = ps.getGeneratedKeys();
	    if (generatedKeys.next()) {
	        int orderId = generatedKeys.getInt(1);
	        ticket.setId(orderId);  // Set the generated ID in the VenueOrderDetails object
	    }

	    con.close();

	    return result;
	}


	 public int insertnew(VenueOrderDetails ticket, Integer id) throws ClassNotFoundException, SQLException 
	 {
	        String sql = "INSERT INTO Virtual_Event_platform.VenueEventTicketBook (" +
	                "address, id, country, state, city, pin_code, event_card_number, " +
	                "expiry_date, cvv) " +
	                "VALUES (?, ?, ?, ?, ?, ?, ?,?, ?) " +
	                "ON DUPLICATE KEY UPDATE " +
	                "address = VALUES(address), country = VALUES(country), state = VALUES(state), " +
	                "city = VALUES(city), pin_code = VALUES(pin_code), event_card_number = VALUES(event_card_number), " +
	                "expiry_date = VALUES(expiry_date), cvv = VALUES(cvv)";

	        Connection con = getconnect();  // Assuming getconnect() method is available

	        try (PreparedStatement ps = con.prepareStatement(sql)) {
	            ps.setString(1, ticket.getAddress());
	            ps.setInt(2, id);
	            ps.setString(3, ticket.getCountry());
	            ps.setString(4, ticket.getState());
	            ps.setString(5, ticket.getCity());
	            ps.setInt(6, ticket.getPinCode());
	            ps.setString(7, ticket.getEventCardNumber());
	            ps.setDate(8, new java.sql.Date(ticket.getEventExpiryDate().getTime()));
	            ps.setInt(9, ticket.getCvv());
	            // Set other parameters as needed
	        
	            return ps.executeUpdate();
	        } finally {
	            con.close();
	        }
	    }
	 
	 
	 
	 public VenueOrderDetails getTicketById(int orderId) throws ClassNotFoundException, SQLException 
	 {
		    String sql = "SELECT * FROM Virtual_Event_platform.VenueEventTicketBook WHERE id = ?";
		    
		    try (Connection con = getconnect();
		         PreparedStatement ps = con.prepareStatement(sql)) {

		        ps.setInt(1, orderId);
		        ResultSet rs = ps.executeQuery();
		        if (rs.next()) {
		            VenueOrderDetails ticket = new VenueOrderDetails();
		            ticket.setId(rs.getInt("id"));
		            ticket.setFirstName(rs.getString("first_name"));
		            ticket.setLastName(rs.getString("last_name"));
		            ticket.setEmail(rs.getString("email"));
		            ticket.setAddress(rs.getString("address"));
		            ticket.setCountry(rs.getString("country"));
		            ticket.setState(rs.getString("state"));
		            ticket.setCity(rs.getString("city"));
		            ticket.setPinCode(rs.getInt("pin_code"));
		            ticket.setEventImage(rs.getString("event_image"));
		            ticket.setEventName(rs.getString("event_name"));
		            ticket.setEventCategory(rs.getString("event_category"));
		            ticket.setEventDate(rs.getDate("event_date"));
		            ticket.setEventTime(rs.getTime("event_time"));
		            ticket.setEventDuration(rs.getInt("event_duration"));
		            ticket.setEventDescription(rs.getString("event_description"));
		            ticket.setPrice(rs.getInt("price"));
		            ticket.setQuantity(rs.getInt("quantity"));
		            ticket.setTotal(rs.getInt("total"));

		            ticket.setEventCardNumber(rs.getString("event_card_number"));
		            ticket.setEventExpiryDate(rs.getDate("expiry_date"));
		            ticket.setCvv(rs.getInt("cvv"));

		            return ticket;
		        } else {
		            return null;  // No record found for the given ID
		        }
		    }
		}
	 
	 public List<VenueOrderDetails> getOneUser(String email) throws ClassNotFoundException, SQLException
	 {
		    String sql = "SELECT * FROM Virtual_Event_platform.VenueEventTicketBook WHERE email = ?";
		    con = getconnect();
		    PreparedStatement pstmt = con.prepareStatement(sql);
		    pstmt.setString(1, email);
		    ResultSet rs = pstmt.executeQuery();

		    List<VenueOrderDetails> le = new ArrayList<>();

		    while (rs.next()) {
		    	VenueOrderDetails e = new VenueOrderDetails(
		    		    rs.getInt("id"), rs.getString("first_name"),
		    		    rs.getString("last_name"), rs.getString("email"),
		    		    rs.getString("address"), rs.getString("country"),
		    		    rs.getString("state"), rs.getString("city"),
		    		    rs.getInt("pin_code"), rs.getString("event_image"),
		    		    rs.getString("event_name"), rs.getString("event_category"),
		    		    rs.getDate("event_date"), rs.getTime("event_time"),
		    		    rs.getInt("event_duration"), rs.getString("event_description"),
		    		    rs.getString("event_address1"), rs.getString("event_address2"),
		    		    rs.getString("event_city"), rs.getString("event_state"),
		    		    rs.getString("event_country"), rs.getString("event_pin_code"),
		    		    rs.getInt("price"),rs.getInt("quantity"), rs.getInt("total"),
		    		    rs.getString("event_card_number"), rs.getDate("expiry_date"), rs.getInt("cvv"));
		    			
		        le.add(e);
		    }

		    return le;
		}
	 
	    public List<VenueOrderDetails> getAllData() throws ClassNotFoundException, SQLException 
	    {
	        String sql = "SELECT * FROM Virtual_Event_platform.VenueEventTicketBook";

	        try (Connection con = getconnect();
	             Statement stmt = con.createStatement()) {

	            ResultSet rs = stmt.executeQuery(sql);

	            List<VenueOrderDetails> allDataList = new ArrayList<>();

	            while (rs.next()) {
	                VenueOrderDetails ticket = new VenueOrderDetails();
	                ticket.setId(rs.getInt("id"));
	                ticket.setFirstName(rs.getString("first_name"));
	                ticket.setLastName(rs.getString("last_name"));
	                ticket.setEmail(rs.getString("email"));
	                ticket.setAddress(rs.getString("address"));
	                ticket.setCountry(rs.getString("country"));
	                ticket.setState(rs.getString("state"));
	                ticket.setCity(rs.getString("city"));
	                ticket.setPinCode(rs.getInt("pin_code"));
	                ticket.setEventImage(rs.getString("event_image"));
	                ticket.setEventName(rs.getString("event_name"));
	                ticket.setEventCategory(rs.getString("event_category"));
	                ticket.setEventDate(rs.getDate("event_date"));
	                ticket.setEventTime(rs.getTime("event_time"));
	                ticket.setEventDuration(rs.getInt("event_duration"));
	                ticket.setEventDescription(rs.getString("event_description"));
	                ticket.setEventAddress1(rs.getString("event_address1"));
	                ticket.setEventAddress2(rs.getString("event_address2"));
	                ticket.setEventCity(rs.getString("event_city"));
	                ticket.setEventState(rs.getString("event_state"));
	                ticket.setEventCountry(rs.getString("event_country"));
	                ticket.setEventPinCode(rs.getString("event_pin_code"));
	                ticket.setPrice(rs.getInt("price"));
	                ticket.setQuantity(rs.getInt("quantity"));
	                ticket.setTotal(rs.getInt("total"));

	                ticket.setEventCardNumber(rs.getString("event_card_number"));
	                ticket.setEventExpiryDate(rs.getDate("expiry_date"));
	                ticket.setCvv(rs.getInt("cvv"));
	                // Set other properties as needed

	                allDataList.add(ticket);
	            }
	            return allDataList;
	        }
	    }
}