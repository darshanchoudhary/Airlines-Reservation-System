package server;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TicketBeen;
import dao.TicketDao;

@WebServlet("/ComTicket")
public class ComTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ComTicket() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));		
		TicketBeen tb=TicketDao.comTicket(id);
		getServletContext().setAttribute("Data", tb);
		RequestDispatcher rd = request.getRequestDispatcher("ticket.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
