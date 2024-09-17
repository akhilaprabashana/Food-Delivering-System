package pack2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pack2.restDButil;

@WebServlet("/updaterest")
public class updaterest extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public updaterest() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id2 = request.getParameter("rid");
		String name2 = request.getParameter("rest");
		String rate2 = request.getParameter("rate");
		String loc2 = request.getParameter("loc");
		String con2 = request.getParameter("contact");
		
		boolean isTrue;
		
		isTrue = restDButil.updaterest(id2, name2, rate2, loc2, con2);
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("dashboard.jsp");
			dis1.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
