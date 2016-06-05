    import java.sql.*;  
      
    public class Signup {  
    public static String validate(String name,String pass){  
    String status="";  
    try{  
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Trendz","root","");  
    String sql = "insert into master_login value("+"\""+name+"\""+","+"\""+pass+"\")";
    Statement ps= con.createStatement();  
          
   ResultSet rs=ps.executeQuery(sql);  
    //rs.next();
    
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