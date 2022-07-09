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

import dao.AdminLoginBeen;
import dao.AdminLoginDao;
import dao.TicketFlightBeen;
import javax.servlet.http.HttpSession;

@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserLogin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String email = request.getParameter("email");
		String pass = request.getParameter("password");	
                AdminLoginBeen fb = new AdminLoginBeen();    
                HttpSession session= request.getSession();
                session.setAttribute("user", email);
                request.setAttribute("loginmsg","success");
		RequestDispatcher rd = request.getRequestDispatcher("userview.jsp");
		rd.forward(request, response);
		
	}

        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminLoginBeen fb = new AdminLoginBeen();
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		fb.setEmail(email);
		fb.setPassword(pass);
                System.out.println(AdminLoginDao.checkUserPassword(fb));		
                boolean f =AdminLoginDao.checkUserPassword(fb);
		PrintWriter out =response.getWriter();
		if(f)
		{
                    doGet(request, response);
		}
		else
		{
                    request.setAttribute("loginmsg","fail");
                    RequestDispatcher rd=request.getRequestDispatcher("userlogin.jsp");  
                    rd.include(request, response);
		}		
	}

}
