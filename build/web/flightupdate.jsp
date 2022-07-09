<%@page import="dao.FlightBeen"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Flight</title>
        <style>
            .container{
                width:100%;
                margin-top:10px;   
                margin-left: 300px;
                padding-left: 30px;
                margin-bottom:10px; 
            }
            #d{
                margin-top: 50px;
            }
            #center {
                display: block;
                margin-right: auto;
                margin-left: auto;
            }
            form * {
                border-radius:0 !important;
            }

            form > fieldset > legend {
                font-size:120%;
            }
            .flightform{
                width:100%;
                margin-left:170px;
            }
            dl, ol, ul {
                margin-top: 0;
                margin-bottom: 0rem;
            }
            .pt-3, .py-3 {
                padding-top: 0rem!important;
            }
            #bootstrap-overrides ul{
                margin-bottom: 0rem;
            }
        </style>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body id="bootstrap-overrides">
        <%@ include file = "adminnavbar.jsp" %>
        <%            
            ArrayList<FlightBeen> al = (ArrayList<FlightBeen>) getServletContext().getAttribute("Data");
            FlightBeen fb = (FlightBeen) al.get(0);
        %>
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <form role="form" method="POST" class="needs-validation flightform bg-light" action="FlightUpdate" style="background:white;" novalidate>
                        <legend class="text-center" style="background:#e6e6e6;">Update Flight Details</legend>
                        <fieldset>
                            <input type="hidden" class="form-control" name="aid" value="<%=fb.getId()%>" readonly>
                            <div class="row">
                                <div class="form-group col-md-5 ml-5">
                                    <label for="flightno">FLIGHT NO</label>
                                    <input type="tel" class="form-control" pattern ="^[1-9]{2}$" value="<%=fb.getFlightno()%>" name="flightno" id="flightno" required>
                                    <div class="invalid-feedback">
                                        Invalid Flight Number
                                    </div>
                                </div>
                                <div class="form-group col-md-5 mr-1">
                                    <label for="flightname">FLIGHT NAME</label>
                                    <input type="text" class="form-control" name="flightname" value="<%=fb.getFlightname()%>" id="flightname" required>
                                    <div class="invalid-feedback">
                                        Invalid Flight Name
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-5 ml-5">
                                    <label for="scity">STARTING CITY</label>
                                    <input type="text" class="form-control" name="fcity" value="<%=fb.getFcity()%>" id="fcity" required>
                                    <div class="invalid-feedback">
                                        Invalid City
                                    </div>
                                </div>
                                <div class="form-group col-md-5 mr-1">
                                    <label for="ecity">ENDING CITY</label>
                                    <input type="text" class="form-control" name="tcity" value="<%=fb.getTcity()%>" id="tcity" required>
                                    <div class="invalid-feedback">
                                        Invalid City
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-5 ml-5">
                                    <label for="date">DATE</label>
                                    <input type="date" class="form-control" name="date" value="<%=fb.getDate1()%>" id="date" required>
                                    <div class="invalid-feedback">
                                        Choose Date
                                    </div>
                                </div>
                                <div class="form-group col-md-5 mr-1">
                                    <label for="time">TIME</label>
                                    <input type="time" class="form-control" name="time" value="<%=fb.getTime()%>" id="time" required>
                                    <div class="invalid-feedback">
                                        Choose Time
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-5 ml-5">
                                    <label for="rate">TICKET RATE</label>
                                    <input type="tel" class="form-control" pattern ="^[1-9]{1}[0-9]{3,4}$" value="<%=fb.getTicketrate()%>" name="ticketrate" id="rate" required>
                                    <div class="invalid-feedback">
                                        Invalid Ticket Rate
                                    </div>
                                </div>
                            </div>
                        </fieldset> 
                        <input type="submit" class="btn btn-primary" value="UPDATE FLIGHT" id="center" > 
                    </form>
                </div>
            </div>
        </div>
        <%@ include file = "Relativefooter.html" %>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/validation.js"></script>
    </body>
</html>