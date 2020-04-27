<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<title>Administrator</title>
</head>
<body style="background-color:white">

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

<li class="navbar-item">
<a class="nav-link" href="http://127.0.0.1:8081/flightreservation/getAllReservations">All reservations</a>
</li>

<li class="navbar-item">
<a class="nav-link" href="http://127.0.0.1:8081/flightreservation/getAllUsers">All users</a>
</li>

<li class="navbar-item">
<a class="nav-link" href="http://127.0.0.1:8081/flightreservation/getAllPassengers">All passengers</a>
</li>

<li class="navbar-item">
<a class="nav-link" href="http://127.0.0.1:8081/flightreservation/getAllFlights">All flights</a>
</li>

</ul>

</nav>


<div class="container">

<div class="row">


<div class="col-12">


<h2 class="text-secondary text-center p-5">All reservations</h2>
<table class="table table-hover">
<thead class="thead-dark">

<tr>

<th scope="col">ID</th>
<th scope="col">Check-in</th>
<th scope="col">Number of bags</th>
<th scope="col">Passenger</th>
<th scope="col">Flight</th>

</tr>

</thead>

<c:forEach items="${reservations}" var="reservation">

<tr>

<th scope="row">${reservation.id}</th>
<td scope="row">${reservation.checkedIn}</td>
<td scope="row">${reservation.numberOfBags}</td>
<td scope="row">${reservation.passenger}</td>
<td scope="row">${reservation.flight}</td>

</tr>

</c:forEach>

</table>

</div>

</div>

</div>

</body>

</html>