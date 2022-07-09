<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register User</title>
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
    <body>
        <%@ include file = "Navbar.jsp" %>
    <body id="bootstrap-overrides">
        <div class="container mt-3 d-flex justify-content-center w-75">
            <div class="row">
                <div class="col-md-12">
                    <form role="form" method="POST" class="needs-validation bg-light" action="Register" novalidate>

                        <legend class="text-center" style="background:#e6e6e6;">REGISTER USER</legend>

                        <fieldset >
                            <div class="row">
                                <div class="form-group col-md-5 ml-5">
                                    <label for="name">NAME</label>
                                    <input type="text" class="form-control" name="name" id="name" required="required">
                                    <div class="invalid-feedback">
                                        Invalid name
                                    </div>
                                </div>
                                <div class="form-group col-md-5 mr-1">
                                    <label for="aadhar">AADHAR NO</label>
                                    <input type="tel" class="form-control" name="aadhar" pattern="^[2-9]{1}[0-9]{3}[0-9]{4}[0-9]{4}$" id="aadhar" required="required">
                                    <div class="invalid-feedback">
                                        Invalid aadhar number
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-5 ml-5">
                                    <label for="mobile">MOBILE</label>
                                    <input type="tel" class="form-control" name="mobile" pattern ="^((\+91)?|91)?[6789][0-9]{9}" id="mobile" required="required">
                                    <div class="invalid-feedback">
                                        Invalid mobile number
                                    </div>
                                </div>
                                <div class="form-group col-md-5 mr-1">
                                    <label for="email">EMAIL ID</label>
                                    <input type="email" class="form-control" name="email" id="email" required="required">
                                    <div class="invalid-feedback">
                                        Invalid email address
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-5 ml-5">
                                    <label for="password">PASSWORD</label>
                                    <input type="password" class="form-control" name="password" for="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" id="password" required>
                                    <div class="invalid-feedback">
                                        Invalid password
                                    </div>
                                </div>    

                                <div class="form-group col-md-5 mr-1">
                                    <label for="add">ADDRESS</label>
                                    <input type="text" class="form-control" name="address" id="add" required="required">
                                    <div class="invalid-feedback">
                                        Invalid address
                                    </div>
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
                                    REGISTER
                                </button>
                            </div>
                        </div>
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
