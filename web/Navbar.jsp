<style>
    .dropdown:hover>.dropdown-menu {
        display: block;
    }
    .navbar {
        background: rgb(2,0,36);
        background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(9,9,121,1) 23%, rgba(7,136,146,1) 77%, rgba(0,212,255,1) 100%);
    }
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<nav class="navbar navbar-expand-lg navbar-dark">
    <img class="navbar-brand" src="Photos\airskylogo.png" style="height:55px; width:140px">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <%
        String user = null;
        session = request.getSession();
        if (session.getAttribute("user") != null) {
            user = session.getAttribute("user").toString();
        }
    %>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="home.jsp"><span class="fa fa-home"></span> Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="HomeView"><span class="fa fa-plane"></span> Flight Report</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Developers.jsp"><span class="fa fa-laptop"></span> Developers</a>
            </li>
            <%
                if (user != null) {
            %>
            <li class="nav-item">
                <a class="nav-link" href="userview.jsp">Booked Ticket</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ViewProfile"><span class="fa fa-user"></span>Profile</a>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto mr-2">
            <div>
                <!--<button class="btn btn-primary" onclick="window.location.href = 'UserLogout'"><span class="fa fa-sign-in"></span> Logout</button>-->
                <div class="dropdown">
                    <a class="btn btn-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" onclick="window.location.href = 'UserLogout'" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="fa fa-sign-in"></span> Logout
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                        <a class="dropdown-item" href="#"><%=user%></a>
                    </div>
                </div>
            </div>
        </ul>
        <%
        } else {
        %>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="userlogin.jsp"><span class="fa fa-sign-in"></span> Login</a>
            </li>
        </ul>
        <ul class="navbar-nav" style="margin-left:480px;"> 
            <li class="nav-item">
                <button class="btn btn-primary" onclick="window.location.href = 'login.jsp'"><span class="fa fa-user"></span> Admin</button> 
                <button class="btn btn-primary" onclick="window.location.href = 'Register.jsp'"><span class="fa fa-sign-in"></span> Register</button>
            </li>
        </ul>
<%
    }
%>
    </div>
</nav>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script type="text/javascript">
    $(document).ready(function () {
        var url = window.location;
        $('div ul li a[href="'+ url +'"]').parent().addClass('active');
        $('div ul li a').filter(function() {
             return this.href == url;
        }).parent().addClass('active');
    });
</script>