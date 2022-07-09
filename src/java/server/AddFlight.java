package server;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FlightBeen;
import dao.FlightDao;

@WebServlet(name = "AddFlight", urlPatterns = {"/AddFlight"})
public class AddFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddFlight() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
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
        boolean f = FlightDao.insert(fb);
		
        PrintWriter out =response.getWriter();
        if(f)
        { 
            request.setAttribute("flightmsg","success");
            RequestDispatcher rd=request.getRequestDispatcher("Veiw");  
    	    rd.forward(request, response);
        }
        else
        {
            request.setAttribute("flightmsg","fail");
            RequestDispatcher rd=request.getRequestDispatcher("Veiw");  
    	    rd.forward(request, response);
        }
        
		  
	}

}
