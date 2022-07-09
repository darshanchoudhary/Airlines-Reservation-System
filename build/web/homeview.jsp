<%@page import="dao.FlightBeen"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- FLIGHT REPORT PAGE FOR USER -->
        <meta charset="ISO-8859-1">
        <title>Flight Report</title>
        <style type="text/css">
            #tickettable{
                margin-top:45px;
                background-color:#ffffff;
            }
        </style>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body class="bg-light">
        <%@ include file = "Navbar.jsp" %>
        <div class="d-flex justify-content-center mt-5">
            <input class="form-control w-50" id="myInput" type="search" placeholder="Search" aria-label="Search">
        </div>
        <table class="table table-hover" id="tickettable">
            <thead>
                <tr >
                    <th scope="col">FLIGHT NO</th>
                    <th scope="col">FLIGHT NAME</th>
                    <th scope="col">FROM CITY</th>
                    <th scope="col">TO CITY</th>
                    <th scope="col">FROM DATE</th>
                    <th scope="col">FROM TIME</th>
                    <th scope="col">RATE<br>(in rupees)</th>
                    <th scope="col">TOTAL TICKET</th>
                    <th scope="col">BOOK TICKET</th>
                </tr>
            </thead>
            <% ArrayList<FlightBeen> al = (ArrayList<FlightBeen>) getServletContext().getAttribute("Data"); %>
            <tbody id="ticketdata">
                <% for (int i = 0; i < al.size(); i++) {
                        FlightBeen fb = (FlightBeen) al.get(i);
                %>  
                <tr class="my-auto">
                    <th scope="row" class="align-middle" ><%=fb.getFlightno()%></th>
                    <td class="align-middle"><%=fb.getFlightname()%></td>
                    <td class="align-middle"><%=fb.getFcity()%></td>
                    <td class="align-middle"><%=fb.getTcity()%></td>
                    <td class="align-middle"><%=fb.getDate1()%></td>
                    <td class="align-middle"><%=fb.getTime()%></td>
                    <td class="align-middle" id="rate" value="<%=fb.getTicketrate()%>"><%=fb.getTicketrate()%></td>
                    <td><p>
                        </p><div class="input-group">
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default btn-number" data-type="minus" data-field="quant[1]" onclick="minusClicked()">
                                    <span class="fa fa-minus"></span>
                                </button>
                            </span>
                            <input type="text" name="quant[1]" id="quantity" class="form-control" style="width:5px;" value="1" min="1" max="5" disabled>
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default btn-number" data-type="plus" data-field="quant[1]" onclick="plusClicked()">
                                    <span class="fa fa-plus"></span>
                                </button>
                            </span>
                        </div>
                        <p></p>
                    </td>
                    <td class="align-middle"><a href="TicketBook?id=<%=fb.getId()%>"><button class="btn btn-primary">BOOK</button></a></td>
                </tr>
                <%}%>
            </tbody>
        </table>
        <%@ include file = "Footer.html" %>
        <script src="js/plusminus.js"></script>
        <script>
            $(document).ready(function () {
                $("#myInput").on("keyup", function () {
                    var value = $(this).val().toLowerCase();
                    $("#ticketdata tr").filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                    });
                });
            });
            const rate  = parseInt(document.getElementById("rate").textContent);
            function plusClicked()
            {
                let quantity = parseInt(document.getElementById("quantity").value);
                quantity++;    
                console.log(quantity);
                console.log(rate);
                console.log(typeof(quantity));
                console.log(typeof(rate));
                console.log(rate *quantity);
                document.getElementById("rate").innerHTML = rate *quantity;
            }
            function minusClicked()
            {
                let quantity = parseInt(document.getElementById("quantity").value);
                quantity--;    
                console.log(quantity);
                console.log(rate);
                console.log(typeof(quantity));
                console.log(typeof(rate));
                console.log(rate *quantity);
                document.getElementById("rate").innerHTML = rate *quantity;
            }
        </script>
    </body>
</html>