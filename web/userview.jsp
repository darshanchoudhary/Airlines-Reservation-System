<%@page import="dao.AdminLoginDao"%>
<%@page import="dao.TicketFlightBeen"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <!--1.SHOW ALL TICKET PAGE
                2.SHOW ALL TICKET FOR LOGIN USER AND USER CAN CANCEL AND VIEW THE TICKET  -->
        <meta charset="ISO-8859-1">
        <title>ALL TICKETS</title>

        <style>
            .center {
                padding: 200px 0;
                text-align: center;
            }
            #tickettable{
                margin-top:45px;
                background-color: #ffffff;
            }
        </style>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">       

    </head>
    <body class="bg-light">
        <%@ include file = "Navbar.jsp" %>
        <%            String loginmsg = "";
            if (request.getAttribute("loginmsg") != null) {
                loginmsg = request.getAttribute("loginmsg").toString();
                if (loginmsg == "success") {
        %>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>You logged in successfully</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true" script="$().alert('close')">&times;</span>
            </button>
        </div>
        <%
                }
            }
            ArrayList<TicketFlightBeen> al =AdminLoginDao.showUserLogin(user);
            if (al.size()==0) {
        %>
        <div class="center">
            You didn't booked any flight yet please book the flight first
        </div>
        <%
        } else {
            //al = (ArrayList<TicketFlightBeen>) getServletContext().getAttribute("TicketFlightData");
        %>
        <table class="table table-hover" id="tickettable">
            <thead>
                <tr>
                    <th scope="col">Flight No</th>
                    <th scope="col">Flight Name</th>
                    <th scope="col">From City</th>
                    <th scope="col">To City</th>
                    <th scope="col">From Date</th>
                    <th scope="col">From Time</th>
                    <th scope="col">Name</th>
                    <th scope="col">Gender</th>
                    <!--<th scope="col">Aadhar No</th>-->
                    <th scope="col">Mobile</th>
                    <th scope="col" style="text-align: center">Email</th>
                    <th scope="col">Address</th>
                    <th scope="col">Rate(Rs.)</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>

            <tbody>
                <% for (int i = 0; i < al.size(); i++) {
                        TicketFlightBeen tb = (TicketFlightBeen) al.get(i);
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
                    <!--<td><%=tb.getAadharno()%></td>-->
                    <td><%=tb.getMobile()%></td>
                    <td><%=tb.getEmail()%></td>
                    <td><%=tb.getAddress()%></td>
                    <td><%=tb.getTicketrate()%></td>
                    <td><a href="CancelTicket?id=<%=tb.getTid()%>"><i data-toggle="tooltip" data-placement="top" title="Delete" class="fa fa-trash" aria-hidden="true"></i></a>
                        &nbsp;
                        <a href="ComTicket?id=<%=tb.getTid()%>"><i data-toggle="tooltip" data-placement="top" title="View" class="fa fa-eye" aria-hidden="true"></i></a></td>
                </tr>
            </tbody>
        </table>
        <%
                }
            }
        %>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script>
            $(function () {
                $('[data-toggle="tooltip"]').tooltip()
            })
        </script>
        <%@ include file = "Footer.html" %>
    </body>
</html>