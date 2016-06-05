import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class LoginServlet extends HttpServlet
{
	String username, password;
	LoginBean bean = new LoginBean();
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		username = request.getParameter("user");
		password = request.getParameter("pass");
		bean.setUsername(username);
		bean.setPassword(password);
                
		String userValid = LoginDAO.validateConnection(bean);
		PrintWriter out = response.getWriter();
                
                out.println(userValid);
                /*
		if(userValid)
		{
			request.setAttribute("user",username);
			request.getRequestDispatcher("LoggedIn.jsp").forward(request,response);
		}
		else
		{
			//request.setAttribute("userType",userType);
			request.getRequestDispatcher("Error.jsp").forward(request,response);
		}
                
                */
		
	}
}