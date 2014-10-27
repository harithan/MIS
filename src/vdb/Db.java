package vdb;
import java.sql.*;
public class Db {
public static synchronized Connection connectMysql(String db,String us,String ps) {
	Connection con=null;
	try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://"+db,us,ps);	
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	System.out.println("connection successful");
	return con;
	
}
public static synchronized  Connection connect()
	{
		Connection con=null;
		try{
			String url    =  "jdbc:mysql://192.168.0.174:3306/";
		    String db     =  "manage";
		    String driver =  "com.mysql.jdbc.Driver";
		    String user   =  "root";
		    String pass   =  "root";
		      Class.forName(driver).newInstance();
		      con = DriverManager.getConnection(url+db, user, pass);
	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
public static synchronized Connection connect(String driver,String url,String us,String ps) {
	Connection con=null;
	try{
	Class.forName(driver);
	con=DriverManager.getConnection(url,us,ps);	
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	System.out.println("connection successful");
	return con;
}
public static synchronized Connection connectOracle(String db,String us,String ps) {
	Connection con=null;
	try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@"+db,us,ps);	
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	System.out.println("connection successful");
	return con;
}
public static synchronized ResultSet getTable(Connection con,String tablename)
{
	ResultSet rs=null;
	try
	{
	PreparedStatement pst=con.prepareStatement("select * from "+tablename);
	rs=pst.executeQuery();
	
	}
	catch (Exception e) 
	{
		System.out.println(e);
	}
	System.out.println("table retrieved successfully");
	return rs;
}
public static synchronized ResultSet getSelected(Connection con,String query)
{
	ResultSet rs=null;
	try
	{
	PreparedStatement pst=con.prepareStatement(query);
	rs=pst.executeQuery();
	
	}
	catch (Exception e) 
	{
		System.out.println(e);
	}
	System.out.println("Rows retrieved successfully");
	return rs;
}
}
