<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <!--  1.HOME PAGE   -->
        <title>Home Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            /* Add a gray background color and some padding to the footer */

            .carousel-inner img {
                width: 100%; /* Set width to 100% */
                min-height: 200px;
            }
            .bg {
                /* The image used */
                background-image: url("Image/home.jpg");

                /* Full height */
                height: 100vh; 

                /* Center and scale the image nicely */
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
            }
            #bootstrap-overrides .py-3 {
                padding-top: 0rem!important;
                padding-bottom: 0rem!important;
            }
            div div img {
                height:250px;
            }
        </style>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">       
    </head>
    <body id="bootstrap-overrides" class="bg-light">
        <%@ include file = "Navbar.jsp" %>
        <%
            String registermsg="";
            if (request.getAttribute("registermsg") != null) {
                registermsg = request.getAttribute("registermsg").toString();
                if (registermsg == "success") {
        %>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Congratulations, You registered successfully on Airsky</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true" script="$().alert('close')">&times;</span>
            </button>
        </div>
        <%
            }
            else if(registermsg == "fail"){
        %>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>User already exist with the provided email address</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true" script="$().alert('close')">&times;</span>
            </button>
        </div>
        <%
            }
        }
            String usermsg="";
            if (request.getAttribute("usermsg") != null) {
                usermsg = request.getAttribute("usermsg").toString();
                if (usermsg == "success") {
        %>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Your ticket is booked successfully</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true" script="$().alert('close')">&times;</span>
            </button>
        </div>
        <%
            }
            else if(usermsg == "fail"){
        %>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Login required in order to book the ticket</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true" script="$().alert('close')">&times;</span>
            </button>
        </div>
        <%
            }
            else if(usermsg == "already"){
        %>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>You already booked ticket for this flight</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true" script="$().alert('close')">&times;</span>
            </button>
        </div>
        <%
            }
        }
            String updatemsg="";
            if (request.getAttribute("updatemsg") != null) {
                updatemsg = request.getAttribute("updatemsg").toString();
                if (updatemsg == "success") {
        %>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Your profile details updated successfully</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true" script="$().alert('close')">&times;</span>
            </button>
        </div>
        <%
            }
            else if(updatemsg == "fail"){
        %>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Sorry,Your profile details not updated successfully</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true" script="$().alert('close')">&times;</span>
            </button>
        </div>
        <%
            }
        }
            String passwordmsg="";
            if (request.getAttribute("passwordmsg") != null) {
                passwordmsg = request.getAttribute("passwordmsg").toString();
                if (passwordmsg == "success") {
        %>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Your password is change successfully</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true" script="$().alert('close')">&times;</span>
            </button>
        </div>
        <%
            }
            else if(passwordmsg == "fail"){
        %>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>User does not exist</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true" script="$().alert('close')">&times;</span>
            </button>
        </div>
        <%
            }
        }
        %>
        <!--caurousel-->
        <div class="container mt-2">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="Photos/shimla1.jpg" alt="First slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Shimla</h5>
                            <p>Great Destination to explore</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="Photos/nature.jpg" alt="Second slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Greenland</h5>
                            <p>The land of greenery</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="Photos/singapore1.jpg" alt="Third slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Singapore</h5>
                            <p>Wonderful city to watch</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <!--flight search form-->
        <div class="container mt-3">
            <div class="card">
                <h5 class="card-header text-center py-4" style="background-color: #ff8080">
                    <strong>Search Flight</strong>
                </h5>
                <div class="card-body col-md-12">
                    <form class="text-center needs-validation" method="POST" role="form" action="searchflight.jsp" id="searchform" style="color: #757575;" novalidate>
                        <div class="row">
                            <div class="md-form col-md-4">
                                <label>From</label>
                                <input type="text"  class="form-control" name="fromcity" placeholder="From City" required="required">
                                <div class="invalid-feedback">
                                    Invalid City
                                </div>
                            </div>
                            <div class="md-form col-md-4">
                                <label>To</label>
                                <input type="text" class="form-control" name="tocity" placeholder="To City" required="required"> 
                                <div class="invalid-feedback">
                                    Invalid City
                                </div>
                            </div>
                            <div class="md-form col-md-4">
                                <label>Date</label>
                                <input type="date" class="form-control" name="date" id="date" required="required">
                                <div class="invalid-feedback">
                                    Choose date
                                </div>
                            </div>

                        </div>
                        <button class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0"  id="submitbtn" type="submit">Search</button>
                    </form>
                </div>
            </div>
            
            <div id="searchflight">
                
            </div>
            
            <!--flight booking offers-->
            <div class="container mt-5">
                <h3>Offers</h3><br>
                <div class="row">
                    <div class="card text-white bg-primary mb-3 mr-3" style="max-width: 18rem;">
                        <div class="card-header">Cashback</div>
                        <div class="card-body">
                            <p class="card-text">200 Rs. cashback on minimum ticket booking of 1200 Rs.</p>
                        </div>
                    </div>
                    <div class="card text-white bg-warning mb-3 mr-3" style="max-width: 18rem;">
                        <div class="card-header">Discount</div>
                        <div class="card-body">
                            <p class="card-text">10% discount on minimum ticket booking of 1500 Rs.</p>
                        </div>
                    </div>
                    <div class="card text-white bg-danger mb-3" style="max-width: 18rem;">
                        <div class="card-header">Coupon</div>
                        <div class="card-body">
                            <p class="card-text">Worth 500 Rs. food coupon on minimum ticket booking of 2500 Rs.</p>
                        </div>
                    </div>
                </div>
            </div>
            <!--frequently asked questions for users(FAQ)-->
            <h3 class="mt-3 mb-4">Frequently Asked Questions(FAQ)</h3>    
            <div id="accordion" class="mb-5">
                <div class="card" style="background-color:#E6E6FA;">
                    <div class="card-header" id="headingOne">
                        <h5 class="mb-0">
                            <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                How can i get my ticket?
                            </button>
                        </h5>
                    </div>
                    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="card-body">
                            You will be get the ticket on page once you confirm the ticket and on email also.
                        </div>
                    </div>
                </div>
                <div class="card" style="background-color:#E6E6FA;">
                    <div class="card-header" id="headingTwo">
                        <h5 class="mb-0">
                            <button class="btn btn-link" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                In how much time can i cancel the ticket?
                            </button>
                        </h5>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                        <div class="card-body">
                            You can only cancel the ticket 6 hours before the flight take off.
                        </div>
                    </div>
                </div>
                <div class="card" style="background-color:#E6E6FA;">
                    <div class="card-header" id="headingThree">
                        <h5 class="mb-0">
                            <button class="btn btn-link" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                                How can i register on airsky?
                            </button>
                        </h5>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                        <div class="card-body">
                            Click on register button then fill the form and you got registered.
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file = "Relativefooter.html" %>
        <script>
            var frm = $('#searchform');
            frm.submit(function (e) {

                e.preventDefault();

                $.ajax({
                    type: frm.attr('method'),
                    url: frm.attr('action'),
                    data: frm.serialize(),
                    success: function (data) {
                        //console.log('Submission was successful.');
                        //console.log(data);
                        let respdiv = document.getElementById("searchflight");
                        respdiv.innerHTML = data;
                    },
                    error: function (data) {
                        console.log('An error occurred.');
                        console.log(data);
                    },
                });
            });
        </script>
        <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <!--<script src="js/searchflight.js"></script>-->
        <script src="js/validation.js"></script>
    </body>
</html>