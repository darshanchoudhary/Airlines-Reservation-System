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
import javax.servlet.http.HttpSession;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminLogin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<AdminLoginBeen> al = AdminLoginDao.select();
		AdminLoginBeen fb =al.get(0);
		 PrintWriter out =response.getWriter();
                try{
                    HttpSession session = request.getSession();
                    String user = request.getParameter("username");
                    String password = request.getParameter("password");
                   if((fb.getEmail().equals(user))&&(fb.getPassword().equals(password)))
                    {
                        session.setAttribute("admin",user);
                        session.setAttribute("adminmsg", "success");
                        response.sendRedirect("adminhome.jsp");
                    }
                    else
                    {
                        session.setAttribute("adminmsg", "fail");
                        response.sendRedirect("login.jsp");
                        out.print("<script>alert('Invalid Password')</script>");
                    }
                }
		catch(Exception ex)
		{
                    System.out.println(ex.getMessage());
                    RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
                    rd.include(request, response);
                    out.print("<script>alert('Unauthorised User')</script>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
