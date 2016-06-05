import java.sql.*;
public class ConnectionProvider
{
        public static final String DB_DRIVER = "com.mysql.jdbc.Driver";
	public static final String DB_URL = "jdbc:mysql://localhost:3306/Trendz";
	public static final String USER = "root";
	public static final String PASS = null;
	//private static final Provider DB_SPECS = new Provider();
	private static Connection conn = null;
	/*static
	{
		
	}*/
	public static Connection getConn()
	{
            try
		{
			Class.forName(DB_DRIVER);
			conn = DriverManager.getConnection(DB_URL,USER,PASS);
		}
		catch(Exception e)
		{
                    System.out.println(e);
                
                }
		return conn;
	}
}