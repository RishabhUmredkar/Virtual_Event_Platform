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

public class Online_Event_Ticket_Dao {

	
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
	
	
	public int insert(OnlineOrderDetails ticket) throws ClassNotFoundException, SQLException {
	    String sql = "INSERT INTO Virtual_Event_platform.OnlineEventTicketBook (" +
	            "first_name, last_name, email, address, country, state, city, pin_code, " +
	            "event_image, event_name, event_category, event_date, event_time, event_duration, " +
	            "event_description, event_host, quantity, total) " +
	            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

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
	    ps.setString(16, ticket.getEventHost());
	    ps.setInt(17, ticket.getQuantity());
	    ps.setInt(18, ticket.getTotal());
	    
	    int result = ps.executeUpdate();

	    ResultSet generatedKeys = ps.getGeneratedKeys();
	    if (generatedKeys.next()) {
	        int orderId = generatedKeys.getInt(1);
	        ticket.setId(orderId);  // Set the generated ID in the OnlineOrderDetails object
	    }

	    con.close();

	    return result;
	}

	 public int insertnew(OnlineOrderDetails ticket, Integer id) throws ClassNotFoundException, SQLException {
	        String sql = "INSERT INTO Virtual_Event_platform.OnlineEventTicketBook (" +
	                "address, id, country, state, city, pin_code, card_number, " +
	                "expiry_date, cvv) " +
	                "VALUES (?, ?, ?, ?, ?, ?, ?,?, ?) " +
	                "ON DUPLICATE KEY UPDATE " +
	                "address = VALUES(address), country = VALUES(country), state = VALUES(state), " +
	                "city = VALUES(city), pin_code = VALUES(pin_code), card_number = VALUES(card_number), " +
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
	}