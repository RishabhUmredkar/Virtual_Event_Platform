package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Model.RegisterUser;

public class UserDao 
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
	
	
	public int insert(RegisterUser u) throws ClassNotFoundException, SQLException 
	{
			String sql = "insert into RegisterUser(first_name, last_name,email,password) values (?,?,?,?)";
			con = getconnect();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, u.getFirst_name());
			ps.setString(2, u.getLast_name());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getPassword());
			
			int a =ps.executeUpdate();
			con.close();
			return a;
		}
		
	public boolean checkUser(RegisterUser u) throws SQLException, ClassNotFoundException 
	{
	    con = getconnect();
	    PreparedStatement ps = con.prepareStatement("SELECT * FROM RegisterUser WHERE email=? and password=?");
	    ps.setString(1, u.getEmail());
	    ps.setString(2, u.getPassword());
	    ResultSet rs = ps.executeQuery();
	
	    boolean hasRows = rs.next(); // Check if there is at least one row in the result set
	
	    rs.close();
	    ps.close();
	    con.close();
	
	    return hasRows;
	}

	public List<RegisterUser> getAllUserData() throws ClassNotFoundException, SQLException 
	{
		String sql="SELECT * FROM RegisterUser";
		con = getconnect();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(sql);
		
		List<RegisterUser> le=new ArrayList<RegisterUser>();
			
		while(rs.next())
		{
			RegisterUser e=new RegisterUser(rs.getInt(1),rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5));		
			le.add(e);
		}
		
		
		return le;
	}
	
	public List<RegisterUser> searchUserByEmail(String email) throws ClassNotFoundException, SQLException
	{
	    String sql = "SELECT * FROM RegisterUser WHERE email LIKE ?";
	    con = getconnect();
	    PreparedStatement ps = con.prepareStatement(sql);
	    ps.setString(1, "%" + email + "%");
	    ResultSet rs = ps.executeQuery();
	
	    List<RegisterUser> searchResults = new ArrayList<>();
	    while (rs.next()) {
	        RegisterUser user = new RegisterUser(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
	        searchResults.add(user);
	    }
	
	    rs.close();
	    ps.close();
	    con.close();
	
	    return searchResults;
	}

	
	public int delete(int id) throws ClassNotFoundException, SQLException 
	{
		Connection con=getconnect();
		PreparedStatement ps=con.prepareStatement("delete from RegisterUser where id=?");
		ps.setInt(1,id);
	
		int a=ps.executeUpdate();
		con.close();
		return  a;
	}


	
	public RegisterUser getOneUser(int id) throws ClassNotFoundException, SQLException
	{
		String sql = "select * from RegisterUser where id=?";
		con = getconnect();
		//PreparedStatement ps = con.prepareStatement(sql);
		// PreparedStatement ps = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
		 PreparedStatement ps = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	
		 ps.setInt(1,id);
		
		ResultSet rs = ps.executeQuery();
		rs.absolute(1);
		System.out.println("Value of a ="+rs.getString(2));
	    RegisterUser user = new RegisterUser(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
	
		return user;
	}

	
	public RegisterUser getOneUserByEmail(String email) throws ClassNotFoundException, SQLException 
	{
	    String sql = "select * from RegisterUser where email=?";
	    con = getconnect();
	    PreparedStatement ps = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	    ps.setString(1, email);
	
	    ResultSet rs = ps.executeQuery();
	
	    if (rs.next()) {
	        RegisterUser user = new RegisterUser(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
	        return user;
	    } else {
	        // No user found with the given email
	        return null;
	    }
	}

}
