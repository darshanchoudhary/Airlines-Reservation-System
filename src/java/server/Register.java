package server;

import dao.TicketBeen;
import dao.TicketDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        TicketBeen tb = new TicketBeen();
        System.out.println(request.getParameter("name"));
        System.out.println(request.getParameter("aadhar"));
        System.out.println(request.getParameter("mobile"));
        System.out.println(request.getParameter("email"));
        System.out.println(request.getParameter("password"));
        System.out.println(request.getParameter("address"));
        System.out.println(request.getParameter("gender"));
        
        tb.setName(request.getParameter("name"));
        tb.setAadharno(request.getParameter("aadhar"));
        tb.setMobile(request.getParameter("mobile"));
        tb.setEmail(request.getParameter("email"));
        tb.setPassword(request.getParameter("password"));
        tb.setAddress(request.getParameter("address"));
        tb.setGender(request.getParameter("gender"));
        boolean f = TicketDao.saveUser(tb);
        System.out.println(f);
        if (f) {
            request.setAttribute("registermsg", "success");
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
            rd.forward(request, response);
        } else {
            request.setAttribute("registermsg", "fail");
            RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
