package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import Model.VenueEvent;

public class Venue_Event_Dao {

	
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
	

public List<VenueEvent> getAllUserData() throws ClassNotFoundException, SQLException {

	String sql="SELECT * FROM Venue_Event_ticket";
	con = getconnect();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(sql);
	
	List<VenueEvent> le=new ArrayList<VenueEvent>();
	
	
	while(rs.next())
	{
		VenueEvent e = new VenueEvent(
			    rs.getInt(1),        // id
			    rs.getString(2),     // event_name
			    rs.getString(3),     // event_category
			    rs.getDate(4),       // event_date (assuming it's stored as a Date)
			    rs.getTime(5),       // event_time (assuming it's stored as a Time)
			    rs.getInt(6),        // event_duration
			    rs.getString(7),     // event_image
			    rs.getString(8),     // event_description
			    rs.getString(9),     // event_venue
			    rs.getString(10),    // event_address1
			    rs.getString(11),    // event_address2
			    rs.getString(12),    // event_country
			    rs.getString(13),    // event_state
			    rs.getString(14),    // event_city
			    rs.getInt(15),       // event_pin_code
			    rs.getInt(16),       // event_price
			    rs.getInt(17)        // event_total_tickets
			);

		
		
		le.add(e);
	}
	
	
	return le;
}
	
}
