<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>Flights</title>
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

<div class="container  mt-5 p-5">

<div class="row">

<div class="col-2"></div>

<div class="col-8">


<h2 class="text-secondary text-center">Available flights</h2>
<table class="table table-hover mt-5 p-5">
<thead class="thead-dark">


<tr>

<th scope="col">Airlines</th>
<th scope="col">Departure City</th>
<th scope="col">Arrival City</th>
<th scope="col">Departure Time</th>


</tr>

</thead>



<c:forEach items="${flights}" var="flight">
<tr>

<td scope="row">${flight.operatingAirlines}</td>
<td scope="row">${flight.departureCity}</td>
<td scope="row">${flight.arrivalCity}</td>
<td scope="row">${flight.departureTime}</td>
<td><a href="showCompleteReservation?flightId=${flight.id}">Select</a></td>

</tr>



</c:forEach>
</table>





</div>

</div>

<div class="col-2"></div>

</div>

</body>
</html>