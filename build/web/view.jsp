<%@page import="java.text.SimpleDateFormat"%>
<%@page import="dao.FlightBeen"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ include file = "adminnavbar.jsp" %>
<!DOCTYPE html>
<html>
    <%        try {
            System.out.println(admin);
            if (session.getAttribute("admin") == null) {
                response.sendRedirect("login.jsp");
            } else {
    %>
    <head>
        <!--	1.YOU CAN SEE ALL FLIGHT
                        2.FLIGHT REPORTING OF ADD FLIGHT FOR ADMIN  -->
        <meta charset="ISO-8859-1">
        <title>ALL FLIGHT</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style type="text/css">
            #tickettable{
                margin-top:45px;
                background-color: #ffffff;
            }
        </style>
    </head>
        <%
        String flightmsg="";
            if (request.getAttribute("flightmsg") != null) {
                flightmsg = request.getAttribute("flightmsg").toString();
                if (flightmsg == "success") {
        %>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Flight Added successfully</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true" script="$().alert('close')">&times;</span>
            </button>
        </div>
        <%
            }
            else if(flightmsg == "fail"){
        %>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Something went wrong try again later</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true" script="$().alert('close')">&times;</span>
            </button>
        </div>
        <%
            }
        }
            String flightupdatemsg="";
            if (request.getAttribute("flightupdatemsg") != null) {
                flightupdatemsg = request.getAttribute("flightupdatemsg").toString();
                if (flightupdatemsg == "success") {
        %>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Flight details updated successfully</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true" script="$().alert('close')">&times;</span>
            </button>
        </div>
        <%
            }
            else if(flightupdatemsg == "fail"){
        %>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Something went wrong try again later</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true" script="$().alert('close')">&times;</span>
            </button>
        </div>
        <%
            }
        }
        %>
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
                    <th scope="col">RATE<br>(in rupees)</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <% ArrayList<FlightBeen> al = (ArrayList<FlightBeen>) getServletContext().getAttribute("Data"); %>
            <tbody id="ticketdata">
                <% for (int i = 0; i < al.size(); i++) {
                        FlightBeen fb = (FlightBeen) al.get(i);
                %>  
                <tr >
                    <th scope="row" ><%=fb.getFlightno()%></th>
                    <td><%=fb.getFlightname()%></td>
                    <td><%=fb.getFcity()%></td>
                    <td><%=fb.getTcity()%></td>
                    <td><%=fb.getDate1()%></td>
                    <%
                        //SimpleDateFormat formatTime = new SimpleDateFormat("hh.mm aa");
                        //System.out.println(formatTime);
                        //String time = formatTime.format(fb.getDate1()+" "+fb.getTime());
                        //System.out.println(time);
                    %>
                    <td><%=fb.getTime()%></td>
                    <td><%=fb.getTicketrate()%></td>
                    <td><a href = "FlightDelete?id=<%=fb.getId()%>" onclick="return confirm('Are You Sure')"><i data-toggle="tooltip" data-placement="top" title="Delete" class="fa fa-trash" aria-hidden="true"></i></a>
                        &nbsp;
                        <a href ="FlightUpdate?id=<%=fb.getId()%>" ><i data-toggle="tooltip" data-placement="top" title="Edit" class="fa fa-pencil" aria-hidden="true"></i></a></td>
                </tr>
                <%}%>
            </tbody>
        </table>
        <%@ include file = "Footer.html" %>
    </body>
    <script>
        $(document).ready(function () {
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#ticketdata tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                });
            });
        });

        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })
    </script>  
    <%
            }
        } catch (Exception e) {
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
            rd.forward(request, response);
        }
    %>
</html>