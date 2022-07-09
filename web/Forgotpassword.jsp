<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ include file = "Navbar.jsp" %>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Login</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style type="text/css">
            .alert{
                position:relative;
            }
        </style>
    </head>
    <%  if (session.getAttribute("forgotmsg") != null) {
            String msg = session.getAttribute("forgotmsg").toString();
            if (msg == "not exist") {
    %>
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>No user exist with the provided email address</strong>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true" script="$().alert('close')">&times;</span>
        </button>
    </div>
    <%
    } else if (msg == "exist") {
    %>
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>Reset Link is sent to you kindly please reset your password</strong>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true" script="$().alert('close')">&times;</span>
        </button>
    </div>
    <%
        }
}
    %>
    <body class="bg-light">
        <div class="container mt-5">
            <form id="login-form" class="needs-validation justify-content-center" action="ForgotPassword" method="post" novalidate>
                <h3 class="text-center mb-4">Forgot Password</h3>
                <div class="text-center">
                    <div class="form-group mb-4 col-md-4 mx-auto">
                        <input type="email" name="email" for="email" id="username" class="form-control" placeholder="Email Address" required>
                        <div class="invalid-feedback">
                            Invalid email address
                        </div>
                    </div>
                </div>
                <div class="form-group text-center">
                    <input type="submit" name="submit" class="btn btn-primary" value="Send Link">
                </div>
            </form>
        </div>
        <%@ include file = "Footer.html" %>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/validation.js"></script>
    </body>
</html>