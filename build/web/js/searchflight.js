$("#searchform").submit(function(e) {

    e.preventDefault(); // avoid to execute the actual submit of the form.

    var form = $(this);
    var actionUrl = form.attr('action');
    
    $.ajax({
        type: "POST",
        url: actionUrl,
        data: form.serialize(), // serializes the form's elements.
        success: function(data)
        {
            //console.log(data);    // show response from the php script.
            let respdiv = document.getElementById("searchflight");
            respdiv.innerHTML = data;
        }
    });
    
});