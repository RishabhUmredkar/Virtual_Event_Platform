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

    public Connection getConnect() throws ClassNotFoundException, SQLException {
        Class.forName(driver);
        return DriverManager.getConnection(url, uname, upass);
    }

    public List<VenueEvent> getAllEventData() {
        String sql = "SELECT * FROM Venue_Event_ticket ORDER BY event_date ASC";
        List<VenueEvent> eventList = new ArrayList<>();

        try (Connection connection = getConnect();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {

            while (resultSet.next()) {
                VenueEvent event = new VenueEvent(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getDate(4),
                        resultSet.getTime(5),
                        resultSet.getInt(6),
                        resultSet.getString(7),
                        resultSet.getString(8),
                        resultSet.getString(9),
                        resultSet.getString(10),
                        resultSet.getString(11),
                        resultSet.getString(12),
                        resultSet.getString(13),
                        resultSet.getString(14),
                        resultSet.getInt(15),
                        resultSet.getInt(16),
                        resultSet.getInt(17)
                );

                eventList.add(event);
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // Handle the exception appropriately
        }

        return eventList;
    }

    public List<VenueEvent> searchEventByName(String searchEvent) {
        String sql = "SELECT * FROM Venue_Event_ticket WHERE event_name LIKE ?";
        List<VenueEvent> searchResults = new ArrayList<>();

        try (Connection connection = getConnect();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setString(1, "%" + searchEvent + "%");

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    VenueEvent event = new VenueEvent(
                            resultSet.getInt(1),
                            resultSet.getString(2),
                            resultSet.getString(3),
                            resultSet.getDate(4),
                            resultSet.getTime(5),
                            resultSet.getInt(6),
                            resultSet.getString(7),
                            resultSet.getString(8),
                            resultSet.getString(9),
                            resultSet.getString(10),
                            resultSet.getString(11),
                            resultSet.getString(12),
                            resultSet.getString(13),
                            resultSet.getString(14),
                            resultSet.getInt(15),
                            resultSet.getInt(16),
                            resultSet.getInt(17)
                    );

                    searchResults.add(event);
                }
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // Handle the exception appropriately
        }

        return searchResults;
    }
    
    public List<VenueEvent> getTodayEventData() {
        String sql = "SELECT * FROM Venue_Event_ticket WHERE DATE(event_date) = ? ORDER BY event_date ASC";
        List<VenueEvent> le = new ArrayList<>();

        try (Connection con = getConnect();
             PreparedStatement ps = con.prepareStatement(sql)) {

            // Set today's date as a parameter
            ps.setDate(1, java.sql.Date.valueOf(java.time.LocalDate.now()));

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    VenueEvent e = new VenueEvent(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getDate(4),
                            rs.getTime(5),
                            rs.getInt(6),
                            rs.getString(7),
                            rs.getString(8),
                            rs.getString(9),
                            rs.getString(10),
                            rs.getString(11),
                            rs.getString(12),
                            rs.getString(13),
                            rs.getString(14),
                            rs.getInt(15),
                            rs.getInt(16),
                            rs.getInt(17)
                    );

                    le.add(e);
                }
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // Handle the exception appropriately
        }

        return le;
    }

    

    public List<VenueEvent> getAllEventDataByDate(java.sql.Date filterDate) {
        String sql = "SELECT * FROM Venue_Event_ticket WHERE DATE(event_date) = ? ORDER BY event_date ASC";
        List<VenueEvent> le = new ArrayList<>();

        try (Connection con = getConnect();
             PreparedStatement ps = con.prepareStatement(sql)) {

            // Set the provided date as a parameter
            ps.setDate(1, filterDate);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    VenueEvent e = new VenueEvent(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getDate(4),
                            rs.getTime(5),
                            rs.getInt(6),
                            rs.getString(7),
                            rs.getString(8),
                            rs.getString(9),
                            rs.getString(10),
                            rs.getString(11),
                            rs.getString(12),
                            rs.getString(13),
                            rs.getString(14),
                            rs.getInt(15),
                            rs.getInt(16),
                            rs.getInt(17)
                    );

                    le.add(e);
                }
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // Handle the exception appropriately
        }

        return le;
    }
    
    public VenueEvent getOneEvent(int eventId) {
        String sql = "SELECT * FROM Venue_Event_ticket WHERE id = ?";
        VenueEvent event = null;

        try (Connection con = getConnect();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, eventId);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    event = new VenueEvent(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getDate(4),
                            rs.getTime(5),
                            rs.getInt(6),
                            rs.getString(7),
                            rs.getString(8),
                            rs.getString(9),
                            rs.getString(10),
                            rs.getString(11),
                            rs.getString(12),
                            rs.getString(13),
                            rs.getString(14),
                            rs.getInt(15),
                            rs.getInt(16),
                            rs.getInt(17)
                    );
                }
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // Handle the exception appropriately
        }

        return event;
    }

}
