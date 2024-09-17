package pack2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pack2.restDButil;

@WebServlet("/insertrest")
public class insertrest extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public insertrest() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name1 = request.getParameter("rest");
		String rate1 = request.getParameter("rate");
		String loc1 = request.getParameter("loc");
		String con1 = request.getParameter("contact");
		
		boolean isTrue;
		
		isTrue = restDButil.insertrest(name1, rate1, loc1, con1);
		
		if(isTrue == false) {
			RequestDispatcher dis = request.getRequestDispatcher("insertrest.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		
	}

}
}
