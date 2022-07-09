package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TicketBeen;
import dao.TicketDao;

@WebServlet("/BookingReportView")
public class BookingReportView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BookingReportView() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<TicketBeen> al = TicketDao.select();
		getServletContext().setAttribute("Data", al);
		RequestDispatcher rd = request.getRequestDispatcher("bookingreportview.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
