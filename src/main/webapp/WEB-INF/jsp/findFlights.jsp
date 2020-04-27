<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://kit.fontawesome.com/b7d62cd83b.js" crossorigin="anonymous"></script>
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
<title>Find Flights</title>
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


<div class="container mt-5 p-5"">

<div class="row">

<div class="col-12">
<h1 class="text-secondary text-center">Search flights</h1>
<div>

</div>

<div class="row " style="margin-top:150px">
<div class="col-3">
<form action="findFlights" method="post">
<div class="input-group input-group-lg">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroup-sizing-lg">From</span>
  </div>
  <input type="text" list="from" name="from" placeholder="AUS" required class="form-control" aria-label="Large" aria-describedby="inputGroup-sizing-sm"/>
</div>
</div>




<div class="col-3">
<div class="input-group input-group-lg">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroup-sizing-lg">To</span>
  </div>
  <input type="text" list="to" name="to" placeholder="NYC" required class="form-control" aria-label="Large" aria-describedby="inputGroup-sizing-sm"/>
</div>
</div>


<div class="col-3">
<div class="input-group input-group-lg">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroup-sizing-lg"><i class="far fa-calendar-check"></i></span>
  </div>
  <input type="text" list="dateOfDeparture" name="departureDate" placeholder="MM-dd-yyyy" required class="form-control" aria-label="Large" aria-describedby="inputGroup-sizing-sm"/>
</div>
</div>

<div class="col-3">


 <div class="input-group input-group-lg">
     <button type="submit"  class="btn btn-primary form-control"  aria-label="Large" aria-describedby="inputGroup-sizing-sm"><i class="fas fa-search"></i></button>
</div>

</div>

<datalist id="from">
  <option value="AUS">
  <option value="NYC">
  <option value="GR">
</datalist>

<datalist id="to">
  <option value="NYC">
  <option value="DAL">
  <option value="SUI">
</datalist>

<datalist id="dateOfDeparture">
  <option value="05-21-2020">
  <option value="05-10-2020">
  <option value="05-12-2020">
  <option value="05-13-2020">
  <option value="05-14-2020">
  <option value="05-16-2020">
  <option value="05-14-2020">
</datalist>

</form>
</div>



</div>
</div>


</div>


</body>
</html>