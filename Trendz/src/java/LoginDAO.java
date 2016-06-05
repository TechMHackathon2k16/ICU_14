import java.sql.*;
public class LoginDAO
{
	public static String validateConnection(LoginBean bean)
	{
		String status = "";
                ResultSet rs = null;
                Connection conn = null;
		try
		{
			
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Trendz","root","");
                        
                        if(conn!=null){
                            status = status + "1";
			String sql = "select * from master_login where username=? and password=?";
                        status = status + "2";
			PreparedStatement pStmt = conn.prepareStatement(sql);
                        status = status + "3";
			pStmt.setString(1,bean.getUsername());
                        status = status + "4";
			pStmt.setString(2,bean.getPassword());
                        status = status + "5";
			rs = pStmt.executeQuery();
                        status = status + "6";
                        if(!rs.next()){
                            status = status + "no data";
                        }
                        else
                            status = status + "valid login";
                        }
                        else
                        {
                            status = status + "no connection";
                        }
                        rs.close();
                        conn.close();
		}
		catch(Exception e){
                    e.printStackTrace();
                    status = status + e.getMessage();
                }
                return status;
	}
}