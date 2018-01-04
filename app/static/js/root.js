var set_time = function () {
    var request = new XMLHttpRequest();
    request.open("GET", "/api/time");
    request.onload = function () {
        if (request.status == 200) {
            document.getElementById("time-div").innerHTML = request.responseText;
        }
    }
    request.send();
};

set_time();
