    import java.io.IOException;  
    import java.io.PrintWriter;  
      
    import javax.servlet.RequestDispatcher;  
    import javax.servlet.ServletException;  
    import javax.servlet.http.HttpServlet;  
    import javax.servlet.http.HttpServletRequest;  
    import javax.servlet.http.HttpServletResponse;  
      
      
    public class Login1 extends HttpServlet {  
    public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
      
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
              
        String n=request.getParameter("user");  
        String p=request.getParameter("pass");  
        String state = LoginDAO1.validate(n, p);
        if(state.equals("valid")){  
            request.setAttribute("username",n);
            RequestDispatcher rd=request.getRequestDispatcher("blog.jsp");  
            rd.forward(request,response);  
        }  
        else{  
            //out.print("Sorry username or password error");  
            RequestDispatcher rd=request.getRequestDispatcher("Error.jsp");  
            rd.include(request,response);  
        }
              
        out.close();  
        }  
    }  