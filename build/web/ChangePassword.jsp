<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file = "Navbar.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">       
    </head>
    <body class="bg-light">
        <%
          String changeuser = request.getParameter("user");
        %>
        <div class="container mt-5">
            <form id="login-form" class="needs-validation justify-content-center" action="ChangePassword" method="post" novalidate>
                <h3 class="text-center mb-4">Change Password</h3>
                <input name="changeuser" value="<%=changeuser%>" hidden/>
                <div class="text-center">
                    <div class="form-group mb-4 col-md-4 mx-auto">
                        <input type="password" name="password" for="password" class="form-control password" placeholder="Password" required>
                        <div class="invalid-feedback">
                            Invalid Password
                        </div>
                    </div>
                    <div class="form-group mb-4 col-md-4 mx-auto">
                        <input type="password" name="password2" for="password" class="form-control password" placeholder="Confirm Password" required>
                        <div class="invalid-feedback">
                            Invalid Password
                        </div>
                    </div>
                </div>
                <div class="form-group ml-3 text-center">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="togglePassword">
                            <label class="form-check-label" for="defaultCheck1">
                                Show Password
                            </label>
                        </div>
                    </div>
                <div class="form-group text-center">
                    <input type="submit" name="submit" class="btn btn-primary" value="Change Password">
                </div>
            </form>
        </div>
    </body>
    <%@ include file = "Footer.html" %>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="js/validation.js"></script>
    <script>
        const togglePassword = document.querySelector("#togglePassword");
        const password = document.querySelectorAll(".password");

        togglePassword.addEventListener("click", function () {
            // toggle the type attribute
            let passwordvar;
            for (let i = 0; i < password.length; i++) {
                passwordvar=password[i];
                const type = passwordvar.getAttribute("type") === "password" ? "text" : "password";
                passwordvar.setAttribute("type", type);
                // toggle the icon
                this.classList.toggle("bi-eye");
              }
        });
    </script>
</html>
