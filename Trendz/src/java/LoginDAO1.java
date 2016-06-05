    import java.sql.*;  
      
    public class LoginDAO1 {  
    public static String validate(String name,String pass){  
    String status="";  
    try{  
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Trendz","root","");  
          
    PreparedStatement ps= con.prepareStatement("select * from master_login where username=? and password=?;");  
    ps.setString(1,name);  
    ps.setString(2,pass);  
          
    ResultSet rs=ps.executeQuery();  
    //rs.next();
    if(!rs.next()){
        status = "no data";
    }  
    else 
        status = "valid";
     rs.close();
     ps.close();
     con.close();
    }
    catch(ClassNotFoundException cnf){
        System.out.println(cnf);
    }
    catch(SQLException sql){
        System.out.println(sql);
    }
    catch(Exception e){System.out.println(e);
    System.out.println(e);
    }  
    return status;
    }
}