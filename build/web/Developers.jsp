<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file = "Navbar.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Developers</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" crossorigin="anonymous">
        <style>
            @import url(https://fonts.googleapis.com/css?family=Raleway);

            body {
                font-size: 16px;
                font-family: 'Raleway', sans-serif;
            }

            .container {
                margin-top: 20px
            }

            .title {
                color: #1a1a1a;
                text-align: center;
                margin-bottom: 10px
            }

            .content {
                position: relative;
                width: 90%;
                max-width: 400px;
                margin: auto;
                overflow: hidden
            }

            .content .content-overlay {
                background: rgba(0, 0, 0, 0.7);
                position: absolute;
                height: 99%;
                width: 100%;
                left: 0;
                top: 0;
                bottom: 0;
                right: 0;
                opacity: 0;
                -webkit-transition: all 0.4s ease-in-out 0s;
                -moz-transition: all 0.4s ease-in-out 0s;
                transition: all 0.4s ease-in-out 0s
            }

            .content:hover .content-overlay {
                opacity: 1
            }

            .content-image {
                width: 100%;
                height:300px;
            }

            img {
                box-shadow: 1px 1px 5px 1px rgba(0, 0, 0, 0.1);
                border-radius: 5px
            }

            .content-details {
                position: absolute;
                text-align: center;
                padding-left: 1em;
                padding-right: 1em;
                width: 100%;
                top: 50%;
                left: 50%;
                opacity: 0;
                -webkit-transform: translate(-50%, -50%);
                -moz-transform: translate(-50%, -50%);
                transform: translate(-50%, -50%);
                -webkit-transition: all 0.3s ease-in-out 0s;
                -moz-transition: all 0.3s ease-in-out 0s;
                transition: all 0.3s ease-in-out 0s
            }

            .content:hover .content-details {
                top: 50%;
                left: 50%;
                opacity: 1
            }

            .content-details h3 {
                color: #fff;
                font-weight: 500;
                letter-spacing: 0.15em;
                margin-bottom: 0.5em;
                text-transform: uppercase
            }

            .content-details p {
                color: #fff;
                font-size: 0.8em
            }

            .fadeIn-bottom {
                top: 80%
            }
        </style>
    </head>
    <body class="bg-light">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-4 mb-5">
                    <div class="content">
                        <div class="content-overlay"></div> <img class="content-image" src="Photos/profile2.jpeg">
                        <div class="content-details fadeIn-bottom">
                            <h3 class="content-title">Darshan Choudhary</h3>
                            <!--<p class="content-text">0829CS181037</p>-->
                            <div class="row justify-content-center">
                                <a class="content-text mr-2" href="">linkedin</a>
                                <a class="content-text mr-2" href="">github</a>
                                <a class="content-text" href="">gmail</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <div class="content">
                        <div class="content-overlay"></div> <img class="content-image" src="Photos/amitprofile.jpeg">
                        <div class="content-details fadeIn-bottom">
                            <h3 class="content-title">Amit Maheshwari</h3>
                            <!--<p class="content-text">0829CS181037</p>-->
                            <div class="row justify-content-center">
                                <a class="content-text mr-2" href="">linkedin</a>
                                <a class="content-text mr-2" href="">github</a>
                                <a class="content-text" href="">gmail</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-4 mb-3">
                    <div class="content">
                        <div class="content-overlay"></div> <img class="content-image" src="Photos/armanprofile.jpeg">
                        <div class="content-details fadeIn-bottom">
                            <h3 class="content-title">Armaan Ali</h3>
                            <!--<p class="content-text">0829CS181037</p>-->
                            <div class="row justify-content-center">
                                <a class="content-text mr-2" href="">linkedin</a>
                                <a class="content-text mr-2" href="">github</a>
                                <a class="content-text" href="">gmail</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="content">
                        <div class="content-overlay"></div> <img class="content-image" src="Photos/badalprofile.jpg">
                        <div class="content-details fadeIn-bottom">
                            <h3 class="content-title">Badal Khushwah</h3>
                            <!--<p class="content-text">0829CS181037</p>-->
                            <div class="row justify-content-center">
                                <a class="content-text mr-2" href="">linkedin</a>
                                <a class="content-text mr-2" href="">github</a>
                                <a class="content-text" href="">gmail</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file = "Relativefooter.html" %>
    </body>
</html>
