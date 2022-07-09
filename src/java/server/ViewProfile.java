package server;

import dao.UserBeen;
import dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ViewProfile", urlPatterns = {"/ViewProfile"})
public class ViewProfile extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String user = session.getAttribute("user").toString();
        System.out.println(user);
        UserBeen ub = UserDao.getUser(user);
        getServletContext().setAttribute("Data", ub);
        RequestDispatcher rd = request.getRequestDispatcher("ViewProfile.jsp");
        rd.forward(request, response);
    }

@Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
        public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
