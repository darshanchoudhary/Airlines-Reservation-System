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
import dao.TicketBeen;
import dao.TicketDao;
import javax.servlet.http.HttpSession;

@WebServlet("/TicketBook")
public class TicketBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TicketBook() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int id = Integer.parseInt(request.getParameter("id"));
//		ArrayList<FlightBeen> al = FlightDao.update(id);
//		getServletContext().setAttribute("Data", al);
//		RequestDispatcher rd = request.getRequestDispatcher("ticketbook.jsp");
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TicketBeen tb = new TicketBeen();
//		tb.setName(request.getParameter("name"));
//		tb.setAadharno(request.getParameter("aadhar"));
//		tb.setMobile(request.getParameter("mobile"));
//		tb.setEmail(request.getParameter("email"));
//                tb.setPassword(request.getParameter("password"));
//		tb.setAddress(request.getParameter("address"));
//		tb.setGender(request.getParameter("gender"));
                int aid = (Integer.parseInt(request.getParameter("id")));
                String user= "";
                HttpSession session = request.getSession();
                if(session.getAttribute("user") != null)
                {
                    user = session.getAttribute("user").toString();
                    boolean f = TicketDao.bookTicket(user,aid);
                    if(f==true)
                    {
                        request.setAttribute("usermsg","success");
                        RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
                        rd.forward(request, response);
                    }
                    else{
                        request.setAttribute("usermsg","already");
                        RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
                        rd.forward(request, response);
                    } 
                }
                else
                {
                    request.setAttribute("usermsg","fail");
                    RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
                    rd.forward(request, response);
                }
		//int aid = Integer.parseInt(request.getParameter("aid"));
            //boolean f = TicketDao.bookTicket(user,2);
//            if(f)
//                { 
//                    request.setAttribute("registermsg","success");
//                    RequestDispatcher rd=request.getRequestDispatcher("home.jsp");  
//                    rd.forward(request, response);
//                }
//                else
//                {
//                    request.setAttribute("registermsg","fail");
//                    RequestDispatcher rd = request.getRequestDispatcher("ticketbook.jsp");
//                    rd.forward(request, response);
//                }
	}
}
