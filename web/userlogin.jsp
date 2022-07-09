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
            #login .container #login-row #login-column #login-box {   
                max-width: 50%;
                vertical-align:middle;
                height: 400px;
            }
            .alert{
                position:relative;
            }   
        </style>
    </head>
    <body class="bg-light">
        <%
            String loginmsg="";
            if (request.getAttribute("loginmsg") != null) {
                loginmsg = request.getAttribute("loginmsg").toString();
                if (loginmsg == "fail") {
        %>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Invalid username or password</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true" script="$().alert('close')">&times;</span>
            </button>
        </div>
        <%
                } 
            }
        %>
        <div class="container mt-5">
            <form id="login-form" class="needs-validation justify-content-center" action="UserLogin" method="post" novalidate>
                <h3 class="text-center mb-4">Login</h3>
                <div class="text-center">
                    <div class="form-group mb-4 col-md-4 mx-auto">
                        <input type="email" name="email" for="email" id="username" class="form-control" placeholder="Email Address" required>
                        <div class="invalid-feedback">
                            Invalid email address
                        </div>
                    </div>
                    <div class="form-group mb-3  col-md-4 mx-auto">
                        <div class="input-group" id="show_hide_password">
                            <input type="password" name="password" for="password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" id="password" class="form-control" placeholder="Password" required>
                            <div class="invalid-feedback">
                                Invalid password
                            </div>
                        </div>
                    </div>
                    <div class="form-group ml-3">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="togglePassword">
                            <label class="form-check-label" for="defaultCheck1">
                                Show Password
                            </label>
                        </div>
                    </div>
                    <div class="form-group" id="submitforgot">
                        <br>
                        <input type="submit" name="submit" class="btn btn-primary" value="Login">
                        <a href="Forgotpassword.jsp">Forgot Password?</a>
                    </div>
                </div>
            </form>
        </div>
        <%@ include file = "Footer.html" %>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script>
            const togglePassword = document.querySelector("#togglePassword");
            const password = document.querySelector("#password");

            togglePassword.addEventListener("click", function () {
                // toggle the type attribute
                const type = password.getAttribute("type") === "password" ? "text" : "password";
                password.setAttribute("type", type);

                // toggle the icon
                this.classList.toggle("bi-eye");
            });
        </script>
        <script src="js/validation.js"></script>

    </body>
</html>