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
import Model.RegisterUser;
import Model.VenueEvent;

public class Online_Event_Dao {

	
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
	
	public List<OnlineEvent> getAllEventData() throws ClassNotFoundException, SQLException {
	    String sql = "SELECT * FROM Online_Event ORDER BY event_date ASC"; // Added ORDER BY clause
	    con = getconnect();
	    Statement st = con.createStatement();
	    ResultSet rs = st.executeQuery(sql);

	    List<OnlineEvent> le = new ArrayList<OnlineEvent>();

	    while (rs.next()) {
	        OnlineEvent e = new OnlineEvent(
	                rs.getInt(1),        // id
	                rs.getString(2),     // event_name
	                rs.getString(3),     // event_category
	                rs.getDate(4),       // event_date (assuming it's stored as a Date)
	                rs.getTime(5),       // event_time (assuming it's stored as a Time)
	                rs.getInt(6),        // event_duration
	                rs.getString(7),     // event_image
	                rs.getString(8),     // event_description
	                rs.getString(9),     // event_hosting (you may need to adjust this depending on your data source)
	                rs.getInt(10),       // event_price
	                rs.getInt(11)        // event_total_tickets
	        );

	        le.add(e);
	    }

	    return le;
	}


public List<OnlineEvent> searchUserByEvent(String searchEvent) throws ClassNotFoundException, SQLException {
    String sql = "SELECT * FROM Online_Event WHERE event_name LIKE ?";
    con = getconnect();
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, "%" + searchEvent + "%");
    ResultSet rs = ps.executeQuery();

    List<OnlineEvent> searchResults = new ArrayList<>();
    while (rs.next()) {
    	OnlineEvent event = new OnlineEvent(
    			        rs.getInt(1),        // id
    			        rs.getString(2),     // event_name
    			        rs.getString(3),     // event_category
    			        rs.getDate(4),       // event_date (assuming it's stored as a Date)
    			        rs.getTime(5),       // event_time (assuming it's stored as a Time)
    			        rs.getInt(6),        // event_duration
    			        rs.getString(7),     // event_image
    			        rs.getString(8),     // event_description
    			        null,                // event_hosting (you may need to adjust this depending on your data source)
    			        rs.getInt(10),       // event_price
    			        rs.getInt(11)        // event_total_tickets
    			);
		
        searchResults.add(event);
    }

    rs.close();
    ps.close();
    con.close();

    return searchResults;
}



public List<OnlineEvent> getTodayEventData() throws ClassNotFoundException, SQLException {
    String sql = "SELECT * FROM Online_Event WHERE DATE(event_date) = ? ORDER BY event_date ASC";
    con = getconnect();
    PreparedStatement ps = con.prepareStatement(sql);

    // Set today's date as a parameter
    ps.setDate(1, Date.valueOf(LocalDate.now()));

    ResultSet rs = ps.executeQuery();

    List<OnlineEvent> le = new ArrayList<>();

    while (rs.next()) {
        OnlineEvent e = new OnlineEvent(
                rs.getInt(1),        // id
                rs.getString(2),     // event_name
                rs.getString(3),     // event_category
                rs.getDate(4),       // event_date (assuming it's stored as a Date)
                rs.getTime(5),       // event_time (assuming it's stored as a Time)
                rs.getInt(6),        // event_duration
                rs.getString(7),     // event_image
                rs.getString(8),     // event_description
                rs.getString(9),     // event_hosting (you may need to adjust this depending on your data source)
                rs.getInt(10),       // event_price
                rs.getInt(11)        // event_total_tickets
        );

        le.add(e);
    }

    rs.close();
    ps.close();
    con.close();

    return le;
}




public List<OnlineEvent> getAllEventDataByDate(Date filterDate) throws ClassNotFoundException, SQLException {
    String sql = "SELECT * FROM Online_Event WHERE DATE(event_date) = ? ORDER BY event_date ASC";
    con = getconnect();
    PreparedStatement ps = con.prepareStatement(sql);

    // Set the provided date as a parameter
    ps.setDate(1, filterDate);

    ResultSet rs = ps.executeQuery();

    List<OnlineEvent> le = new ArrayList<>();

    while (rs.next()) {
        OnlineEvent e = new OnlineEvent(
                rs.getInt(1),        // id
                rs.getString(2),     // event_name
                rs.getString(3),     // event_category
                rs.getDate(4),       // event_date (assuming it's stored as a Date)
                rs.getTime(5),       // event_time (assuming it's stored as a Time)
                rs.getInt(6),        // event_duration
                rs.getString(7),     // event_image
                rs.getString(8),     // event_description
                rs.getString(9),     // event_hosting (you may need to adjust this depending on your data source)
                rs.getInt(10),       // event_price
                rs.getInt(11)        // event_total_tickets
        );

        le.add(e);
    }

    rs.close();
    ps.close();
    con.close();

    return le;
}
	
}
