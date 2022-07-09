package server;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.FlightBeen;
import dao.FlightDao;

@WebServlet("/FlightUpdate")
public class FlightUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FlightUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		ArrayList<FlightBeen> al = FlightDao.update(id);
		getServletContext().setAttribute("Data", al);
		response.sendRedirect("flightupdate.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		FlightBeen fb = new FlightBeen();
        fb.setFlightno(request.getParameter("flightno"));
        fb.setFlightname(request.getParameter("flightname"));
        fb.setFcity(request.getParameter("fcity"));
        fb.setTcity(request.getParameter("tcity"));
        fb.setDate1(request.getParameter("date"));
        fb.setTime(request.getParameter("time"));
        fb.setTicketrate(Integer.parseInt(request.getParameter("ticketrate")));
        fb.setId(Integer.parseInt(request.getParameter("aid")));
        boolean f = FlightDao.flightUpdate(fb);
        if(f)
        {
            request.setAttribute("flightupdatemsg","success");
            RequestDispatcher rd=request.getRequestDispatcher("Veiw");  
    	    rd.forward(request, response);
        }
        else
        {
            request.setAttribute("flightupdatemsg","fail");
            RequestDispatcher rd=request.getRequestDispatcher("Veiw");  
    	    rd.forward(request, response);
        }
	}

}
