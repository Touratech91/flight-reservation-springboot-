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
<title>Complete Reservation</title>
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

<div class="container mt-2 p-2">

<div class="row">

<div class="col-12">

<h2 class="text-secondary text-center m-5">Complete Reservation</h2>
<table class="table table-hover">
<thead class="thead-dark">

<tr>

<th  scope="col">Airlines</th>
<th  scope="col">Departure City</th>
<th  scope="col">Arrival City</th>


</tr>
</thead>

<tr>

<td  scope="row">${flight.operatingAirlines}</td>
<td  scope="row">${flight.departureCity}</td>
<td  scope="row">${flight.arrivalCity}</td>


</tr>
</table>


</div>
</div>




<div class="row">
<div class="col-6">

<form action="completeReservation" method="post">

<h3 class="text-secondary text-center">Passenger Details</h3>

<label class="text-muted" for="inputFirstName"></label>
<input type="text" class="form-control" id="inputFirstName" name="passengerFirstName" placeholder="First name"  required/>

<label class="text-muted" for="inputLastName"></label>
<input type="text" class="form-control" id="inputLastName" name="passengerLastName" placeholder="Last name" required/>

<label class="text-muted" for="inputEmail"></label>
<input type="text" class="form-control" name="passengerEmail" id="inputEmail" placeholder="Email" required/>

<label class="text-muted" for="inputPhone"></label>
<input type="text" class="form-control" name="passengerPhone" id="inputPhone" placeholder="Phone" required/>

</div>

<div class="col-6"><h3 class="text-secondary text-center">Card Details</h3>

<label class="text-muted" for="inputNameOfTheCard"></label>
<input type="text" class="form-control" id="inputNameOfTheCard" name="nameOnTheCard" placeholder="Name on the card" required/>

<label class="text-muted" for="inputCardNo"></label>
<input type="text" class="form-control" id="inputCardNo" name="cardNumber" placeholder="Card No" required/>

<label class="text-muted" for="inputExpireDate"></label>
<input type="text" class="form-control" id="inputExpireDate" name="expirationDate" placeholder="Expire Date" required/>

<label class="text-muted" for="inputCSV"></label>
<input type="text" class="form-control" id="inputCSV" name="securityCode" placeholder="CSV" required/>

<input type="hidden" name="flightId" value="${flight.id }"/>

</div>

</div>
<div class="row mt-4">
<div class="col-12"><input type="submit" class="btn btn-success form-control" value="confirm"/></form></div>
</div>
</div>


</body>
</html>