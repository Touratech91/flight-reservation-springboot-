<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    
<title>User Login</title>

</head>

<body>

<div class="container mt-5 p-5">

<div class="row">

<div class="col-4"></div>

<div class="col-4">

<h2 class="text-secondary text-center">Login</h2>

<form action="login" method="post">

<div class="form-group border-bottom ">

<label class="text-muted mt-3" for="inputEmail">Email</label>
<input type="text" class="form-control" id="inputEmail" name="email" placeholder="name@example.com" required/>

<label  class="text-muted mt-3" for="inputPassword">Password</label>
<input type="password" id="inputPassword" class="form-control" name="password" placeholder="enter your password" required/>

</div>

<div class="row">

<div class="col-6 mt-3">

<input type="submit" class="btn btn-success form-control" value="login">

${msg}

</div>

<div class="col-6 mt-3">

<button class="btn btn-secondary form-control"><a class="text-light " href="showReg">Not a member?</a></button>

</div>

</div>

</div>

</form>

</div>

<div class="col-4"></div>

</div>

</body>

</html>