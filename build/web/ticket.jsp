<%@page import="dao.TicketBeen"%>
<!doctype html>
<html lang="en">
<% TicketBeen tb = (TicketBeen) getServletContext().getAttribute("Data");%>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <title>Ticket</title>
        <style>
            #ticketdata{
                background-image:url("planebg.png");
                background-position: 0px 0px;
                -webkit-background-size: 100% 100%;
                -moz-background-size: 100% 100%;
                -o-background-size: 100% 100%;
                background-size: 100% 100%;
            }
        </style>
    </head>

    <body>
        <div class="container bg-light mt-3 w-75" id="ticket">
            <div class="text-center">
                <br>
                <h1><%=tb.getName()%></h1>
                <div class="mt-3">
                    Your trip to <%=tb.getFcity()%> starts on <%=tb.getDate1()%> Make your trip easier, and check in online now for yourself and your
                    travel companions. Also check out our additional service below, and make the most of your trip.
                </div>
            </div>
            <div class="mt-4 bg-warning">
                <br><br>
                <h3 class="text-center">Your Trip</h3>
                <div class="mt-5 text-center">
                    Your flight from <%=tb.getFcity()%> to <%=tb.getTcity()%> from Devi Ahilyabai Holkar Airport at <%=tb.getTime()%>
                </div>
                <div class="row">
                    <div class="mt-5" style="float: left;display: inline;text-align: left;margin-left: 70px;">
                        <div style="font-size: 30px;"><b>From</b></div>
                        <br>
                        <h4><%=tb.getTime()%></h4>
                        <h4><%=tb.getDate1()%></h4>
                        <br>
                        <h4>Devi Ahilyabai Holkar Airport</h4>
                        <h4>IDR</h4>
                    </div>
                    <div class="mt-5" style="float: right; text-align: inherit; display: inline-block; margin-left: auto; margin-right: 70px;">
                        <div style="font-size: 30px;"><b>To</b></div>
                        <br>
                        <h4>08:30:00</h4>
                        <h4>2022-04-23</h4>
                        <br>
                        <h4>Pune International Airport</h4>
                        <h4>PNQ</h4>
                    </div>
                </div>
                <br>
                <div class="text-center">
                    <h5>Flight Duration: 2h 45min</h5>
                    <h5>Travel Category: Economy</h5>
                </div>
                <h5 class="float-right mr-3 text-primary">Airsky</h5>
                <br><br>
            </div>
                        <br>
        </div>
        <div class="row">
            <div class="col-md-12 text-center mb-3">
                <button class="btn btn-primary" id="download">Download</button>
            </div>
        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.33/vfs_fonts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
        <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script>
    window.onload = function () {
        document.getElementById("download").addEventListener("click", () => {
            const ticket = document.getElementById("ticket");
            console.log(ticket);
            console.log(window);
            var opt = {
                margin: 0,
                filename: 'ticket.pdf',
                image: {type: 'png', quality: 0.98},
                html2canvas: {scale: 2},
                jsPDF: {unit: 'in', format: 'A4', orientation: 'landscape'}
            };
            html2pdf().from(ticket).set(opt).save();
        })
    }

        </script>
    </body>
</html>