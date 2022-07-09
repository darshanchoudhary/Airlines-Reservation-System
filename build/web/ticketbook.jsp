<%@page import="dao.FlightBeen"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ include file = "Navbar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <!-- 1.TICKET BOOKING PAGE
                 2.AFTER SUMIT TicketBook.java SERVLET CALLING  -->
        <meta charset="ISO-8859-1">
        <title>Ticket Booking</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">       
        <style>
            .container{
                width:100%;
                margin-left: 200px;
                padding-left: 30px;
            }
            #center {
                display: block;
                margin-right: auto;
                margin-left: auto;
            }
            #bootstrap-overrides ul{
                margin-bottom: 0rem;
            }
            .py-3{
                padding-top: 0rem!important;
            }
            form * {
                border-radius:0 !important;
            }
            footer {
                background-color:#000000;
                position: relative; 
            }
            footer li,#copyright {
                color: #808080;
            }
            form > fieldset > legend {
                font-size:120%;
            }
        </style>

    </head>
    <body id="bootstrap-overrides">
        <div class="container mt-3">
            <div class="row">
                <% ArrayList<FlightBeen> al = (ArrayList<FlightBeen>) getServletContext().getAttribute("Data");
                    FlightBeen fb = (FlightBeen) al.get(0);
                %>
                <div class="col-md-8 col-md-offset-2">
                    <form role="form" method="POST" class="needs-validation bg-light" action="TicketBook" novalidate>

                        <legend class="text-center" style="background:#e6e6e6;">TICKET BOOKING</legend>

                        <fieldset >

                            <input type="hidden" class="form-control" name="aid" value="<%=fb.getId()%>" readonly>

                            <div class="row">
                                <div class="form-group col-md-5 ml-5">
                                    <label for="flightno">FLIGHT NO</label>
                                    <input type="text" class="form-control" name="flightno" value="<%=fb.getFlightno()%>" id="flightno" readonly>
                                </div>
                                <div class="form-group col-md-5 mr-1">
                                    <label for="flightname">FLIGHT NAME</label>
                                    <input type="text" class="form-control" name="flightname" value="<%=fb.getFlightname()%>" id="flightname" readonly>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-5 ml-5">
                                    <label for="scity">STARTING CITY</label>
                                    <input type="text" class="form-control" name="scity" value="<%=fb.getFcity()%>" id="scity" readonly>
                                </div>
                                <div class="form-group col-md-5 mr-1">
                                    <label for="ecity">ENDING CITY</label>
                                    <input type="text" class="form-control" name="ecity" value="<%=fb.getTcity()%>" id="ecity" readonly>
                                </div>
                            </div>

                            <div class="row">
                            <div class="form-group col-md-5 ml-5">
                                <label for="date">DATE</label>
                                <input type="date" class="form-control" name="date" value="<%=fb.getDate1()%>" id="date" readonly>
                            </div>
                            <div class="form-group col-md-5 mr-1">
                                <label for="time">TIME</label>
                                <input type="time" class="form-control" name="time" value="<%=fb.getTime()%>" id="time" readonly>
                            </div>
                            </div>
                            <div class="row">
                            <div class="form-group col-md-5 ml-5">
                                <label for="rate">TICKET RATE</label>
                                <input type="text" class="form-control" name="ticketrate" value="<%=fb.getTicketrate()%>" id="rate" readonly>
                            </div>
                            <div class="form-group col-md-5 mr-1">
                                <label for="name">NAME</label>
                                <input type="text" class="form-control" name="name" id="name" required="required">
                                <div class="invalid-feedback">
                                    Invalid name
                                </div>
                            </div>
                            </div>

                            <div class="row">
                            <div class="form-group col-md-5 ml-5">
                                <label for="aadhar">AADHAR NO</label>
                                <input type="tel" class="form-control" name="aadhar" pattern="^[2-9]{1}[0-9]{3}[0-9]{4}[0-9]{4}$" id="aadhar" required="required">
                                <div class="invalid-feedback">
                                    Invalid aadhar number
                                </div>
                            </div>
                            <div class="form-group col-md-5 mr-1">
                                <label for="mobile">MOBILE</label>
                                <input type="tel" class="form-control" name="mobile" pattern ="^((\+91)?|91)?[6789][0-9]{9}" id="mobile" required="required">
                                <div class="invalid-feedback">
                                    Invalid mobile number
                                </div>
                            </div>
                            </div>

                            <div class="row">
                            <div class="form-group col-md-5 ml-5">
                                <label for="email">EMAIL ID</label>
                                <input type="email" class="form-control" name="email" id="email" required="required">
                                <div class="invalid-feedback">
                                    Invalid email address
                                </div>
                            </div>
                                
                            <div class="form-group col-md-5 mr-1">
                                <label for="password">PASSWORD</label>
                                <input type="password" class="form-control" name="password" for="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" id="password" required>
                                <div class="invalid-feedback">
                                    Invalid password
                                </div>
                            </div>    
                                
                            <div class="form-group col-md-5 ml-5">
                                <label for="add">ADDRESS</label>
                                <input type="text" class="form-control" name="address" id="add" required="required">
                                <div class="invalid-feedback">
                                    Invalid address
                                </div>
                            </div>

                            <div class="form-group form-check col-md-12 text-center">
                                <label for="gender">GENDER &nbsp; &nbsp; &nbsp;</label>
                                <input class="form-check-input" type="radio" id="male" name="gender" value="male" required>
                                <label class="form-check-label"  for="male">Male</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input class="form-check-input"  type="radio" id="female" name="gender" value="female" required>
                                <label class="form-check-label"  for="female">Female</label>
                                <div class="invalid-feedback">
                                    Select Gender
                                </div>
                            </div>
                        </fieldset>
                        <div class="form-group">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" id="center">
                                    TICKET BOOK
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <footer class="page-footer font-small pt-1">
            <div class="container">
                <ul class="list-unstyled list-inline text-center" id="icons">
                    <li class="list-inline-item">
                        <a class="btn-floating btn-fb mx-4">
                            <i class="fa fa-facebook-square fa-2x" aria-hidden="true"></i>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a class="btn-floating btn-tw mx-4">
                            <i class="fa fa-twitter-square fa-2x" aria-hidden="true"></i>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a class="btn-floating btn-gplus mx-4">
                            <i class="fa fa-linkedin-square fa-2x" aria-hidden="true"></i>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a class="btn-floating btn-li mx-4">
                            <i class="fa fa-instagram fa-2x" aria-hidden="true"></i>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a class="btn-floating btn-dribbble mx-4">
                            <i class="fa fa-github-square fa-2x" aria-hidden="true"></i>
                        </a>
                    </li>
                </ul>
                <div>
                    <ul>
                        <li class="list-inline-item mx-5 px-5">
                            <h4>Contact - </h4>
                        </li>
                        <li class="list-inline-item mx-3 px-3">
                            <a href="https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=airsky@gmail.com" target="_blank">airsky@gmail.com</a>
                        </li>
                        <li class="list-inline-item mx-5 px-5">
                            <a href="978-656-7897">9786567897</a>
                        </li>
                    </ul>
                </div>
                <div class="footer-copyright text-center py-3" id="copyright">2022 Copyright:&copy;
                    <a href="#">Airsky</a>
                </div>
            </div>
        </footer>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/validation.js"></script>
    </body>
</html>