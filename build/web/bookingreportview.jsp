<%@page import="dao.TicketBeen"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ include file = "adminnavbar.jsp" %>
<html>
    <%            try {
            System.out.println(admin);
            if (session.getAttribute("admin") == null) {
                response.sendRedirect("login.jsp");
            } else {
    %>
    <head>
        <!-- 1.BOOKING REPORT OF USER SEE THE ADMIN WITH ADMIN PAGE   -->
        <meta charset="ISO-8859-1">
        <title>Booking Report</title>
        <style type="text/css">
            #tickettable{
                margin-top:45px;
            }
            .table{
                background-color: #ffffff;
            }
        </style>
    </head>
    <body class="bg-light">
        <div class="d-flex justify-content-center mt-5">
            <input class="form-control w-50" id="myInput" type="search" placeholder="Search" aria-label="Search">
        </div>
        <table  class="table table-hover" id="tickettable">
            <thead>
                <tr>
                    <th scope="col">FLIGHT NO</th>
                    <th scope="col">FLIGHT NAME</th>
                    <th scope="col">FROM CITY</th>
                    <th scope="col">TO CITY</th>
                    <th scope="col">FROM DATE</th>
                    <th scope="col">FROM TIME</th>
                    <th scope="col">NAME</th>
                    <th scope="col">GENDER</th>
                    <th scope="col">AADHAR</th>
                    <th scope="col">MOBILE</th>
                    <th scope="col" style="text-align: center">EMAIL</th>
                    <th scope="col">ADDRESS</th>
                    <th scope="col">RATE<br>(in rupees)</th>
                </tr>
            </thead>
            <% ArrayList<TicketBeen> al = (ArrayList<TicketBeen>) getServletContext().getAttribute("Data"); %>
            <tbody  id="ticketdata">
                <% for (int i = 0; i < al.size(); i++) {
                        TicketBeen tb = (TicketBeen) al.get(i);
                %>  
                <tr>
                    <th scope="row" ><%=tb.getFlightno()%></th>
                    <td><%=tb.getFlightname()%></td>
                    <td><%=tb.getFcity()%></td>
                    <td><%=tb.getTcity()%></td>
                    <td><%=tb.getDate1()%></td>
                    <td><%=tb.getTime()%></td>
                    <td><%=tb.getName()%></td>
                    <td><%=tb.getGender()%></td>
                    <td><%=tb.getAadharno()%></td>
                    <td><%=tb.getMobile()%></td>
                    <td><%=tb.getEmail()%></td>
                    <td><%=tb.getAddress()%></td>
                    <td><%=tb.getTicketrate()%></td>
                </tr>
                <%}%>
            </tbody>
        </table>
            <%@ include file = "Relativefooter.html" %>
    </body>
    <%
            }
        } catch (Exception e) {
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
            rd.forward(request, response);
        }
    %>
    <script>
        $(document).ready(function () {
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#ticketdata tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                });
            });
        });
    </script>
</html>