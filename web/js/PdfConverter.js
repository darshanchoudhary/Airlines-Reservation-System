window.onload = function() {
    document.getElementById("download").addEventListener("click",() => {
        document.body.style.zoom = "67%";
        const ticket = document.getElementById("ticket");
        console.log(ticket);
        console.log(window);
        var opt = {
            margin : 0,
            filename : 'ticket.pdf',
            image : {type: 'jpeg', quality: 0.98 },
            html2canvas : { scale: 2},
            jsPDF: {unit:'in', format : 'letter', orientation: 'portrait'}
        };
        html2pdf().from(ticket).set(opt).save();
    })
}

