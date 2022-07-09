<%@page import="dao.FlightDao"%>
<%@page import="dao.FlightBeen"%>
<%@page import="java.util.ArrayList"%>
<style type="text/css">
    #tickettable{
        margin-top:45px;
    }
    .table{
        background-color: #ffffff;
    }
</style>
<%
    String from = request.getParameter("fromcity");
    String to = request.getParameter("tocity");
    ArrayList<FlightBeen> al = (ArrayList<FlightBeen>) FlightDao.searchFlight(from, to);
    if (al.isEmpty()) {
%>                
<div class="alert alert-danger alert-dismissible fade show mt-2" role="alert">
    <strong>No Flight Found for this route</strong>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true" script="$().alert('close')">&times;</span>
    </button>
</div>
<%
} else {
%>
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
            <th scope="col">BOOK</th>
        </tr>
    </thead>
    <tbody id="ticketdata">
        <% for (int i = 0; i < al.size(); i++) {
                FlightBeen fb = (FlightBeen) al.get(i);
        %>  
        <tr>
            <th scope="row" ><%=fb.getFlightno()%></th>
            <td><%=fb.getFlightname()%></td>
            <td><%=fb.getFcity()%></td>
            <td><%=fb.getTcity()%></td>
            <td><%=fb.getDate1()%></td>
            <td><%=fb.getTime()%></td>
            <td><%=fb.getTicketrate()%></td>
            <td><a href="TicketBook?id=<%=fb.getId()%>"><button class="btn-primary">BOOK TICKET</button></a></td>
        </tr>
        <%}%>
    </tbody>
</table>
<%
    }
%>