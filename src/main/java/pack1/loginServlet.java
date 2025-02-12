package pack1;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public loginServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//catching parameters delivered from form files
		String name3 = request.getParameter("name");
		String password3 = request.getParameter("pass");
		
		try {
			//calling the function
			List<custom> cusdate = functions.validate(name3, password3);
			request.setAttribute("customer",cusdate);
		}
		catch(Exception e) {
			//error handling
			e.printStackTrace();
		}
		
		//redirecting to another page
		RequestDispatcher dis = request.getRequestDispatcher("useracc.jsp");
		dis.forward(request, response);		
	}

}
