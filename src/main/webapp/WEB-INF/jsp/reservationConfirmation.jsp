<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style type="text/css">
    body {
     background-image:url("https://fullhdpictures.net/wp-content/uploads/2016/03/Full-HD-Airplane-Wallpaper.jpg");
     background-repeat: no-repeat;
     background-size: 100% 100%;
    }
    .form-control {
    border: 0;
}
    html {
    height: 100%
}
    </style>
<title>Reservation Confirmation</title>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">

<ul class="navbar-nav">
<li class="navbar-item">
<a class="nav-link" href="http://127.0.0.1:8081/flightreservation/">Main</a>
</li>
<li class="navbar-item">
<a class="nav-link" href="http://127.0.0.1:9090/flightcheckin/showStartCheckin">Check-in</a>
</li>
<li class="navbar-item">
<a class="nav-link" href="http://127.0.0.1:8081/flightreservation/showReg">Register</a>
</li>
<li class="navbar-item">
<a class="nav-link" href="http://127.0.0.1:8081/flightreservation/showLogin">Login</a>
</li>
</ul>
</nav>

<div class="container">
<div class="row">

<div class="col-12" style="margin-top:200px"></div>

<div class="col-12"><h1 class="text-center text-success">${msg}</h1></div>

<div class="col-12"><p class="text-center" style="margin-top:100px">'Traveling - it leaves you speechless, then turns you into a storyteller.' - Ibn Battuta</p></div>

<div class="col-3"></div><div class="col-6"><button style="margin-left:170px; margin-top:100px" class="btn btn-primary"><a class="text-light " href="showLogin">Make a reservation here</a></button></div><div class="col-3"></div>


</div>
</div>

</body>
</html>