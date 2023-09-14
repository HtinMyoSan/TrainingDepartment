<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.container {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 55vh;
}
.table-bordered {
  border: 1px solid #FF0000;
}

.table-bordered th,
.table-bordered td {
  border: 1px solid #FF0000;
  padding: 10px;
}
 
.form-table td {
  padding: 10px;
}
.form-label {
 font-size: 18px;
 margin-bottom: 5px;
 width: 100%;
    }

.return-button-container {
  display: flex;
  justify-content: center;
}
h1,h4 {
  color: #F4D03F ;
}
</style>

<title>Thank You Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background-color: #148F77;" >
<!-- Start of Navigation section-->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
  <div class="container-fluid">
  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <!-- Links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="index.jsp">HOME</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Registration">REGISTRATION</a>
        </li>
      </ul>
      <div class="justify-content-end collapse navbar-collapse" id="collapsibleNavbar">
        <!--Department Name -->
        <a class="navbar-brand" href="index.jsp">Training Department</a>
      </div>
    </div>  
  </div>
</nav>
<!-- End of Navigation section-->
<br><br><br><br>
  <div style="text-align: center">
		<h1> Thank You For Your Registration.</h1><br>
		<h4>We will send details information about the selected course to your registered email. 
		Have a nice day.</h4>
  </div>
 <%
 
 String name =(String)request.getAttribute("UserName");
 String email =(String)request.getAttribute("Email");
 String course =(String)request.getAttribute("Course");
 %>
<div class="container">
<form style="background-color: white">
<table class="form-table table-bordered">
<tr>
  <td colspan="2" style="text-align: center;">
    <h5 style="text-align: center">Session register Information</h5>
  </td>
</tr>
<tr>
  <td>Registered Name:</td>
  <td><%= name %></td>
</tr>
<tr>
  <td>Registered Email:</td>
  <td><%= email %></td>
</tr>
<tr>
  <td>Registered Course:</td>
  <td><%= course %></td>
</tr>
<tr>
  <td colspan="2">
    <div class="return-button-container">
     <a href="index.jsp" class="btn btn-outline-dark btn-lg mybtn1" role="button" style="background-color: #9A89F5;">Go Back To Home</a>
    </div>
  </td>
</tr>
</table>
</form> 
</div>
<!--Start Footer Section -->
<footer class="bg-dark text-dark pt-5 pb-4">
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-6" style="text-align: center;">
        <a class="text-muted" href="#">Contact Us</a><br>
        <a class="text-muted" href="#">About Us</a><br>
      </div>
      <div class="col-sm-6" style="text-align: center;">
        <h4 class="text-warning">Social Media</h4><br>
        <a href="https://www.facebook.com" target="_blank"><i class="fa fa-facebook-official" style="font-size:36px"></i></a>
        <a href="https://www.instagram.com" target="_blank"><i class="fa fa-instagram" style="font-size:36px"></i></a>
        <a href="https://www.instagram.com" target="_blank"><i class="fa fa-linkedin" style="font-size: 36px;"></i></a>
      </div>
    </div>  
  </div>
</footer>
<!--End Footer Section -->
</body>
</html>