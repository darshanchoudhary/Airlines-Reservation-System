<%@page import="dao.TicketBeen"%>
<%@page import="java.util.Date"%>
<%@page import="dao.FlightBeen"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <!--    1.COMPLETE TICKET PAGE
                        2.SEE THE COMPLETE TICKET OF USER  -->
        <meta charset="ISO-8859-1">
        <title>Complete Ticket</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
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
            .col{
                color:red;
                font-size: 16px;
                font-family: cursive;
            }

            form > fieldset > legend {
                font-size:120%;
            }
        </style>

    </head>
    <body class="bg-light" id="d">
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <% TicketBeen tb = (TicketBeen) getServletContext().getAttribute("Data");%>
                    <form role="form" style="background-color:#B0E0E6; " id="ticket">
                        <legend class="text-center">AIRLINE TICKET</legend>
                        <br><br>
                        <fieldset > 
                            <div class="row">
                            <div class="form-group col-md-5 mt-1 ml-2">
                                <h5><b>NAME:</b> <span class="col" ><%=tb.getName()%></span></h5>
                            </div>

                            <div class="form-group col-md-5">
                                <h5><b>FLIGHT NO:</b> <span class="col"><%=tb.getFlightno()%></span></h5>
                            </div>
                            </div>
                            <div class="form-group col-md-6">
                                <h5><b>FLIGHT NAME:</b> <span class="col"><%=tb.getFlightname()%></span></h5>
                            </div>

                            <div class="form-group col-md-6">
                                <h5><b>STARTING CITY:</b> <span class="col"><%=tb.getFcity()%></span></h5>
                            </div>

                            <div class="form-group col-md-6">
                                <h5><b>ENDING CITY:</b> <span class="col"><%=tb.getTcity()%></span></h5>
                            </div>

                            <div class="form-group col-md-6">
                                <h5><b>DATE:</b> <span class="col"><%=tb.getDate1()%></span></h5>
                            </div>

                            <div class="form-group col-md-6">
                                <h5><b>TIME:</b> <span class="col"><%=tb.getTime()%></span></h5>
                            </div>

                            <div class="form-group col-md-6">
                                <h5><b>TICKET RATE:</b> <span class="col"><%=tb.getTicketrate()%></span></h5>
                            </div>

                            <div class="form-group col-md-6">
                                <h5><b>AADHAR NO:</b> <span class="col"><%=tb.getAadharno()%></span></h5>
                            </div>

                            <div class="form-group col-md-6">
                                <h5><b>MOBILE NO:</b> <span class="col"><%=tb.getMobile()%></span></h5>
                            </div>

                            <div class="form-group col-md-6">
                                <h5><b>GENDER:</b> <span class="col"><%=tb.getGender()%></span></h5>
                            </div>

                            <div class="form-group col-md-6">
                                <h5><b>EMAIL:</b> <span class="col"><%=tb.getEmail()%></span></h5>
                            </div>

                            <div class="form-group col-md-6">
                                <h5><b>ADDRESS:</b> <span class="col"><%=tb.getAddress()%></span></h5>
                            </div>

                            <div class="form-group col-md-6">
                                <h5> <span class="col" style="color: blue"><%=new Date()%></span></h5>
                            </div>
                            <h4 style="color:black; text-align: right">&copy; ....AIRSKY....</h4>
                        </fieldset>
                    </form>
                    <div class="row">
                        <div class="col-md-12 text-center mb-3">
                            <button class="btn btn-primary" id="download">Download</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"> </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.33/vfs_fonts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="js/PdfConverter.js"></script>
</html>