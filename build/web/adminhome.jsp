<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- 1.ADMIN HOME PAGE -->
        <title>Admin Home</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            /* Add a gray background color and some padding to the footer */
            .carousel-inner img {
                width: 100%; /* Set width to 100% */
                min-height: 200px;
            }

            /* Hide the carousel text when the screen is less than 600 pixels wide */
            @media (max-width: 600px) {
                .carousel-caption {
                    display: none; 
                }
            }


            body, html {
                height: 100%;
                margin: 0;
            }

            .bg {
                /* The image used */
                background-image: url("Image/admin.jpg");

                /* Full height */
                height: 100%; 

                /* Center and scale the image nicely */
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
            }
            #c{
                color: red;
            }
            ul li button{
                margin-top: 5px;
            }
        </style>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <%@ include file = "adminnavbar.jsp" %>
        <%
            String msg="";
            if (session.getAttribute("adminmsg") != null||admin!=null) {
                msg = session.getAttribute("adminmsg").toString();
                if (msg == "success") {
        %>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>You logged in successfully</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true" script="$().alert('close')">&times;</span>
            </button>
        </div>
        <%
            }
        %>
        <h3 style="text-align: center;font-family: Garamond, serif;" class="text-success"><b>WELCOME TO ADMIN PAGE</b></h3>
        <table align = "center">
            <tr>
                <td>
                    <div class="card text-white bg-secondary mb-3" style="min-width: 18rem; margin-top: 15px;">
                        <div class="card-header" align="center"><b>TOTAL PASSENGERS</b></div>
                        <div class="card-body">
                            <h2 class="card-title" align="center"><b>15000</b></h2>
                <!--<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>-->
                       </div>
                    </div>
                </td>
                <td>
                    <div class="card text-white bg-info mb-3" style="min-width: 18rem; margin-left: 20px; margin-top: 15px;">
                        <div class="card-header" align="center"><b>TOTAL USERS</b></div>
                        <div class="card-body">
                            <h2 class="card-title" align="center"><b>35000</b></h2>
                        </div>
                    </div>
                </td>
            </tr><!-- comment -->
            
            <tr>
                <td>
                    <div class="card text-white bg-danger mb-3" style="min-width: 18rem;">
                        <div class="card-header" align="center"><b>TOTAL TICKETS BOOKED</b></div>
                        <div class="card-body">
                            <h2 class="card-title" align="center"><b>35000</b></h2>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="card text-white bg-success mb-3" style="min-width: 18rem; margin-left: 20px;">
                        <div class="card-header" align="center"><b>TOTAL FLIGHTS</b></div>
                        <div class="card-body">
                            <h2 class="card-title" align="center"><b>400</b></h2>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
        <%
                    //session.removeAttribute("adminmsg");
                    session.setAttribute("adminmsg"," ");
                }
        %>
    </body>
    <%@ include file = "Footer.html" %>
</html>