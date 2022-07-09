package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FlightBeen;
import dao.FlightDao;

@WebServlet("/HomeView")
public class HomeView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HomeView() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<FlightBeen> al = FlightDao.select();
		getServletContext().setAttribute("Data", al);
		RequestDispatcher rd = request.getRequestDispatcher("homeview.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
