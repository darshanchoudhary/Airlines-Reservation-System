<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<nav class="navbar navbar-expand-lg navbar-dark"  style="background-color:#000000;">
    <img class="navbar-brand" src="Photos\airskylogo.png" style="height:55px; width:140px">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="home.jsp"><span class="fa fa-home"></span>Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="userprofile.jsp"><span class="fa fa-user"></span>Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="userview.jsp">Booked Ticket</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="HomeView"><span class="fa fa-plane"></span> Flight Report</a>
            </li>
        </ul>
    </div>
</nav>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('ul li a').click(function () {
            console.log("click invoked");
            $('li').removeClass("active");
            $(this).addClass("active");
        });
    });
</script>